import 'package:note_app/menu/all_notes_menu.dart';
import 'package:note_app/menu/create_note_menu.dart';
import 'package:note_app/menu/home_menu.dart';
import 'package:note_app/services/data_service.dart';
import 'package:note_app/services/lang_service.dart';
import 'package:note_app/services/note_service.dart';

void main() async {

  MyApp(
    home: HomeMenu(),
    locale: await LangService.currentLanguage(),
    routes: {
      // key: value
      // /home_menu: HomeMenu()
      HomeMenu.id: HomeMenu(),
      CreateNoteMenu.id: CreateNoteMenu(),
      AllNotesMenu.id: AllNotesMenu(),
    },
  );
}
