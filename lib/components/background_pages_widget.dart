import 'package:country_info/utils/app_controller.dart';
import 'package:flutter/material.dart';

class BackgroundPages extends StatefulWidget {
  const BackgroundPages({super.key});

  @override
  BackgroundPagesState createState() => BackgroundPagesState();
}

class BackgroundPagesState extends State<BackgroundPages> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Map<String, Color>>(
        valueListenable: AppController.instance.themeNotifier,
        builder: (context, value, child) {
          return Stack(
            children: [
              Container(
                color: AppController
                    .instance.themeNotifier.value["backgroundHome"],
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  AppController.instance.backgroundNotifier.value,
                  fit: BoxFit.cover,
                ),
              )
            ],
          );
        });
  }
}
