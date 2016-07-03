// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `data_table_column_sort`.
@HtmlImport('data_table_column_sort_nodart.html')
library custom_elements.lib.src.iron_data_table.data_table_column_sort;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/paper_icon_button.dart';
import 'data_table_icons.dart';


@CustomElementProxy('data-table-column-sort')
class DataTableColumnSort extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  DataTableColumnSort.created() : super.created();
  factory DataTableColumnSort() => new Element.tag('data-table-column-sort');

  String get direction => jsElement[r'direction'];
  set direction(String value) { jsElement[r'direction'] = value; }

  num get order => jsElement[r'order'];
  set order(num value) { jsElement[r'order'] = value; }

  String get path => jsElement[r'path'];
  set path(String value) { jsElement[r'path'] = value; }

  List get sortOrder => jsElement[r'sortOrder'];
  set sortOrder(List value) { jsElement[r'sortOrder'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}
}
