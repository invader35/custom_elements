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

thi section is where you specicy which `.html` need to be ported to dart. the path is relative to `lib/src`.

here's an example:

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

 - `omit_imports` a list of regular expressions matching import directives you don't want to be 


### package mapping

### stubs to generate

### managing mixins and special cases

### clean up the dirt

## 4. importing the component and running `custom-element-apigen`

## 5. Testing and checking

# Prerequisites

 - polymer element
 - bower repository
 - dependencies
