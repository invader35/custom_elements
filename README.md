# Custom Elements

A Dart port of selected elements from [customelements.io](https://customelements.io).

Also some styles from [polymerthemes.com](https://polymerthemes.com)

## Ported Elements

 - [paper-divider](https://customelements.io/WebPaperElements/paper-divider/)
 - [paper-chip](https://customelements.io/bendavis78/paper-chip/)
 - [paper-date-picker](https://customelements.io/bendavis78/paper-date-picker/)
 - [paper-time-picker](https://customelements.io/bendavis78/paper-time-picker/)
 - [iron-data-table](https://customelements.io/Saulis/iron-data-table/)
 - [vaadin-upload](https://customelements.io/vaadin/vaadin-upload/)
 - [vaadin-grid](https://customelements.io/vaadin/vaadin-grid/)


## Ported but not working

 - [paper-data-table](https://customelements.io/David-Mulder/paper-datatable/) 
   SADLY NOT WORKING ON DART BECAUSE OF SOME `table` related problem (sigh) because of a `dart:html` bug
 
## To Update

upgrade versions on `bower.json` and run :

    bower update
    pub run custom_element_apigen:update custom_elements_config.yaml
   

## Reminder:

Need to patch `apigen` too allow behavior with custom "prefix"  (prefix to be ignored) and correct handling of proxy with more than one level of indentation (`neon-animation` stuff).
