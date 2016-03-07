@HtmlImport("demo.html")
library polymer_autonotify.demo;

import "package:polymer/polymer.dart";
import "package:web_components/web_components.dart" show HtmlImport;
import "package:polymer_elements/iron_flex_layout.dart";
import "package:custom_elements/iron_data_table.dart";
import "package:custom_elements/data_table_column.dart";
import "package:custom_elements/data_table_column_sort.dart";
import "package:custom_elements/iron_data_table_style.dart";
/*
import "package:custom_elements/paper_datatable.dart";
import "package:custom_elements/paper_datatable_column.dart";
*/
import "package:custom_elements/paper_date_picker.dart";
import "package:custom_elements/paper_time_picker.dart";
import "package:custom_elements/paper_date_picker_dialog_style.dart";
import "package:custom_elements/paper_chip.dart";
import "package:polymer_elements/paper_button.dart";
import "package:polymer_elements/paper_dialog.dart";
import "package:custom_elements/paper_date_picker_dialog_style.dart";
import "package:custom_elements/paper_divider.dart";


class Item extends JsProxy {
  @reflectable String page;
  @reflectable String title;

  Item({this.page, this.title});
}

@PolymerRegister("test-custom-elements")
class TestPolymerAutonotify extends PolymerElement {

  @property var myData/* = [
    new Item(page: "pag1", title: "tit1"),
    new Item(page: "pag2", title: "tit2"),
    new Item(page: "pag3", title: "tit3")
  ]*/ = null;

  @Property(notify: true) bool datePickerDialogOpened = false;

  PaperDialog get dlg1 => $["dlg1"];
  PaperDialog get dlg2 => $["dlg2"];

  @property var currentDate=new DateTime.now();
  @property var currentTime="11:44 PM";


  @reflectable
  void showDatePicker([_,__]) {
    set("datePickerDialogOpenend",true);
    dlg1.opened = true;
  }

  @reflectable
  void showTimePicker([_,__]) {
    set("timePickerDialogOpenend",true);
    dlg2.opened = true;
  }

  void attached() {

    set('myData', [
      new Item(page: "pag1", title: "tit1"),
      new Item(page: "pag2", title: "tit2"),
      new Item(page: "pag3", title: "tit3"),
      new Item(page: "pag4", title: "tit4"),
      new Item(page: "pag5", title: "tit5"),
      new Item(page: "pag6", title: "tit6"),
      new Item(page: "pag7", title: "tit7")
    ]);
  }


  TestPolymerAutonotify.created() : super.created();
}
