// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `vaadin_upload_file`.
@HtmlImport('vaadin_upload_file_nodart.html')
library custom_elements.lib.src.vaadin_upload.vaadin_upload_file;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/iron_flex_layout.dart';
import 'package:polymer_elements/iron_icons.dart';
import 'package:polymer_elements/typography.dart';
import 'package:polymer_elements/paper_icon_button.dart';
import 'package:polymer_elements/paper_progress.dart';

/// `<vaadin-upload-file>` element represents a file in the file list of `<vaadin-upload>`.
///
/// ### Styling
///
/// The following custom properties are available for styling the component.
///
/// Custom property | Description | Default
/// ----------------|-------------|----------
/// `--vaadin-upload-file`|Styles for the entire host element|`{}`
/// `--vaadin-upload-file-row`|Styles for the file row|`{}`
/// `--vaadin-upload-file-meta`|Styles for the info container|`{}`
/// `--vaadin-upload-file-name`|Styles for the file name|`{}`
/// `--vaadin-upload-file-status`|Styles for the file status label|`{}`
/// `--vaadin-upload-file-error`|Styles for the file error label|`{}`
/// `--vaadin-upload-file-commands`|Styles for the buttons container|`{}`
/// `--vaadin-upload-file-progress`|Styles for the included paper-progress|`{}`
/// `--vaadin-upload-file-progress-error`|Styles for the progress bar when error is set|`{}`
/// `--vaadin-upload-file-progress-indeterminate`|Styles for the progress bar when indeterminate|`{}`
/// `--vaadin-upload-file-progress-uploading-indeterminate`|Styles for the progress bar when uploading and indeterminate|`{}`
/// `--vaadin-upload-file-progress-complete`|Styles for the progress when file is complete|`{}`
@CustomElementProxy('vaadin-upload-file')
class VaadinUploadFile extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  VaadinUploadFile.created() : super.created();
  factory VaadinUploadFile() => new Element.tag('vaadin-upload-file');

  /// File metadata, upload status and progress information.
  get file => jsElement[r'file'];
  set file(value) { jsElement[r'file'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}
}
