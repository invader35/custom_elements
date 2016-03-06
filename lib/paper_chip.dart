// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `paper_chip`.
@HtmlImport('paper_chip_nodart.html')
library custom_elements.lib.src.paper_chip.paper_chip;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/iron_button_state.dart';
import 'package:polymer_elements/iron_a11y_keys_behavior.dart';
import 'package:polymer_elements/iron_control_state.dart';
import 'package:polymer_elements/iron_a11y_keys.dart';
import 'package:polymer_elements/iron_flex_layout.dart';
import 'package:polymer_elements/iron_icons.dart';
import 'package:polymer_elements/paper_icon_button.dart';
import 'package:polymer_elements/paper_material.dart';
import 'package:polymer_elements/paper_styles.dart';

/// Material Design: [Chips](http://www.google.com/design/spec/components/chips.html)
///
/// `paper-chip` is a small element that represents a complex entity such as a
/// calendar event or a contact. The chip can be in an opened or closed state. In
/// its closed state, it contains an icon and a short title. In its open state, the
/// chip expands to show more detail about the represented entity, as well as
/// (optionally) a "remove" button that removes the chip element from the DOM.
///
/// The following child elements may be placed within the chip tag define its
/// content:
///
/// .icon: The icon representing the chip. This may be any element, for
///             example, a `<iron-icon>` or a simple `<span>` with a single letter
/// h1: The chip label, shown in both closed and opened states
/// h2: A secondary label, shown only in the opened state
///
/// The `removable` attribute can be used to add a button which removes the chip
/// from the DOM.
///
/// ## Examples:
///
/// Removable chip with iron-icon
///
///     <paper-chip removable>
///       <iron-icon class="icon" icon="avatars:avatar-1"></iron-icon>
///       <h1>John Doe</h1>
///       <h2>jdoe@example.com</h2>
///     </paper-chip>
///
/// Basic chip with single letter instead of an icon
///
///     <paper-chip label="Jane Doe">
///       <div class="icon">J</div>
///       <h1>jdoe@example.com</h1>
///     </paper-chip>
@CustomElementProxy('paper-chip')
class PaperChip extends HtmlElement with CustomElementProxyMixin, PolymerBase, IronA11yKeysBehavior, IronButtonState, IronControlState {
  PaperChip.created() : super.created();
  factory PaperChip() => new Element.tag('paper-chip');

  /// Whether or not the chip state is "active". If `true`, the main chip
  /// area will be highlighted when in the opened state.
  bool get active => jsElement[r'active'];
  set active(bool value) { jsElement[r'active'] = value; }

  /// Whether or not the chip uses an animated transition between opened and
  /// closed states
  bool get animated => jsElement[r'animated'];
  set animated(bool value) { jsElement[r'animated'] = value; }

  /// Whether or not the chip is in its opened state.
  bool get opened => jsElement[r'opened'];
  set opened(bool value) { jsElement[r'opened'] = value; }

  /// Whether or not the chip is removable. If `true`, a remove button will
  /// be shown.
  bool get removable => jsElement[r'removable'];
  set removable(bool value) { jsElement[r'removable'] = value; }

  /// Fired before the element is removed. This event is cancelable.
  remove() =>
      jsElement.callMethod('remove', []);

  toggleOpened() =>
      jsElement.callMethod('toggleOpened', []);
}
