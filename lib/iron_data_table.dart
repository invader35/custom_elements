// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `iron_data_table`.
@HtmlImport('iron_data_table_nodart.html')
library custom_elements.lib.src.iron_data_table.iron_data_table;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart';
import 'package:polymer_elements/iron_list.dart';
import 'data_table_column.dart';
import 'data_table_column_sort.dart';
import 'data_table_cell.dart';
import 'data_table_checkbox.dart';

/// `iron-data-table` displays a table or a grid of data.
/// It builds on top of `iron-list`, which provides the foundation for features like
/// virtual scrolling and templating.
///
/// It contains an array of `data-table-column` elements, which are used to define a template
/// for the cells on each row item.
///
/// Rows use flex layout which enables cells to fit the available space.
///
/// Cell elements are placed outside the shadow root of the `iron-data-table` which
/// allows them to be styled by the user.
///
/// ### Template model
/// Column templates should bind to template models of the following structure:
/// ```js
/// {
///   index: 0,        // index in the item array
///   selected: false, // true if the current item is selected
///   item: {}         // user data corresponding to items[index]
/// }
/// ```
/// For example, given the following `data` array:
/// ##### data.json
/// ```js
/// [
///   {"name": {
///     "title": "miss",
///     "first": "donna",
///     "last": "davis"
///   }},
///   {"name": {
///     "title": "mr",
///     "first": "samuel",
///     "last": "kelley"
///   }},
///   {"name": {
///     "title": "ms",
///     "first": "katie",
///     "last": "butler"
///   }}
/// ]
/// ```
/// The following code would render the table (note the name and checked properties are
/// bound from the model object provided to the template scope):
/// ```html
/// <template is="dom-bind">
///   <iron-ajax url="data.json" last-response="{{data}}" auto></iron-ajax>
///   <iron-data-table items="[[data]]">
///     <data-table-column name="First Name">
///       <template>[[item.name.first]]</template>
///     </data-table-column>
///     <data-table-column name="Last Name">
///       <template>[[item.name.last]]</template>
///     </data-table-column>
///   </iron-data-table>
/// </template>
/// ```
///
/// ### Styling
/// There are several custom properties and mixins you can use to style the component:
///
/// Custom property | Description
/// ----------------|-------------
/// `--iron-data-table-cell-height` | Property that determines the height of the cells
/// `--iron-data-table-header` | Mixin applied to the header element
/// `--iron-data-table-header-cell` | Mixin applied to the header cells
/// `--iron-data-table-row-group` | Mixin applied to the row group element
/// `--iron-data-table-row` | Mixin applied to the row item element
/// `--iron-data-table-row-cell` | Mixin applied to the row cells.
/// `--iron-data-table-row-hover` | Mixin applied to the row item element when hovered on
/// `--iron-data-table-row-selected` | Mixin applied to the selected row item elements
/// `--iron-data-table-row-after` | Mixin applied to :after pseudoelement of the row item element
/// `--iron-data-table-row-focused` | Mixin applied to the focused row item elements
/// `--iron-data-table-row-focused-after` | Mixin applied to :after pseudoelement of the focused row item elements
///
/// To get started, you can import `default-styles.html` which provides material design
/// inspired styles to your `iron-data-table`.
@CustomElementProxy('iron-data-table')
class IronDataTable extends HtmlElement with CustomElementProxyMixin, PolymerBase, IronResizableBehavior {
  IronDataTable.created() : super.created();
  factory IronDataTable() => new Element.tag('iron-data-table');

  /// An array of `data-table-column` elements which contain the templates
  /// to be stamped with items.
  List get columns => jsElement[r'columns'];
  set columns(List value) { jsElement[r'columns'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}

  /// An array containing path/filter value pairs that are used to filter the items
  List get filter => jsElement[r'filter'];
  set filter(List value) { jsElement[r'filter'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}

  /// Path to an item property that is used to group the items.
  String get groupBy => jsElement[r'groupBy'];
  set groupBy(String value) { jsElement[r'groupBy'] = value; }

  /// An array containing the items which will be stamped to the column template
  /// instances.
  List get items => jsElement[r'items'];
  set items(List value) { jsElement[r'items'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}

  /// When `true`, multiple items may be selected at once (in this case,
  /// `selected` is an array of currently selected items).  When `false`,
  /// only one item may be selected at a time.
  bool get multiSelection => jsElement[r'multiSelection'];
  set multiSelection(bool value) { jsElement[r'multiSelection'] = value; }

  /// This is the currently selected item, or `null`
  /// if no item is selected.
  get selectedItem => jsElement[r'selectedItem'];
  set selectedItem(value) { jsElement[r'selectedItem'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// When `multiSelection` is true, this is an array that contains the selected items.
  get selectedItems => jsElement[r'selectedItems'];
  set selectedItems(value) { jsElement[r'selectedItems'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// If `true`, tapping a row will select the item.
  bool get selectionEnabled => jsElement[r'selectionEnabled'];
  set selectionEnabled(bool value) { jsElement[r'selectionEnabled'] = value; }

  /// An object with a path/sortorder ('asc' or 'desc') that is used to sort the items
  get sortOrder => jsElement[r'sortOrder'];
  set sortOrder(value) { jsElement[r'sortOrder'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Clears the current selection state.
  clearSelection() =>
      jsElement.callMethod('clearSelection', []);

  /// Deselects the given item list if it is already selected.
  /// [item]: The item object or its index
  deselectItem(item) =>
      jsElement.callMethod('deselectItem', [item]);

  /// Selects all the items in the list.
  selectAll() =>
      jsElement.callMethod('selectAll', []);

  /// Select the list item at the given index.
  /// [item]: The item object or its index
  selectItem(item) =>
      jsElement.callMethod('selectItem', [item]);
}
