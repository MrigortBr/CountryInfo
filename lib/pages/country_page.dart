import 'package:country_info/components/countryPage/country_flag_widget.dart';
import 'package:country_info/components/countryPage/country_appbar_widget.dart';
import 'package:country_info/components/background_pages_widget.dart';
import 'package:country_info/components/countryPage/country_info_widget.dart';
import 'package:country_info/components/space_widget.dart';
import 'package:country_info/components/text_widget.dart';
import 'package:country_info/utils/app_controller.dart';
import 'package:flutter/material.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CountryPageState();
  }
}

class CountryPageState extends State<CountryPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundPages(),
        Scaffold(
          backgroundColor:
              AppController.instance.themeNotifier.value["backgroundAppBar"],
          body: Column(
            children: [
              const SpaceWidget(width: 100, heigth: 5),
              FlagImage(
                imageUrl: AppController.instance.country.value?.urlImage ?? "",
                width: 90,
                align: Alignment.center,
              ),
              const SpaceWidget(width: 100, heigth: 5),
              ValueListenableBuilder(
                valueListenable: AppController.instance.themeNotifier,
                builder: (context, value, child) {
                  return TextWidget(
                    text: AppController.instance.country.value?.name ?? "",
                    size: 24,
                    color: AppController
                            .instance.themeNotifier.value["colorInputText"] ??
                        Colors.black,
                    font: "Sen",
                  );
                },
              ),
              ValueListenableBuilder(
                valueListenable: AppController.instance.themeNotifier,
                builder: (context, value, child) {
                  return TextWidget(
                    text: AppController.instance.country.value?.fullName ?? "",
                    size: 16,
                    color: AppController
                            .instance.themeNotifier.value["colorInputText"] ??
                        Colors.black,
                    font: "Sen",
                  );
                },
              ),
              const SpaceWidget(width: 100, heigth: 5),
              const CountryInfoWidget()
            ],
          ),
          appBar: const CountryBarWidget(),
        )
      ],
    );
  }
}
