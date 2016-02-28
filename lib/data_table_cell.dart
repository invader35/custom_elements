// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `data_table_cell`.
@HtmlImport('data_table_cell_nodart.html')
library custom_elements.lib.src.iron_data_table.data_table_cell;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';


@CustomElementProxy('data-table-cell')
class DataTableCell extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  DataTableCell.created() : super.created();
  factory DataTableCell() => new Element.tag('data-table-cell');

  get bind => jsElement[r'bind'];
  set bind(value) { jsElement[r'bind'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  get column => jsElement[r'column'];
  set column(value) { jsElement[r'column'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  num get order => jsElement[r'order'];
  set order(num value) { jsElement[r'order'] = value; }

  get template => jsElement[r'template'];
  set template(value) { jsElement[r'template'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  String get width => jsElement[r'width'];
  set width(String value) { jsElement[r'width'] = value; }
}
