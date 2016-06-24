// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `paper_year_list`.
@HtmlImport('paper_year_list_nodart.html')
library custom_elements.lib.src.polymer_paper_date_picker.paper_year_list;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart';
import 'package:polymer_elements/default_theme.dart';
import 'package:polymer_elements/neon_animation/animations/fade_in_animation.dart';
import 'package:polymer_elements/neon_animation/animations/fade_out_animation.dart';
import 'package:polymer_elements/iron_flex_layout.dart';
import 'package:polymer_elements/iron_list.dart';
import 'package:polymer_elements/paper_ripple.dart';


@CustomElementProxy('paper-year-list')
class PaperYearList extends HtmlElement with CustomElementProxyMixin, PolymerBase, IronResizableBehavior {
  PaperYearList.created() : super.created();
  factory PaperYearList() => new Element.tag('paper-year-list');

  get date => jsElement[r'date'];
  set date(value) { jsElement[r'date'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Maximum allowed year.
  num get max => jsElement[r'max'];
  set max(num value) { jsElement[r'max'] = value; }

  /// Minimum allowed year.
  num get min => jsElement[r'min'];
  set min(num value) { jsElement[r'min'] = value; }

  /// The selected year, sync with the year of the given date
  /// or null if year isn't within range.
  num get selected => jsElement[r'selected'];
  set selected(num value) { jsElement[r'selected'] = value; }

  /// Scroll in the years list to center the selected year.
  centerSelected() =>
      jsElement.callMethod('centerSelected', []);
}
