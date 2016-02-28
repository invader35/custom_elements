// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `data_table_column_filter`.
@HtmlImport('data_table_column_filter_nodart.html')
library custom_elements.lib.src.iron_data_table.data_table_column_filter;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/paper_input.dart';


@CustomElementProxy('data-table-column-filter')
class DataTableColumnFilter extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  DataTableColumnFilter.created() : super.created();
  factory DataTableColumnFilter() => new Element.tag('data-table-column-filter');

  bool get hidden => jsElement[r'hidden'];
  set hidden(bool value) { jsElement[r'hidden'] = value; }

  String get label => jsElement[r'label'];
  set label(String value) { jsElement[r'label'] = value; }

  String get value => jsElement[r'value'];
  set value(String value) { jsElement[r'value'] = value; }
}
