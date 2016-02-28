// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `paper_datatable`.
@HtmlImport('paper_datatable_nodart.html')
library custom_elements.lib.src.paper_datatable.paper_datatable;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart';
import 'paper_datatable_column.dart';
import 'paper_datatable_edit_dialog.dart';
import 'datatable_icons.dart';
import 'package:polymer_elements/paper_checkbox.dart';
import 'package:polymer_elements/paper_tooltip.dart';

/// # Paper Datatable
///
/// A [material design implementation of a data table](https://www.google.com/design/spec/components/data-tables.html).
@CustomElementProxy('paper-datatable')
class PaperDatatable extends HtmlElement with CustomElementProxyMixin, PolymerBase, IronResizableBehavior {
  PaperDatatable.created() : super.created();
  factory PaperDatatable() => new Element.tag('paper-datatable');

  /// Array of objects containing the data to be shown in the table.
  List get data => jsElement[r'data'];
  set data(List value) { jsElement[r'data'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}

  /// Whether to allow selection of more than one row.
  bool get multiSelection => jsElement[r'multiSelection'];
  set multiSelection(bool value) { jsElement[r'multiSelection'] = value; }

  /// Whether to show the progress bar. As the progress bar is often not used in standalone
  /// `<paper-datatable>'s the `<paper-progress>` element isn't included by default and needs to be
  /// manually imported.
  bool get progress => jsElement[r'progress'];
  set progress(bool value) { jsElement[r'progress'] = value; }

  /// Overflow, fixed or 'dynamic-columns'
  String get resizeBehavior => jsElement[r'resizeBehavior'];
  set resizeBehavior(String value) { jsElement[r'resizeBehavior'] = value; }

  /// Whether to show checkboxes on the left to allow row selection.
  bool get selectable => jsElement[r'selectable'];
  set selectable(bool value) { jsElement[r'selectable'] = value; }

  /// If `multi-selection` is off then this contains the selected row.
  get selectedItem => jsElement[r'selectedItem'];
  set selectedItem(value) { jsElement[r'selectedItem'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// If `multi-selection` is on then this contains an array of the selected rows.
  List get selectedItems => jsElement[r'selectedItems'];
  set selectedItems(List value) { jsElement[r'selectedItems'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}

  /// If `multi-selection` is off then this contains the key of the selected row.
  get selectedKey => jsElement[r'selectedKey'];
  set selectedKey(value) { jsElement[r'selectedKey'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// If `multi-selection` then this contains an array of selected row keys.
  List get selectedKeys => jsElement[r'selectedKeys'];
  set selectedKeys(List value) { jsElement[r'selectedKeys'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}

  /// Method that can be overwritten to apply a custom style to specific rows.
  ///
  /// IMPORTANT: This is a property, not a method you should call directly.
  customRowStyle(rowItem) =>
      jsElement.callMethod('customRowStyle', [rowItem]);

  /// Deselect the specified item. Ignore the `notify` parameter.
  deselect(item, notify) =>
      jsElement.callMethod('deselect', [item, notify]);

  /// Deselect all currently selected items. Ignore the `notify` parameter.
  deselectAll(notify) =>
      jsElement.callMethod('deselectAll', [notify]);

  /// The filter attribute can be used to specify a filter which will be applied to the `data`.
  /// Note that selections should fully ignore filtering, and a filter only affects which data is
  /// visible.
  ///
  /// The function takes three arguments: `item`, `key` and `items` per the JS filter function.
  ///
  /// For a demo please see [here](demo/filter.html).
  ///
  /// IMPORTANT: This is a property, not a method you should call directly.
  filter() =>
      jsElement.callMethod('filter', []);

  /// If you have been changing data on the `data` property outside of the official Polymer functions
  /// calling this function *may* get you the updates you want.
  reload() =>
      jsElement.callMethod('reload', []);

  /// Hardcore reset of the entire element. Sets `data` to `[]` and resets all cells.
  reset() =>
      jsElement.callMethod('reset', []);

  /// Select the specified item. Ignore the `notify` parameter.
  select(item, notify) =>
      jsElement.callMethod('select', [item, notify]);

  /// Sort the specified column, where `column` is a reference to the actual `<paper-datatable-column>`
  /// element.
  sort(column) =>
      jsElement.callMethod('sort', [column]);

  /// Triggered by clicking the top left checkmark. If all are checked it will deselect all checked items.
  /// If some or none are checked it will select all items
  toggleAll() =>
      jsElement.callMethod('toggleAll', []);
}
