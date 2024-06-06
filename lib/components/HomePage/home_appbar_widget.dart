// ignore_for_file: file_names

import 'package:country_info/components/theme_switch.dart';
import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({super.key})
      : super(
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
          title: const Align(
            alignment: Alignment.centerRight,
            child: ThemeSwitch(),
          ),
        );
}
