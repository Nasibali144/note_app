import 'dart:io';
import 'package:note_app/services/ext_service.dart';
import 'package:note_app/models/menu_model.dart';
import 'package:note_app/services/file_service.dart';
import 'package:note_app/services/io_service.dart';

class AllNotesMenu extends Menu {
  static const String id = "all_notes_menu";

  Future<void> viewNoteList() async {
    FileService fileService = FileService();
    await fileService.init();
    List<FileSystemEntity> files = fileService.directory.listSync();
    if(files.isNotEmpty) {
      for(int i = 0; i < files.length; i++) {
        writeln("${i + 1}. ${files[i].path.substring(files[0].path.lastIndexOf("\\") + 1)}");
      }

      writeln("I. " + "number_note".tr);
      writeln("II. " + "delete_all".tr);
      writeln("III. " + "delete_selected".tr);
    } else {
      //
    }
  }

  @override
  Future<void> build() async {
    await viewNoteList();
  }

}