// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `paper_date_picker`.
@HtmlImport('paper_date_picker_nodart.html')
library custom_elements.lib.src.polymer_paper_date_picker.paper_date_picker;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart';
import 'package:polymer_elements/neon_animation/animations/fade_in_animation.dart';
import 'package:polymer_elements/neon_animation/animations/fade_out_animation.dart';
import 'package:polymer_elements/iron_media_query.dart';
import 'package:polymer_elements/neon_animated_pages.dart';
import 'package:polymer_elements/neon_animatable.dart';
import 'package:polymer_elements/iron_selector.dart';
import 'package:polymer_elements/iron_flex_layout.dart';
import 'package:polymer_elements/typography.dart';
import 'moment_with_locales_import.dart';
import 'package:custom_elements/paper_calendar.dart';
import 'package:custom_elements/paper_date_picker_dialog_style.dart';
import 'package:custom_elements/paper_year_list.dart';

/// Material Design [Pickers](http://www.google.com/design/spec/components/pickers.html)
///
/// Provides a responsive date picker based on the material design spec.
///
/// ## Examples:
///
/// Default picker:
///
///     <paper-date-picker></paper-date-picker>
///
/// Setting the initial date to April 20, 2015:
///
///     <paper-date-picker date="April 20, 2015"></paper-date-picker>
///
/// You may also specify a minimum and/or maximum date allowed in this picker using
/// the same date notation:
///
///     <paper-date-picker min-date="April 1, 2015" max-date="June 30, 2015"></paper-date-picker>
///
/// If you include this element as part of `paper-dialog`, use the class
/// `"paper-date-picker-dialog"` on the dialog element in order to give it proper
/// styling:
///
///     <paper-dialog id="dialog" class="paper-date-picker-dialog" modal
///       on-iron-overlay-closed="dismissDialog">
///       <paper-date-picker id="picker" date="[[date]]"></paper-date-picker>
///       <div class="buttons">
///         <paper-button dialog-dismiss>Cancel</paper-button>
///         <paper-button dialog-confirm>OK</paper-button>
///       </div>
///     </paper-dialog>
@CustomElementProxy('paper-date-picker')
class PaperDatePicker extends HtmlElement with CustomElementProxyMixin, PolymerBase, IronResizableBehavior {
  PaperDatePicker.created() : super.created();
  factory PaperDatePicker() => new Element.tag('paper-date-picker');

  /// The selected date (YYYY-MM-DD)
  get date => jsElement[r'date'];
  set date(value) { jsElement[r'date'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Force narrow layout
  bool get forceNarrow => jsElement[r'forceNarrow'];
  set forceNarrow(bool value) { jsElement[r'forceNarrow'] = value; }

  String get headingBreak => jsElement[r'headingBreak'];
  set headingBreak(String value) { jsElement[r'headingBreak'] = value; }

  /// The format of the date displayed in the heading.
  /// See docuemntation for Moment.js for more info.
  String get headingFormat => jsElement[r'headingFormat'];
  set headingFormat(String value) { jsElement[r'headingFormat'] = value; }

  bool get isTouch => jsElement[r'isTouch'];
  set isTouch(bool value) { jsElement[r'isTouch'] = value; }

  /// The current locale
  String get locale => jsElement[r'locale'];
  set locale(String value) { jsElement[r'locale'] = value; }

  /// The maximum allowed date
  get maxDate => jsElement[r'maxDate'];
  set maxDate(value) { jsElement[r'maxDate'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// The minimum allowed date
  get minDate => jsElement[r'minDate'];
  set minDate(value) { jsElement[r'minDate'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  bool get narrow => jsElement[r'narrow'];
  set narrow(bool value) { jsElement[r'narrow'] = value; }

  /// Maximum screen width at which the picker uses a vertical layout
  String get responsiveWidth => jsElement[r'responsiveWidth'];
  set responsiveWidth(String value) { jsElement[r'responsiveWidth'] = value; }

  dateFormat() =>
      jsElement.callMethod('dateFormat', []);
}
