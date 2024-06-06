import 'package:country_info/components/space_widget.dart';
import 'package:country_info/components/text_widget.dart';
import 'package:country_info/utils/app_controller.dart';
import 'package:country_info/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryInfoWidget extends StatefulWidget {
  const CountryInfoWidget({super.key});

  @override
  CountryInfoWidgetState createState() => CountryInfoWidgetState();
}

class CountryInfoWidgetState extends State<CountryInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: AppController.instance.themeNotifier,
        builder: (context, value, child) {
          return SizedBox(
            width: MediaQuery.of(context).size.width * 0.85,
            child: Column(
              children: [
                Row(children: [
                  SvgPicture.asset(
                    icons["coin"] ?? "assets/images/chevron.svg",
                    color: AppController
                        .instance.themeNotifier.value["colorInputText"],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.01),
                    child: TextWidget(
                        text: AppController.instance.country.value?.money ?? "",
                        size: 16,
                        color: AppController.instance.themeNotifier
                                .value["colorInputText"] ??
                            Colors.black,
                        font: "Sen"),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.01),
                    child: TextWidget(
                        text: AppController.instance.country.value?.continent ??
                            "",
                        size: 16,
                        color: AppController.instance.themeNotifier
                                .value["colorInputText"] ??
                            Colors.black,
                        font: "Sen"),
                  ),
                  SvgPicture.asset(
                    icons["earth"] ?? "assets/images/chevron.svg",
                    color: AppController
                        .instance.themeNotifier.value["colorInputText"],
                  ),
                ]),
                const SpaceWidget(width: 100, heigth: 2),
                Row(children: [
                  SvgPicture.asset(
                    icons["size"] ?? "assets/images/chevron.svg",
                    color: AppController
                        .instance.themeNotifier.value["colorInputText"],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.01),
                    child: TextWidget(
                        text: AppController.instance.country.value?.size ?? "",
                        size: 16,
                        color: AppController.instance.themeNotifier
                                .value["colorInputText"] ??
                            Colors.black,
                        font: "Sen"),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.01),
                    child: TextWidget(
                        text: AppController.instance.country.value?.language ??
                            "",
                        size: 16,
                        color: AppController.instance.themeNotifier
                                .value["colorInputText"] ??
                            Colors.black,
                        font: "Sen"),
                  ),
                  SvgPicture.asset(
                    icons["translate"] ?? "assets/images/chevron.svg",
                    color: AppController
                        .instance.themeNotifier.value["colorInputText"],
                  ),
                ]),
                const SpaceWidget(width: 100, heigth: 2),
                Row(children: [
                  SvgPicture.asset(
                    icons["people"] ?? "assets/images/chevron.svg",
                    color: AppController
                        .instance.themeNotifier.value["colorInputText"],
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.01),
                    child: TextWidget(
                        text:
                            AppController.instance.country.value?.population ??
                                "",
                        size: 16,
                        color: AppController.instance.themeNotifier
                                .value["colorInputText"] ??
                            Colors.black,
                        font: "Sen"),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.01),
                    child: TextWidget(
                        text:
                            AppController.instance.country.value?.capital ?? "",
                        size: 16,
                        color: AppController.instance.themeNotifier
                                .value["colorInputText"] ??
                            Colors.black,
                        font: "Sen"),
                  ),
                  SvgPicture.asset(
                    icons["center"] ?? "assets/images/chevron.svg",
                    color: AppController
                        .instance.themeNotifier.value["colorInputText"],
                  ),
                ]),
                const SpaceWidget(width: 100, heigth: 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      icons["direction"] ?? "assets/images/chevron.svg",
                      color: AppController
                          .instance.themeNotifier.value["colorInputText"],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.01),
                      child: TextWidget(
                          text:
                              AppController.instance.country.value?.coord ?? "",
                          size: 16,
                          color: AppController.instance.themeNotifier
                                  .value["colorInputText"] ??
                              Colors.black,
                          font: "Sen"),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
