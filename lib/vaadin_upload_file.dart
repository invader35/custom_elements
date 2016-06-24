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
import 'package:polymer_elements/iron_icon.dart';
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
/// `--vaadin-upload-file`|A mixin that is applied to the host element|`{}`
/// `--vaadin-upload-file-row`|A mixin that is applied to the file row|`{}`
/// `--vaadin-upload-file-status-icon`|A mixin that is applied to all file status icons. By default, file status icons are hidden until the upload process finishes.|`{}`
/// `--vaadin-upload-file-status-icon-complete`|A mixin that is applied to the complete status icon when the upload process succeeds|`{}`
/// `--vaadin-upload-file-status-icon-error`|A mixin that is applied to the error status icon when the upload process fails|`{}`
/// `--vaadin-upload-file-meta`|A mixin that is applied to the info container|`{}`
/// `--vaadin-upload-file-meta-complete`|A mixin that is applied to the info container when file upload is complete|`{}`
/// `--vaadin-upload-file-meta-error`|A mixin that is applied to the info container when an error happens|`{}`
/// `--vaadin-upload-file-name`|A mixin that is applied to the file name|`{}`
/// `--vaadin-upload-file-status`|A mixin that is applied to the file status label|`{}`
/// `--vaadin-upload-file-error`|A mixin that is applied to the file error label|`{}`
/// `--vaadin-upload-file-commands`|A mixin that is applied to the buttons container|`{}`
/// `--vaadin-upload-file-progress`|A mixin that is applied to the included paper-progress|`{}`
/// `--vaadin-upload-file-progress-error`|A mixin that is applied to the progress bar when error is set|`{}`
/// `--vaadin-upload-file-progress-indeterminate`|A mixin that is applied to the progress bar when indeterminate|`{}`
/// `--vaadin-upload-file-progress-uploading-indeterminate`|A mixin that is applied to the progress bar when uploading and indeterminate|`{}`
/// `--vaadin-upload-file-progress-complete`|A mixin that is applied to the progress when file is complete|`{}`
/// `--vaadin-upload-file-canceled`|A mixin that is applied to the upload cancel animation|`{}`
@CustomElementProxy('vaadin-upload-file')
class VaadinUploadFile extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  VaadinUploadFile.created() : super.created();
  factory VaadinUploadFile() => new Element.tag('vaadin-upload-file');

  /// File metadata, upload status and progress information.
  get file => jsElement[r'file'];
  set file(value) { jsElement[r'file'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}
}
