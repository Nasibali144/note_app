import 'dart:io';
import 'package:note_app/models/menu_model.dart';
import 'package:note_app/services/io_service.dart';
import 'package:note_app/services/ext_service.dart';

class HomeMenu extends Menu{
  static const String id = "/home_menu";

  void selectFunction(String selectedMenu) {
    switch(selectedMenu) {
      case "I": {} break;
      case "II": {} break;
      case "III": {} break;
      case "IV": exit(0);
      default: {
        writeln("error".tr);
      }
    }
  }

  @override
  void build() {
      writeln("welcome".tr);
      writeln("I. " + "create_note".tr);
      writeln("II. " + "view_all_notes".tr);
      writeln("III. " + "settings".tr);
      writeln("IV. " + "exit".tr);
      String selectedMenu = read();
      selectFunction(selectedMenu);
  }
}