// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `data_table_row`.
@HtmlImport('data_table_row_nodart.html')
library custom_elements.lib.src.iron_data_table.data_table_row;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';


@CustomElementProxy('data-table-row')
class DataTableRow extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  DataTableRow.created() : super.created();
  factory DataTableRow() => new Element.tag('data-table-row');

  get beforeBind => jsElement[r'beforeBind'];
  set beforeBind(value) { jsElement[r'beforeBind'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  bool get expanded => jsElement[r'expanded'];
  set expanded(bool value) { jsElement[r'expanded'] = value; }

  num get index => jsElement[r'index'];
  set index(num value) { jsElement[r'index'] = value; }

  get item => jsElement[r'item'];
  set item(value) { jsElement[r'item'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  bool get selected => jsElement[r'selected'];
  set selected(bool value) { jsElement[r'selected'] = value; }
}
