import 'package:country_info/pages/country_page.dart';
import 'package:country_info/pages/home_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String home = '/home';
  static const String country = '/country';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomePage(),
      country: (context) => const CountryPage(),
    };
  }
}
