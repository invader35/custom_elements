# Porting Js Elements to Dart

So, you love Dart, you love Polymer and digging into [customelements.io](https://customelements.io) you found some very nice component you would like to use in
your app. Unfortunately no one has already ported it to Dart so now you are very desperate because that component was just perfect and you really would like to 
use it.

What can you do ? You can port it to Dart by yourself ! This tutorial explains how you can do it, given that some prerequisites are met (see the last paragraph).

## 1. Setup a new project

The first thing you have to do is to create a new project for the ported element. 

### Structure

The project structure should be as following:
    
    my_imported_component/
     lib/
     test/
     .bower.json
     pubspec.yaml
     
`lib` and `test` folder are initially empty. the `lib` folder will be populated by generated sources while in the `test` folder you will put any unit test case you want to provide.

### the `pubspec.yaml`



### the `.bower.json`

## 2. Writing the `bower.json` file

## 3. Create a `custom-element-apigen` config file  

### component to generate

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
