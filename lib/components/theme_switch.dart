import 'package:country_info/utils/app_controller.dart';
import 'package:flutter/material.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.isDarkThemeNotifier,
      builder: (context, isDarkTheme, child) {
        return Switch(
          value: isDarkTheme,
          onChanged: (value) {
            AppController.instance.switchTheme();
          },
        );
      },
    );
  }
}
