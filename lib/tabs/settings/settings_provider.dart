import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';
  /*  must put late coz in intilaize the value is unknown  */
  // late String backgroundImageName =
  //     themeMode == ThemeMode.light ? "default_bg" : "default_bg";
  String get backgroundImageName =>
      themeMode == ThemeMode.light ? "default_bg" : "dark_bg";

  void changeTheme(ThemeMode selectedTheme) {
    /* this for   bootun sheet to not coose dark twice and rebuld for no reason*/
    if (selectedTheme == themeMode) return;
    themeMode = selectedTheme;
    notifyListeners();
  }

  void changeLanguage(String selectedLanguage) {
    if (selectedLanguage == languageCode) return;

    languageCode = selectedLanguage;
    notifyListeners();
  }
}
