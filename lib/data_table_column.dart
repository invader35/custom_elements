// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `data_table_column`.
@HtmlImport('data_table_column_nodart.html')
library custom_elements.lib.src.iron_data_table.data_table_column;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'data_table_column_filter.dart';


@CustomElementProxy('data-table-column')
class DataTableColumn extends HtmlElement with CustomElementProxyMixin, PolymerBase, Templatizer {
  DataTableColumn.created() : super.created();
  factory DataTableColumn() => new Element.tag('data-table-column');

  /// If `true`, cell contents will be aligned on the right
  bool get alignRight => jsElement[r'alignRight'];
  set alignRight(bool value) { jsElement[r'alignRight'] = value; }

  /// Path to a property that will be filtered by this column. If set, a filter input
  /// will be automaticelly placed on the header cell of the column.
  String get filterBy => jsElement[r'filterBy'];
  set filterBy(String value) { jsElement[r'filterBy'] = value; }

  /// Filter value that will be used to filter the items using the property defined
  /// in `filterBy` property.
  String get filterValue => jsElement[r'filterValue'];
  set filterValue(String value) { jsElement[r'filterValue'] = value; }

  /// Ratio of how the extra space between columns is distributed. If every cell
  /// has the same `flex` value, the space will be distributed evenly.
  num get flex => jsElement[r'flex'];
  set flex(num value) { jsElement[r'flex'] = value; }

  /// Template for the header cell
  get headerTemplate => jsElement[r'headerTemplate'];
  set headerTemplate(value) { jsElement[r'headerTemplate'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// If `true`, the cells of this column will be hidden.
  bool get hidden => jsElement[r'hidden'];
  set hidden(bool value) { jsElement[r'hidden'] = value; }

  /// Name of the column. This value is displayed in the header cell of the column
  String get name => jsElement[r'name'];
  set name(String value) { jsElement[r'name'] = value; }

  /// Display order of the column in relation with the other columns.
  num get order => jsElement[r'order'];
  set order(num value) { jsElement[r'order'] = value; }

  /// Path to a property that will be sorted by this column. If set, a sorting
  /// indicator will be automatically placed in the header cell of this column.
  String get sortBy => jsElement[r'sortBy'];
  set sortBy(String value) { jsElement[r'sortBy'] = value; }

  /// Template for the row item cell
  get template => jsElement[r'template'];
  set template(value) { jsElement[r'template'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  get templatizeHeader => jsElement[r'templatizeHeader'];
  set templatizeHeader(value) { jsElement[r'templatizeHeader'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  get templatizeRow => jsElement[r'templatizeRow'];
  set templatizeRow(value) { jsElement[r'templatizeRow'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Minimum width of the column
  String get width => jsElement[r'width'];
  set width(String value) { jsElement[r'width'] = value; }
}
