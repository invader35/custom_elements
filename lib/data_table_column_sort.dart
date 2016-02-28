// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `data_table_column_sort`.
@HtmlImport('data_table_column_sort_nodart.html')
library custom_elements.lib.src.iron_data_table.data_table_column_sort;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/iron_icon.dart';
import 'package:polymer_elements/iron_icons.dart';
import 'package:polymer_elements/paper_ripple.dart';


@CustomElementProxy('data-table-column-sort')
class DataTableColumnSort extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  DataTableColumnSort.created() : super.created();
  factory DataTableColumnSort() => new Element.tag('data-table-column-sort');

  String get direction => jsElement[r'direction'];
  set direction(String value) { jsElement[r'direction'] = value; }

  bool get hidden => jsElement[r'hidden'];
  set hidden(bool value) { jsElement[r'hidden'] = value; }

  String get path => jsElement[r'path'];
  set path(String value) { jsElement[r'path'] = value; }

  get sortOrder => jsElement[r'sortOrder'];
  set sortOrder(value) { jsElement[r'sortOrder'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}
}
