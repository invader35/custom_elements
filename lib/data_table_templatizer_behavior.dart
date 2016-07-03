// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `data_table_templatizer_behavior`.
@HtmlImport('data_table_templatizer_behavior_nodart.html')
library custom_elements.lib.src.iron_data_table.data_table_templatizer_behavior;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_interop/src/js/debug/src/lib/template/templatizer.dart';
import 'data_table_templatizer_behavior.dart';


@BehaviorProxy(const ['Polymer', 'saulis.DataTableTemplatizerBehaviorImpl'])
abstract class DataTableTemplatizerBehaviorImpl implements CustomElementProxyMixin {

  bool get expanded => jsElement[r'expanded'];
  set expanded(bool value) { jsElement[r'expanded'] = value; }

  num get index => jsElement[r'index'];
  set index(num value) { jsElement[r'index'] = value; }

  get item => jsElement[r'item'];
  set item(value) { jsElement[r'item'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  bool get selected => jsElement[r'selected'];
  set selected(bool value) { jsElement[r'selected'] = value; }

  get table => jsElement[r'table'];
  set table(value) { jsElement[r'table'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  get template => jsElement[r'template'];
  set template(value) { jsElement[r'template'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}
}




@BehaviorProxy(const ['Polymer', 'saulis.DataTableTemplatizerBehavior'])
abstract class DataTableTemplatizerBehavior implements CustomElementProxyMixin, Templatizer, saulis.DataTableTemplatizerBehaviorImpl {
}
