import 'package:country_info/components/theme_switch.dart';
import 'package:country_info/utils/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const CountryBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: AppController.instance.themeNotifier,
        builder: (context, value, child) {
          return AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0, // Remove a sombra
            leading: IconButton(
              icon: SvgPicture.asset(
                "assets/images/chevron.svg",
                color: value["colorChevronAndTitle"],
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            centerTitle: true, // Centraliza o título
            actions: const [
              ThemeSwitch(), // Coloca o ThemeSwitch no lado direito
            ],
          );
        });
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
