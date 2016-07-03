// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `data_table_row_detail`.
@HtmlImport('data_table_row_detail_nodart.html')
library custom_elements.lib.src.iron_data_table.data_table_row_detail;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'data_table_templatizer_behavior.dart';


@CustomElementProxy('data-table-row-detail')
class DataTableRowDetail extends HtmlElement with CustomElementProxyMixin, PolymerBase, Templatizer, saulis.DataTableTemplatizerBehaviorImpl, saulis.DataTableTemplatizerBehavior {
  DataTableRowDetail.created() : super.created();
  factory DataTableRowDetail() => new Element.tag('data-table-row-detail');

  get beforeBind => jsElement[r'beforeBind'];
  set beforeBind(value) { jsElement[r'beforeBind'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}
}
