// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `data_table_cell`.
@HtmlImport('data_table_cell_nodart.html')
library custom_elements.lib.src.iron_data_table.data_table_cell;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'data_table_templatizer_behavior.dart' as saulis; //';


@CustomElementProxy('data-table-cell')
class DataTableCell extends HtmlElement with CustomElementProxyMixin, PolymerBase, Templatizer, saulis.DataTableTemplatizerBehaviorImpl, saulis.DataTableTemplatizerBehavior {
  DataTableCell.created() : super.created();
  factory DataTableCell() => new Element.tag('data-table-cell');

  bool get alignRight => jsElement[r'alignRight'];
  set alignRight(bool value) { jsElement[r'alignRight'] = value; }

  get beforeBind => jsElement[r'beforeBind'];
  set beforeBind(value) { jsElement[r'beforeBind'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  get column => jsElement[r'column'];
  set column(value) { jsElement[r'column'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  num get flex => jsElement[r'flex'];
  set flex(num value) { jsElement[r'flex'] = value; }

  bool get header => jsElement[r'header'];
  set header(bool value) { jsElement[r'header'] = value; }

  bool get hidden => jsElement[r'hidden'];
  set hidden(bool value) { jsElement[r'hidden'] = value; }

  num get order => jsElement[r'order'];
  set order(num value) { jsElement[r'order'] = value; }

  get template => jsElement[r'template'];
  set template(value) { jsElement[r'template'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  String get width => jsElement[r'width'];
  set width(String value) { jsElement[r'width'] = value; }
}
