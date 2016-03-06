// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `paper_time_picker`.
@HtmlImport('paper_time_picker_nodart.html')
library custom_elements.lib.src.paper_time_picker.paper_time_picker;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart';
import 'package:polymer_elements/neon_animation/animations/fade_in_animation.dart';
import 'package:polymer_elements/neon_animation/animations/fade_out_animation.dart';
import 'package:polymer_elements/iron_media_query.dart';
import 'package:polymer_elements/iron_selector.dart';
import 'package:polymer_elements/iron_flex_layout.dart';
import 'package:polymer_elements/paper_styles.dart';
import 'package:polymer_elements/neon_animated_pages.dart';
import 'package:polymer_elements/neon_animatable.dart';
import 'package:custom_elements/paper_clock_selector.dart';
import 'package:custom_elements/paper_time_picker_dialog_style.dart';

/// [Material Design Pickers](http://www.google.com/design/spec/components/pickers.html)
///
/// Provides a responsive time picker based on the material design spec. This
/// component aims to be a clone of the time picker introduced in Android Lollipop.
///
/// ## Examples:
///
/// Default picker:
///
///     <paper-time-picker></paper-time-picker>
///
/// Setting the initial time to 4:20pm (note that hours given as 24-hour):
///
///     <paper-time-picker time="4:20pm"></paper-time-picker>
///
/// If you include this element as part of `paper-dialog`, use the class
/// `"paper-time-picker-dialog"` on the dialog in order to give it proper styling.
///
///     <paper-dialog id="dialog" modal class="paper-time-picker-dialog"
///       on-iron-overlay-closed="dismissDialog">
///       <paper-time-picker id="timePicker" time="[[time]]"></paper-time-picker>
///       <div class="buttons">
///         <paper-button dialog-dismiss>Cancel</paper-button>
///         <paper-button dialog-confirm>OK</paper-button>
///       </div>
///     </paper-dialog>
@CustomElementProxy('paper-time-picker')
class PaperTimePicker extends HtmlElement with CustomElementProxyMixin, PolymerBase, IronResizableBehavior {
  PaperTimePicker.created() : super.created();
  factory PaperTimePicker() => new Element.tag('paper-time-picker');

  /// Whether or not to animate the clock hand between selections
  bool get animated => jsElement[r'animated'];
  set animated(bool value) { jsElement[r'animated'] = value; }

  /// Force narrow layout
  bool get forceNarrow => jsElement[r'forceNarrow'];
  set forceNarrow(bool value) { jsElement[r'forceNarrow'] = value; }

  /// The current 24-hour value (0-24)
  num get hour => jsElement[r'hour'];
  set hour(num value) { jsElement[r'hour'] = value; }

  /// The current 12-hour value (0-12)
  num get hour12 => jsElement[r'hour12'];
  set hour12(num value) { jsElement[r'hour12'] = value; }

  bool get isTouch => jsElement[r'isTouch'];
  set isTouch(bool value) { jsElement[r'isTouch'] = value; }

  /// The current minute (0-59)
  num get minute => jsElement[r'minute'];
  set minute(num value) { jsElement[r'minute'] = value; }

  bool get narrow => jsElement[r'narrow'];
  set narrow(bool value) { jsElement[r'narrow'] = value; }

  /// The current period ('AM', 'PM')
  String get period => jsElement[r'period'];
  set period(String value) { jsElement[r'period'] = value; }

  /// The time value as the number of minutes from midnight
  num get rawValue => jsElement[r'rawValue'];
  set rawValue(num value) { jsElement[r'rawValue'] = value; }

  /// Maximum screen width at which the picker uses a vertical layout
  String get responsiveWidth => jsElement[r'responsiveWidth'];
  set responsiveWidth(String value) { jsElement[r'responsiveWidth'] = value; }

  /// The selected time
  String get time => jsElement[r'time'];
  set time(String value) { jsElement[r'time'] = value; }

  /// The current selector view ('hours' or 'minutes')
  String get view => jsElement[r'view'];
  set view(String value) { jsElement[r'view'] = value; }

  formatTime(hour, minute) =>
      jsElement.callMethod('formatTime', [hour, minute]);

  parseTime(timeString) =>
      jsElement.callMethod('parseTime', [timeString]);

  togglePeriod() =>
      jsElement.callMethod('togglePeriod', []);
}
