import 'package:country_info/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Routes.getRoutes(),
      initialRoute: "/home",
      debugShowCheckedModeBanner: false,
    );
  }
}
