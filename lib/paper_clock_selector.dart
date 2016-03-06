// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `paper_clock_selector`.
@HtmlImport('paper_clock_selector_nodart.html')
library custom_elements.lib.src.paper_time_picker.paper_clock_selector;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart';
import 'package:polymer_elements/iron_flex_layout.dart';


@CustomElementProxy('paper-clock-selector')
class PaperClockSelector extends HtmlElement with CustomElementProxyMixin, PolymerBase, IronResizableBehavior {
  PaperClockSelector.created() : super.created();
  factory PaperClockSelector() => new Element.tag('paper-clock-selector');

  bool get animated => jsElement[r'animated'];
  set animated(bool value) { jsElement[r'animated'] = value; }

  num get count => jsElement[r'count'];
  set count(num value) { jsElement[r'count'] = value; }

  num get selected => jsElement[r'selected'];
  set selected(num value) { jsElement[r'selected'] = value; }

  num get step => jsElement[r'step'];
  set step(num value) { jsElement[r'step'] = value; }

  bool get useZero => jsElement[r'useZero'];
  set useZero(bool value) { jsElement[r'useZero'] = value; }

  bool get zeroPad => jsElement[r'zeroPad'];
  set zeroPad(bool value) { jsElement[r'zeroPad'] = value; }

  setClockHand(deg, animate, callback) =>
      jsElement.callMethod('setClockHand', [deg, animate, callback]);
}
