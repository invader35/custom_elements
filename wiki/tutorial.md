# Porting Js Elements to Dart

So, you love Dart, you love Polymer and digging into [customelements.io](https://customelements.io) you found some very nice component you would like to use in
your app. Unfortunately no one has already ported it to Dart so now you are very desperate because that component was just perfect and you really would like to 
use it.

What can you do ? You can port it to Dart by yourself ! This tutorial explains how you can do it, given that some prerequisites are met (see the last paragraph).

## 1. Setup a new project

First of all you need to setup a new `Dart` project for the ported element. 

### 1.1 Project structure

The project structure should be as following:
    
    my_imported_component/
     lib/
     test/
     .bowerrc
     bower.json
     pubspec.yaml
     apigen_config.yaml
     
`lib` and `test` folder are initially empty. the `lib` folder will be populated by generated sources while in the `test` folder you will put any unit test case you want to provide.

### 1.2 Writing the `pubspec.yaml`

You should already know what this file is about. in the case of porting a js element some dependencies are needed in order to run the source generation tool. this is an example of a working `pubspec.yaml` :

```yaml
name: your_project_name
version: 0.0.1
author: Your Name <an_email@address>
description: A Description
homepage: https://project.home.page
dependencies:
 polymer_interop: ^1.0.0-rc.5
 web_components: ^0.12.0
 polymer_elements: ^1.0.0-rc.5
dev_dependencies:
 browser: ^0.10.0
 custom_element_apigen: ^0.2.2
 html5lib: ">=0.11.0 <0.13.0"
 path: ^1.0.0
 polymer: ^1.0.0-rc.6
 reflectable: ">=0.3.1 <0.5.0"
 test: ^0.12.5+1
 yaml: ">=1.0.0 <3.0.0"
environment:
 sdk: ">=1.8.0 <2.0.0"
```

You can add any other dependency you need, for example you can put references to other component libraries that already ported to dart and you want to reuse.

### 1.3 The `.bowerrc`

This file is needed in order to force `bower` to install the component you want to port and all its dependencies into `lib/src` directory and should have the following content:

```
{
  "directory": "lib/src"
}
```

## 2. Writing the `bower.json` file

This file has the same meaning for `bower` as `pubspec.yaml` for `pub`. It contains the dependencies and the description of your `bower` project. As we are porting javascript components managed with `bower` this file is like a bridge between the two world. This is were you should put the reference to the component you want to port. The project description part in this file is mandatory but actually not used so you can put whatever you want inside.

This is an example of a `bower.json` for porting a simple component:

```
{
  "name": "my-porting-project",
  "version": "0.0.1",
  "homepage": "whatever",
  "authors": [
    "who cares"
  ],
  "private": true,
  "dependencies": {
    "paper-chip": "*"
  }
}
```

The most important part of the file is the `dependencies` section. This is were you put the references to the components you want to port. In the example it `paper-chip`, any version of it (`*`).

This file works as a normal `bower.json` file so take a look at `bower` documentation if you whant to tweak it.

## 3. Create a `apigen_config.yaml` config file  

This file contains the configuration for the  `custom-element-apigen` source generator tool. This tool will make all the hard work for you, reading and parsing the js component definition and creating all the stubs needed to make it work in `Dart`. It is used to create the `polymer_elements` package itself and all the `standard` polymer component are ported to `Dart` using this tool.

There are many option you can use to bend the tool at your will, let's see the most relevant options you got.

### component to generate

This section is where you specicy which `.html` need to be ported to dart. the path is relative to `lib/src`.

Here's an example:

```yaml
files_to_generate:
  - vaadin-grid/vaadin-grid.html
  - paper-divider/paper-divider.html
  - paper-time-picker/paper-time-picker.html:
     omit_imports:
      - src/iron-resizable-behavior
      - fade-in-animation.html
      - fade-out-animation.html
     extra_imports:
      - package:polymer_elements/iron_resizable_behavior.dart
      - package:polymer_elements/neon_animation/animations/fade_in_animation.dart
      - package:polymer_elements/neon_animation/animations/fade_out_animation.dart
```

for each files there are a couple of option you can specify to customize code generation:

 - `omit_imports` a list of regular expressions matching import directives you don't want to be generated
 - `extra_imports` a list of extra imports you want to add into the generated file
 - `name_substitutions` a map of naming sostitutions to be applied when generating code, like for example:
   ```
   - iron-media-query/iron-media-query.html:
      name_substitutions:
        query: mediaQuery
   ```
 - `type_overrides` a map of classes an attributes whose type should be overridden, like this:
    ```
     - iron-selector/iron-selectable.html:
      type_overrides:
        IronSelectableBehavior:
          selected:
            type: any
    ```

### package mapping

In this section you can specify how elements are mapped to packages when generating import statments.
For example:
```
package_mappings:
  - paper-datatable: custom_elements
  - paper-calendar: custom_elements
```

This is a list of regular expressions mapping to package names. In the example above any element matching the regular expression `paper-datatable` or `paper-calendar` would be mapped into package `custom_elements`.

### stubs to generate

In this section one can specify which stubs should be generated in order to make the original polymer-JS element you intend to port reuse existing ported elements from other libraries.

For instance if your component is using a `<paper-button>` you will need to write a package mapping for it and to generate stubs:

```
package_mappings:
 - ^paper-.* : polymer_elements
stubs_to_generate:
 polymer_elements:
  - paper-button/paper-button.html
```

### managing mixins and special cases

When a component you want to port is using a behavior you will have to let the tool preload it in order to properly analyze it. This is done in the section `files_to_load`. Usually you will also have to omit corresponding the generated import and replace it with the right one.

Here's an example of preloading the `resize behavior` and the `templatizer`:

```
files_to_load:
  - package:polymer_interop/src/js/debug/src/lib/template/templatizer.html
  - package:polymer_elements/src/iron-resizable-behavior/iron-resizable-behavior.html
```

References are relative to pre-existing ported packages.

### clean up the dirt

After the `custom_element_apigen` tool has run you may want to clean up every unwanted files in order to keep your library the smaller as possible.
You can specify a list of regular expression matching paths relative to `lib/src` to be deleted:

```
deletion_patterns:
 - ^iron-ajax
 - ^font-roboto
 - ...
```

## 4. importing the component and running `custom-element-apigen`

When everything is setup you need to bower import your components and run the code generator. This is done by issuing the following commands:
 - `bower install`
 - `pub run custom_element_apigen:update you_custom_element_apigen_config_file.yaml`

Then just check the generated sources to see if everythings looks right. If something is gone wrong probably the followings are possible fixes:
 - add files to load 
 - add files to be generated
 - fix package mappings, generated stubs
 - apply name/type substitutions 

## 5. Testing and checking

When everything looks right just import your new library and play with it. If you can write some good unit test. 

# Prerequisites

Components to be ported should obey some requisites:

 - components should be polymer 1.0 components.
 - they should be "bower enabled"
 - check the component dependencies if they match the current versions of `polymer` and `elements` currently ported to Dart. At the moment of
   writing `polymer-dart` matches `polymer-js` v. 1.2.4.
