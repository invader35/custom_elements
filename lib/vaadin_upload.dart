// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `vaadin_upload`.
@HtmlImport('vaadin_upload_nodart.html')
library custom_elements.lib.src.vaadin_upload.vaadin_upload;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'package:polymer_elements/iron_flex_layout.dart';
import 'package:polymer_elements/iron_icons.dart';
import 'package:polymer_elements/typography.dart';
import 'package:polymer_elements/paper_ripple.dart';
import 'package:polymer_elements/paper_button.dart';
import 'vaadin_upload_file.dart';

/// `<vaadin-upload>` is a Polymer element for uploading multiple files with drag and drop support.
///
/// Example:
///
/// ```html
/// <vaadin-upload></vaadin-upload>
/// ```
///
/// ### Custom File List Item Template
///
/// In order to replace `<vaadin-upload-file>` with your file representation,
/// add a `<template class="file">...</template>` to the light DOM:
///
/// ```html
/// <vaadin-upload>
///   <template class="file">
///     [[file.name]]: [[file.status]]
///   </template>
/// </vaadin-upload>
/// ```
///
/// ### Styling
///
/// The following custom properties are available for styling the component.
///
/// Custom property | Description | Default
/// ----------------|-------------|----------
/// `--vaadin-upload-drag-ripple`|styles for the ripple animation in the drop area|`{}`
/// `--vaadin-upload-drop-label`|styles for the drop label|`{}`
/// `--vaadin-upload-drop-label-dragover`|styles for the drop label when overing the component with files|`{}`
/// `--vaadin-upload-drop-label-icon`|styles for the drop icon|`{}`
/// `--vaadin-upload-file-list`|styles for the file list|`{}`
/// `--vaadin-upload-buttons`|styles for the buttons container|`{}`
/// `--vaadin-upload-button`|styles for the upload button|`{}`
@CustomElementProxy('vaadin-upload')
class VaadinUpload extends HtmlElement with CustomElementProxyMixin, PolymerBase {
  VaadinUpload.created() : super.created();
  factory VaadinUpload() => new Element.tag('vaadin-upload');

  /// Specifies the types of files that the server accepts.
  /// Syntax: file_extension|audio/*|video/*|image/*|media_type
  String get accept => jsElement[r'accept'];
  set accept(String value) { jsElement[r'accept'] = value; }

  /// TODO: don't expose this property, toggleAttribute instead.
  bool get dragover => jsElement[r'dragover'];
  set dragover(bool value) { jsElement[r'dragover'] = value; }

  /// TODO: make this private in a separate PR, we dont want users modifying the array.
  List get files => jsElement[r'files'];
  set files(List value) { jsElement[r'files'] = (value != null && value is! JsArray) ? new JsObject.jsify(value) : value;}

  /// Key-Value map to send to the server.
  get headers => jsElement[r'headers'];
  set headers(value) { jsElement[r'headers'] = (value is Map || (value is Iterable && value is! JsArray)) ? new JsObject.jsify(value) : value;}

  /// Specifies the maximum file size allowed to upload. Default is
  /// unlimited.
  num get maxFileSize => jsElement[r'maxFileSize'];
  set maxFileSize(num value) { jsElement[r'maxFileSize'] = value; }

  /// Limit of files to upload, by default it is unlimited. If the value is
  /// one, nomultiple is true.
  num get maxFiles => jsElement[r'maxFiles'];
  set maxFiles(num value) { jsElement[r'maxFiles'] = value; }

  /// HTTP Method used to send the files.
  String get method => jsElement[r'method'];
  set method(String value) { jsElement[r'method'] = value; }

  /// Define whether the element supports drop files on it for uploading.
  /// By default it's enabled in desktop and disabled in touch devices
  /// because almost mobile devices do not support drag events.
  bool get nodrop => jsElement[r'nodrop'];
  set nodrop(bool value) { jsElement[r'nodrop'] = value; }

  /// Specifies whether the file selection popup is configured to select
  /// multiple files.
  bool get nomultiple => jsElement[r'nomultiple'];
  set nomultiple(bool value) { jsElement[r'nomultiple'] = value; }

  /// Specifies if the cancel-all button is visible.
  bool get showCancelAll => jsElement[r'showCancelAll'];
  set showCancelAll(bool value) { jsElement[r'showCancelAll'] = value; }

  /// Server URL.
  String get target => jsElement[r'target'];
  set target(String value) { jsElement[r'target'] = value; }

  /// Max time for the upload process, if exceeded XHR will be aborted.
  num get timeout => jsElement[r'timeout'];
  set timeout(num value) { jsElement[r'timeout'] = value; }
}
