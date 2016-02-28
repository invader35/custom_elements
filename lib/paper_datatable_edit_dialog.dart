// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `paper_datatable_edit_dialog`.
@HtmlImport('paper_datatable_edit_dialog_nodart.html')
library custom_elements.lib.src.paper_datatable.paper_datatable_edit_dialog;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer/polymer.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart';
import 'package:polymer_elements/paper_styles.dart';
import 'package:polymer_elements/paper_material.dart';
import 'package:polymer_elements/iron_form.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart';


/// This shouldn't be showing up here, but I can't see to get this documentation system to ignore this file,
/// so just ignore it.
///
/// This element is used internally to render the dialog boxes when `<paper-datatable-column>` is used with the
/// `[dialog]` attribute.
@CustomElementProxy('paper-datatable-edit-dialog')
class PaperDatatableEditDialog extends HtmlElement with CustomElementProxyMixin, PolymerBase, IronResizableBehavior {
  PaperDatatableEditDialog.created() : super.created();
  factory PaperDatatableEditDialog() => new Element.tag('paper-datatable-edit-dialog');

  Element get positionedRelativeTo => jsElement[r'positionedRelativeTo'];
  set positionedRelativeTo(Element value) { jsElement[r'positionedRelativeTo'] = value; }

  bool get visible => jsElement[r'visible'];
  set visible(bool value) { jsElement[r'visible'] = value; }

  dismiss(ev) =>
      jsElement.callMethod('dismiss', [ev]);

  findFocus() =>
      jsElement.callMethod('findFocus', []);

  setLocationRelativeTo() =>
      jsElement.callMethod('setLocationRelativeTo', []);
}
