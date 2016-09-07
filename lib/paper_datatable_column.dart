// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `paper_datatable_column`.
@HtmlImport('paper_datatable_column_nodart.html')
library custom_elements.lib.src.paper_datatable.paper_datatable_column;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';

/// This element is used inside of `<paper-datatable>` to declare the columns to be shown in the datatable.
@CustomElementProxy('paper-datatable-column')
class PaperDatatableColumn extends HtmlElement with CustomElementProxyMixin, PolymerBase, Templatizer {
  PaperDatatableColumn.created() : super.created();
  factory PaperDatatableColumn() => new Element.tag('paper-datatable-column');

  /// Convenience attribute to align the header and cell content (e.g. 'center')
  String get align => jsElement[r'align'];
  set align(String value) { jsElement[r'align'] = value; }

  /// If `type` is an `Array` and the array consists of `Object`s it's a common need
  /// to display a single property of every object (in non-editable mode).
  ///
  /// Note that it's not possible to use this in combination with an editable dialog,
  /// as internally this is using a `<template>` and Polymer currently allows only
  /// one template to be templatized per element.
  String get arrayDisplayProp => jsElement[r'arrayDisplayProp'];
  set arrayDisplayProp(String value) { jsElement[r'arrayDisplayProp'] = value; }

  /// Style to be applied to every cell.
  String get cellStyle => jsElement[r'cellStyle'];
  set cellStyle(String value) { jsElement[r'cellStyle'] = value; }

  /// If you have `undefined`'s in your `data` this method can be used to
  /// set a default, thus preventing auto-saves from triggering.
  get defaultValue => jsElement[r'default'];
  set defaultValue(value) { jsElement[r'default'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Instead of rendering the `<template>` inline in the cell it will instead be rendered in a
  /// floating `<paper-datatable-edit-dialog>` after the user `tap`s on the cell.
  bool get dialog => jsElement[r'dialog'];
  set dialog(bool value) { jsElement[r'dialog'] = value; }

  /// If `type` is a simple type, then if this is true one of the default editable
  /// templates is used. For example if `type` is `String` every cell will contain
  /// a `<paper-input>`. This is practically just a convenience method so that you
  /// don't have to define every `<template>` on your own.
  ///
  /// If you do use a custom `<template>` this will prevent a `row-tap` from triggering
  /// a selection. So if you click in a `<paper-input>` it won't select the row.
  bool get editable => jsElement[r'editable'];
  set editable(bool value) { jsElement[r'editable'] = value; }

  /// Per material design spec it's often useful to indicate that a cell is editable if you're using
  /// `[dialog]` based editing. This will show a little pencil icon to the right of the cell, but can be
  /// a bit overwhelming if used on more than one column.
  bool get editIcon => jsElement[r'editIcon'];
  set editIcon(bool value) { jsElement[r'editIcon'] = value; }

  /// String displayed in `<th></th>`
  String get header => jsElement[r'header'];
  set header(String value) { jsElement[r'header'] = value; }

  /// Removing and adding columns entirely from the DOM is a bit hard, so instead there is this
  /// convenience method to entirely disable a column.
  bool get inactive => jsElement[r'inactive'];
  set inactive(bool value) { jsElement[r'inactive'] = value; }

  /// The property to be used from `data` for this column
  String get property => jsElement[r'property'];
  set property(String value) { jsElement[r'property'] = value; }

  /// If you're using the `dynamic-columns` resize behavior this attribute is used to determining
  /// how important the column is when columns have to be hidden due to the window size. Set to -1
  /// if the column should always be shown. If columns have the same priority they will be assumed to
  /// be ordered by importance from left to right.
  num get resizePriority => jsElement[r'resizePriority'];
  set resizePriority(num value) { jsElement[r'resizePriority'] = value; }

  /// Whether to show sorting UI on the column. Sorting only works automagically
  /// on simple data types.
  bool get sortable => jsElement[r'sortable'];
  set sortable(bool value) { jsElement[r'sortable'] = value; }

  /// Whether the column is currently sorted. Should only be set on one column at a time
  String get sortDirection => jsElement[r'sortDirection'];
  set sortDirection(String value) { jsElement[r'sortDirection'] = value; }

  /// Whether the column is currently sorted. Should only be set on one column at a time
  bool get sorted => jsElement[r'sorted'];
  set sorted(bool value) { jsElement[r'sorted'] = value; }

  /// Tooltip shown when hovering the `<th>`
  String get tooltip => jsElement[r'tooltip'];
  set tooltip(String value) { jsElement[r'tooltip'] = value; }

  /// The type of the property (can be 'String', 'Number', 'Array', 'Date', etc.)
  /// Used for sorting and default display
  String get type => jsElement[r'type'];
  set type(String value) { jsElement[r'type'] = value; }

  /// Mostly just a convenience attribute to set min-width, but required in conjuction with
  /// the `dynamic-columns` resize behavior
  get width => jsElement[r'width'];
  set width(value) { jsElement[r'width'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Can be overwritten to manually format the value in a non-editable state
  ///
  /// IMPORTANT: This is a property, not a method you should call directly.
  formatValue() =>
      jsElement.callMethod('formatValue', []);

  /// Can be overwritten to manually sort the datatable if internal sorting is used. This is a normal
  /// function following the Javascript sort API.
  ///
  /// IMPORTANT: This is a property, not a method you should call directly.
  sort() =>
      jsElement.callMethod('sort', []);
}
