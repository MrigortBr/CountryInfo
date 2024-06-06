import 'package:country_info/components/alert_widget.dart';
import 'package:country_info/components/background_pages_widget.dart';
import 'package:country_info/utils/app_controller.dart';
import 'package:country_info/components/button_widget.dart';
import 'package:country_info/components/HomePage/home_header_widget.dart';
import 'package:country_info/components/HomePage/home_appbar_widget.dart';
import 'package:country_info/components/textfield_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundPages(),
        Scaffold(
            backgroundColor:
                AppController.instance.themeNotifier.value["backgroundAppBar"],
            appBar: MyAppBar(),
            body: const Column(
              children: [HomeHeader(), MyTextField(), ButtonWidget()],
            )),
        ValueListenableBuilder<bool>(
          valueListenable: AppController.instance.haveError,
          builder: (context, value, child) {
            return CustomAlert(
              message: "Pais não encontrado",
              isVisible: AppController.instance.haveError.value,
            );
          },
        )
      ],
    );
  }
}
