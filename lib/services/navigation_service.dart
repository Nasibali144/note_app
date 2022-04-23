import 'package:note_app/models/menu_model.dart';
import 'package:note_app/services/note_service.dart';

class Navigator {
  static final List<Menu> _list = <Menu>[];

  static set initialValue(Menu menu) {
    _list.add(menu);
  }

  static _runMenu() {
    _list.last.build();
  }

  //hali bor
  static Menu? _findMenu(String id) {
    return MyApp.routeMenu[id];
  }

  static push(Menu menu) {
    _list.add(menu);
    _runMenu();
  }

  // hali bor
  static pushNamed(String id) {
    Menu menu = _findMenu(id)!;
    push(menu);
  }

  static String? pop({String? message}) {
    _list.removeLast();
    _runMenu();
    return message;
  }

  // hali bor
  static String popUntil() {
    return "";
  }
}