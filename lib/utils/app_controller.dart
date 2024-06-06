import 'package:country_info/service/country.dart';
import 'package:country_info/utils/theme.dart';
import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  ValueNotifier<bool> isDarkThemeNotifier = ValueNotifier<bool>(true);
  ValueNotifier<bool> haveError = ValueNotifier<bool>(false);

  ValueNotifier<Map<String, Color>> themeNotifier =
      ValueNotifier<Map<String, Color>>(themeDark);
  ValueNotifier<String> backgroundNotifier =
      ValueNotifier<String>(urlBackgroundDark);
  ValueNotifier<Country?> country = ValueNotifier<Country?>(null);
  ValueNotifier<String> textInput = ValueNotifier<String>("");

  void switchTheme() {
    isDarkThemeNotifier.value = !isDarkThemeNotifier.value;
    themeNotifier.value = isDarkThemeNotifier.value ? themeDark : themeWhite;
    backgroundNotifier.value =
        isDarkThemeNotifier.value ? urlBackgroundDark : urlBackgroundWhite;
    notifyListeners();
  }
}
