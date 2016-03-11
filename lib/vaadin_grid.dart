// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `vaadin_grid`.
@HtmlImport('vaadin_grid_nodart.html')
library custom_elements.lib.src.vaadin_grid.vaadin_grid;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';

/// High quality data grid for showing large amounts of tabular data.
///
/// Simple usage (static HTML data source):
/// ```html
/// <vaadin-grid>
///   <table>
///     <colgroup>
///       <col name="firstName">
///       <col name="lastName">
///       <col name="email">
///     </colgroup>
///     <thead>
///       <tr>
///         <th>Name</th>
///         <th>Value</th>
///         <th>Progress</th>
///       </tr>
///     </thead>
///     <tbody>
///       <tr>
///         <td>Jonathan</td>
///         <td>Doe</td>
///         <td>jonathan.doe@example.com</td>
///       </tr>
///       <tr>
///         <td>Jane</td>
///         <td>Smith</td>
///         <td>jane.smith@example.com</td>
///       </tr>
///     </tbody>
///   </table>
/// </vaadin-grid>
/// ```
///
/// ### Styling
///
/// The grid uses `--default-primary-color` from [paper-styles](https://github.com/PolymerElements/paper-styles) as a highlight color. You can customize the color by defining your own primary default color.
///
/// ```html
/// <style is="custom-style">
///   vaadin-grid {
///     --default-primary-color: red;
///   }
/// </style>
/// ```
/// The following custom properties are available for styling:
///
/// Custom property | Description | Default
/// :----------------|:-------------|----------:
/// `--vaadin-grid-row-height` | Data row height | `48px`
/// `--vaadin-grid-header-row-height` | Header row height | `56px`
/// `--vaadin-grid-footer-row-height` | Footer row height | `56px`
///
/// See the [demo](demo/index.html) for use case examples.
@CustomElementProxy('vaadin-grid')
class VaadinGrid extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  VaadinGrid.created() : super.created();
  factory VaadinGrid() => new Element.tag('vaadin-grid');

  /// A function which is used for generating CSS class names for data cells.
  ///
  /// See the API documentation for the “cell” object for more details about
  /// the parameter of this function.
  ///
  /// #### Example:
  /// ```js
  /// grid.cellClassGenerator = function(cell) {
  ///   if (cell.index == 2) {
  ///      return "activity-" + cell.data.toLowerCase();
  ///    }
  ///  };
  /// ```
  get cellClassGenerator => jsElement[r'cellClassGenerator'];
  set cellClassGenerator(value) { jsElement[r'cellClassGenerator'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// The array of columns attached to the grid.
  ///
  /// See the API documentation for “column” for more details about the
  /// column objects.
  get columns => jsElement[r'columns'];
  set columns(value) { jsElement[r'columns'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Disables the grid.
  ///
  /// #### Declarative example:
  /// ```html
  /// <vaadin-grid disabled>...</vaadin-grid>
  /// ```
  bool get disabled => jsElement[r'disabled'];
  set disabled(bool value) { jsElement[r'disabled'] = value; }

  /// Object for controlling and accessing the footer rows in the grid.
  ///
  /// See the API documentation for “footer” for more details.
  get footer => jsElement[r'footer'];
  set footer(value) { jsElement[r'footer'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// The index of the last frozen columns in this grid. A frozen column will
  /// always stay visible in the grid viewport when the user scrolls the grid
  /// viewport horizontally.
  ///
  /// Setting the property to 0 means that no columns will be frozen,
  /// but the built-in selection checkbox column will still be frozen if
  /// it’s in use. Setting the count to -1 will unfreeze the selection
  /// column also.
  ///
  /// #### Declarative example:
  /// ```html
  /// <vaadin-grid frozen-columns="2">...</vaadin-grid>
  /// ```
  num get frozenColumns => jsElement[r'frozenColumns'];
  set frozenColumns(num value) { jsElement[r'frozenColumns'] = value; }

  /// Object for controlling and accessing the header rows in the grid.
  ///
  /// See the API documentation for “header” for more details.
  get header => jsElement[r'header'];
  set header(value) { jsElement[r'header'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// An array or a function containing or returning items determining
  /// the row data in the grid (i.e. the data source).
  ///
  /// Implement the property as a function if you wish to provide data
  /// lazily to the grid, for example from a REST service, to get only the
  /// items that are necessary in the grid viewport.
  ///
  /// See the API documentation for "items function" for more details.
  ///
  /// For an in-memory list of items, use the `items` array property instead.
  ///
  /// In both options, at the end the grid expects to receive an array, which
  /// can contain either arrays, objects or primitive types.
  ///
  /// #### Examples:
  ///  ```
  ///  grid.items = [
  ///      {
  ///        firsName: "Jonathan",
  ///        lastName: "Doe",
  ///        email: "jonathan.doe@example.com"
  ///      },
  ///      {
  ///        firstName: "Jane",
  ///        lastName: "Smith",
  ///        email: "jane.smith@example.com"
  ///      }
  ///  ];
  ///  ```
  ///  ```
  ///  grid.items = function(params, callback) {
  ///    callback(["foo", "bar"], 2);
  ///  };
  ///  ```
  get items => jsElement[r'items'];
  set items(value) { jsElement[r'items'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// A function which is used for generating CSS class names for data rows.
  ///
  /// See the API documentation for the “row” object for more details about
  /// the parameter of this function.
  ///
  /// #### Example:
  /// ```js
  /// grid.rowClassGenerator = function(row) {
  ///   var activity = row.data[2];
  ///   return "activity-" + activity.toLowerCase();
  /// };
  /// ```
  get rowClassGenerator => jsElement[r'rowClassGenerator'];
  set rowClassGenerator(value) { jsElement[r'rowClassGenerator'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// The row details generator is used for generating detail content for
  /// data rows. The details element is added directly under the row.
  ///
  /// #### Example:
  /// ```js
  /// grid.rowDetails.detailsGenerator = function(rowIndex) {
  ///   var detail = document.createElement("div");
  ///   detail.textContent = "Row detail content for row " + rowIndex;
  ///   return detail;
  /// };
  /// ```
  get rowDetailsGenerator => jsElement[r'rowDetailsGenerator'];
  set rowDetailsGenerator(value) { jsElement[r'rowDetailsGenerator'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Object for controlling and accessing the selected rows in the grid.
  ///
  /// See the API documentation for the “selection” object for more details.
  get selection => jsElement[r'selection'];
  set selection(value) { jsElement[r'selection'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Explicitly sets the number of records the `items` array/function
  /// provides for the grid to display.
  ///
  /// This may also be set indirectly by passing the value as the second
  /// parameter for data request callback function.
  num get size => jsElement[r'size'];
  set size(num value) { jsElement[r'size'] = value; }

  /// An array defining the sorting of columns. The order of the objects in
  /// the array defines the order of sort (if the grid is sorted by
  /// multiple columns).
  ///
  /// See the API documentation for the “sort-order” object for more details.
  List get sortOrder => jsElement[r'sortOrder'];
  set sortOrder(List value) { jsElement[r'sortOrder'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}

  /// Sets the height of the grid so that the specified amount of data rows
  /// is visible. Overrides any height specified in CSS.
  ///
  /// #### Declarative example:
  /// ```html
  /// <vaadin-grid rows="5">...</vaadin-grid>
  /// ```
  num get visibleRows => jsElement[r'visibleRows'];
  set visibleRows(num value) { jsElement[r'visibleRows'] = value; }

  /// Adds a new column. Column is added at the end if `beforeColumn` is not defined.
  /// [column]: Column object to be added.
  /// [beforeColumn]: Index or id of the column before which the new column should be added.
  addColumn(column, String beforeColumn) =>
      jsElement.callMethod('addColumn', [column, beforeColumn]);

  /// Invokes the callback with row data of the provided row index as the
  /// parameter. If the row is not cached, it's fetched from the data source
  /// first.
  /// [rowIndex]: Index of the row.
  /// [callback]: Gets arguments (err, item) where item is the desired data item.
  /// [onlyCached]: Only fetch cached rows (don't fall back to data source request).
  getItem(num rowIndex, callback, bool onlyCached) =>
      jsElement.callMethod('getItem', [rowIndex, callback, onlyCached]);

  /// Clears the grid’s internal data cache, causing it to request the
  /// visible items in the grid viewport from the `items` property or the
  /// `datasource` function, and to scroll back to the top of the grid viewport.
  ///
  /// Needs to be called whenever the data items are modified in some way
  /// (added, removed, updated, re-ordered etc.).
  refreshItems() =>
      jsElement.callMethod('refreshItems', []);

  /// Removes a column with certain id
  /// [id]: Column to be removed.
  removeColumn(String id) =>
      jsElement.callMethod('removeColumn', [id]);

  /// Scrolls to the end of the grid.
  ///
  /// Scrolling happens asynchronously, so this method returns a 'thenable'
  /// which can be used to be notified when the scrolling is finished.
  ///
  /// #### Example:
  /// ```js
  /// grid.scrollToEnd().then(function() {...});
  /// ```
  scrollToEnd() =>
      jsElement.callMethod('scrollToEnd', []);

  /// Scrolls to a certain row, using user-specified scroll destination.
  ///
  /// Scrolling happens asynchronously, so this method returns a 'thenable'
  /// which can be used to be notified when the scrolling is finished.
  ///
  /// #### Example:
  /// ```js
  /// grid.scrollToRow(10, "end").then(function() {...});
  /// ```
  /// [index]: Zero-based index of the row to scroll to.
  /// [scrollDestination]: Desired destination placement of scrolled-to-row. Valid values are `any`, `start`, `middle` and `end`. Defaults to `any`.
  scrollToRow(num index, String scrollDestination) =>
      jsElement.callMethod('scrollToRow', [index, scrollDestination]);

  /// Scrolls to the beginning of the grid.
  ///
  /// Scrolling happens asynchronously, so this method returns a 'thenable'
  /// which can be used to be notified when the scrolling is finished.
  ///
  /// #### Example:
  /// ```js
  /// grid.scrollToStart().then(function() {...});
  /// ```
  scrollToStart() =>
      jsElement.callMethod('scrollToStart', []);

  /// Shows or hides row details for the row at the given index.
  setRowDetailsVisible(num rowIndex, bool visible) =>
      jsElement.callMethod('setRowDetailsVisible', [rowIndex, visible]);

  /// Executes a callback when the grid has finished any pending work.
  then(callback) =>
      jsElement.callMethod('then', [callback]);
}
