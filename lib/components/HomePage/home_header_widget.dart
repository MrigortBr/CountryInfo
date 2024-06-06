import 'package:country_info/utils/app_controller.dart';
import 'package:country_info/components/text_widget.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({super.key});

  @override
  HomeHeaderState createState() => HomeHeaderState();
}

class HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Map<String, Color>>(
      valueListenable: AppController.instance.themeNotifier,
      builder: (context, themeNotifier, child) {
        return Column(children: [
          TextWidget(
            text: "Navegue",
            size: 64,
            color: themeNotifier["textHeaderColor"] ?? Colors.black,
            font: "Mali",
          ),
          TextWidget(
            text: "pelas",
            size: 40,
            color: themeNotifier["textHeaderColor"] ?? Colors.black,
            font: "Mali",
          ),
          TextWidget(
            text: "Noticias\nglobais",
            size: 48,
            color: themeNotifier["textHeaderColor"] ?? Colors.black,
            font: "Mali",
          )
        ]);
      },
    );
  }
}
