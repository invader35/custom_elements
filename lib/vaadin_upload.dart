// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `vaadin_upload`.
@HtmlImport('vaadin_upload_nodart.html')
library custom_elements.lib.src.vaadin_upload.vaadin_upload;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/iron_flex_layout.dart';
import 'package:polymer_elements/typography.dart';
import 'package:polymer_elements/paper_ripple.dart';
import 'package:polymer_elements/paper_button.dart';
import 'vaadin_upload_icons.dart';
import 'vaadin_upload_file.dart';

/// `<vaadin-upload>` is a Polymer element for uploading multiple files with drag and drop support.
///
/// Example:
///
/// ```html
/// <vaadin-upload></vaadin-upload>
/// ```
///
/// ### Styling
///
/// The following custom properties are available for styling the component.
///
/// Custom property | Description | Default
/// ----------------|-------------|----------
/// `--vaadin-upload-drag-ripple`|A mixin that is applied to the ripple animation in the drop area|`{}`
/// `--vaadin-upload-drop-label`|A mixin that is applied to the drop label|`{}`
/// `--vaadin-upload-drop-label-dragover`|A mixin that is applied to the drop label when overing the component with files|`{}`
/// `--vaadin-upload-drop-label-icon`|A mixin that is applied to the drop icon|`{}`
/// `--vaadin-upload-file-list`|A mixin that is applied to the file list|`{}`
/// `--vaadin-upload-buttons`|A mixin that is applied to the buttons container|`{}`
/// `--vaadin-upload-buttons-primary`|A mixin that is applied to the primary buttons container (left side)|`{}`
/// `--vaadin-upload-buttons-secondary`|A mixin that is applied to the secondary buttons container (right side)|`{}`
/// `--vaadin-upload-button-add`|A mixin that is applied to the upload button|`{}`
/// `--vaadin-upload-button-add-disabled`|A mixin that is applied to the upload button when `maxFiles` limit is reached|`{}`
@CustomElementProxy('vaadin-upload')
class VaadinUpload extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  VaadinUpload.created() : super.created();
  factory VaadinUpload() => new Element.tag('vaadin-upload');

  /// Specifies the types of files that the server accepts.
  /// Syntax: a comma-separated list of MIME type patterns (wildcards are
  /// allowed) or file extensions.
  /// Notice that MIME types are widely supported, while file extensions
  /// are only implemented in certain browsers, so avoid using it.
  /// Example: accept="video/*,image/tiff" or accept=".pdf,audio/mp3"
  String get accept => jsElement[r'accept'];
  set accept(String value) { jsElement[r'accept'] = value; }

  /// The array of files being processed, or already uploaded.
  ///
  /// Each element is a [`File`](https://developer.mozilla.org/en-US/docs/Web/API/File)
  /// object with a number of extra properties  to track the upload process:
  /// - `uploadTarget`: The target URL used to upload this file.
  /// - `elapsed`: Elapsed time since the upload started.
  /// - `elapsedStr`: Human-readable elapsed time.
  /// - `remaining`: Number of seconds remaining for the upload to finish.
  /// - `remainingStr`: Human-readable remaining time for the upload to finish.
  /// - `progress`: Percentage of the file already uploaded.
  /// - `speed`: Upload speed in kB/s.
  /// - `size`: File size in bytes.
  /// - `totalStr`: Human-readable total size of the file.
  /// - `loaded`: Bytes transferred so far.
  /// - `loadedStr`: Human-readable uploaded size at the moment.
  /// - `status`: Status of the upload process.
  /// - `error`: Error message in case the upload failed.
  /// - `abort`: True if the file was canceled by the user.
  /// - `complete`: True when the file was transferred to the server.
  /// - `uploading`: True while trasferring data to the server.
  List get files => jsElement[r'files'];
  set files(List value) { jsElement[r'files'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}

  /// Key-Value map to send to the server. If you set this property as an
  /// attribute, use a valid JSON string, for example:
  /// ```
  /// <vaadin-upload headers='{"X-Foo": "Bar"}'></vaadin-upload>
  /// ```
  get headers => jsElement[r'headers'];
  set headers(value) { jsElement[r'headers'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// The object used to localize this component.
  /// For changing the default localization, change the entire
  /// _i18n_ object or just the property you want to modify.
  ///
  /// The object has the following JSON structure and default values:
  ///
  ///     {
  ///       dropFiles: {
  ///        one: 'Drop file here...',
  ///        many: 'Drop files here...'
  ///       },
  ///       addFiles: {
  ///        one: 'Select File',
  ///        many: 'Upload Files'
  ///       },
  ///       cancel: 'Cancel',
  ///       error: {
  ///        tooManyFiles: 'Too Many Files.',
  ///        fileIsTooBig: 'File is Too Big.',
  ///        incorrectFileType: 'Incorrect File Type.'
  ///       },
  ///       uploading: {
  ///        status: {
  ///          connecting: 'Connecting...',
  ///          stalled: 'Stalled.',
  ///          processing: 'Processing File...'
  ///        },
  ///        remainingTime: {
  ///          prefix: 'remaining time: ',
  ///          unknown: 'unknown remaining time'
  ///        },
  ///        error: {
  ///          serverUnavailable: 'Server Unavailable',
  ///          unexpectedServerError: 'Unexpected Server Error',
  ///          forbidden: 'Forbidden'
  ///        }
  ///       },
  ///       units: {
  ///        size: ['B', 'kB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB']
  ///       },
  ///       formatSize: function(bytes) {
  ///        // returns the size followed by the best suitable unit
  ///       },
  ///       formatTime: function(seconds, [secs, mins, hours]) {
  ///        // returns a 'HH:MM:SS' string
  ///       }
  ///     }
  get i18n => jsElement[r'i18n'];
  set i18n(value) { jsElement[r'i18n'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Limit of files to upload, by default it is unlimited. If the value is
  /// set to one, native file browser will prevent selecting multiple files.
  num get maxFiles => jsElement[r'maxFiles'];
  set maxFiles(num value) { jsElement[r'maxFiles'] = value; }

  /// Specifies the maximum file size in bytes allowed to upload.
  /// Notice that it is a client-side constraint, which will be checked before
  /// sending the request. Obviously you need to do the same validation in
  /// the server-side and be sure that they are aligned.
  num get maxFileSize => jsElement[r'maxFileSize'];
  set maxFileSize(num value) { jsElement[r'maxFileSize'] = value; }

  /// HTTP Method used to send the files. Only POST and PUT are allowed.
  String get method => jsElement[r'method'];
  set method(String value) { jsElement[r'method'] = value; }

  /// Define whether the element supports dropping files on it for uploading.
  /// By default it's enabled in desktop and disabled in touch devices
  /// because mobile devices do not support drag events in general. Setting
  /// it false means that drop is enabled even in touch-devices, and true
  /// disables drop in all devices.
  bool get nodrop => jsElement[r'nodrop'];
  set nodrop(bool value) { jsElement[r'nodrop'] = value; }

  /// The server URL. The default value is an empty string, which means that
  /// _window.location_ will be used.
  String get target => jsElement[r'target'];
  set target(String value) { jsElement[r'target'] = value; }

  /// Max time in milliseconds for the entire upload process, if exceeded the
  /// request will be aborted. Zero means that there is no timeout.
  num get timeout => jsElement[r'timeout'];
  set timeout(num value) { jsElement[r'timeout'] = value; }
}
