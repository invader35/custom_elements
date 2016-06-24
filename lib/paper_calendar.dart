// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `paper_calendar`.
@HtmlImport('paper_calendar_nodart.html')
library custom_elements.lib.src.polymer_paper_date_picker.paper_calendar;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/iron_resizable_behavior.dart';
import 'package:polymer_elements/iron_flex_layout.dart';
import 'package:polymer_elements/iron_icon.dart';
import 'package:polymer_elements/iron_icons.dart';
import 'package:polymer_elements/paper_ripple.dart';
import 'package:polymer_elements/paper_styles.dart';
import 'moment_with_locales_import.dart';


@CustomElementProxy('paper-calendar')
class PaperCalendar extends HtmlElement with CustomElementProxyMixin, PolymerBase, IronResizableBehavior {
  PaperCalendar.created() : super.created();
  factory PaperCalendar() => new Element.tag('paper-calendar');

  /// The currently selected month (1-12)
  num get currentMonth => jsElement[r'currentMonth'];
  set currentMonth(num value) { jsElement[r'currentMonth'] = value; }

  /// The currently selected year
  num get currentYear => jsElement[r'currentYear'];
  set currentYear(num value) { jsElement[r'currentYear'] = value; }

  /// The selected date
  get date => jsElement[r'date'];
  set date(value) { jsElement[r'date'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// The current locale
  String get locale => jsElement[r'locale'];
  set locale(String value) { jsElement[r'locale'] = value; }

  /// The maximum allowed date
  get maxDate => jsElement[r'maxDate'];
  set maxDate(value) { jsElement[r'maxDate'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// The minimum allowed date
  get minDate => jsElement[r'minDate'];
  set minDate(value) { jsElement[r'minDate'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  dateFormat(date, format, locale) =>
      jsElement.callMethod('dateFormat', [date, format, locale]);
}
