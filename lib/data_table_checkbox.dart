// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `data_table_checkbox`.
@HtmlImport('data_table_checkbox_nodart.html')
library custom_elements.lib.src.iron_data_table.data_table_checkbox;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';


@CustomElementProxy('data-table-checkbox')
class DataTableCheckbox extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  DataTableCheckbox.created() : super.created();
  factory DataTableCheckbox() => new Element.tag('data-table-checkbox');

  bool get checked => jsElement[r'checked'];
  set checked(bool value) { jsElement[r'checked'] = value; }

  bool get indeterminate => jsElement[r'indeterminate'];
  set indeterminate(bool value) { jsElement[r'indeterminate'] = value; }
}
