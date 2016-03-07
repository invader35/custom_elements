# Custom Elements

A Dart port of selected elements from [customelements.io](https://customelements.io).

Also some styles from [polymerthemes.com](https://polymerthemes.com)

## Ported Elements

 - [paper-divider](https://customelements.io/WebPaperElements/paper-divider/)
 - [paper-chip](https://customelements.io/bendavis78/paper-chip/)
 - [paper-date-picker](https://customelements.io/bendavis78/paper-date-picker/)
 - [paper-time-picker](https://customelements.io/bendavis78/paper-time-picker/)
 - [iron-data-table](https://customelements.io/Saulis/iron-data-table/)
 - [paper-data-table](https://customelements.io/David-Mulder/paper-datatable/) SADLY NOT WORKING ON DART BECAUSE OF SOME `table` related problem (sigh)
 
## To Update

Uncomment `dependency_overrides` from pubspec and run :

    bower update
    pub run custom_element_apigen:update custom_elements_config.yaml
   


