import 'package:note_app/services/data_service.dart';

enum Language {en, ru, uz}

class LangService {
  // field
  static Language _language = Language.en;
  static final DataService _dataService = DataService();

  static Future<void> init() async {
    var result = await _dataService.readData(key: "language");
    if(result != null) {
      _language = _stringToLanguage(result);
    }
  }

  // setter
  static set language(Language language) {
    _language = language;
    _dataService.storeData(key: "language", value: _language.name);
  }

  // getter
  static Language get language => _language;


  static Language _stringToLanguage(String lang) {
    switch(lang) {
      case "en" : return Language.en;
      case "uz" : return Language.uz;
      case "ru" : return Language.ru;
      default: return Language.uz;
    }
  }
}