import 'package:note_app/models/menu_model.dart';
import 'package:note_app/services/lang_service.dart';

class MyApp {
  static Map<String, Menu> routeMenu = {};

  MyApp({required Menu home, required Language locale, required Map<String, Menu> routes}) {
    routeMenu = routes;
    LangService.language = locale;
    _runApp(home);
  }

  void _runApp(Menu menu) {
    while(true) {
      menu.build();
    }
  }
}