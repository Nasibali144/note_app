import 'package:note_app/menu/home_menu.dart';
import 'package:note_app/services/lang_service.dart';
import 'package:note_app/services/note_service.dart';

void main() async {
  MyApp(
    home: HomeMenu(),
    locale: Language.ru,
    routes: {
      HomeMenu.id: HomeMenu(),
    },
  );
}
