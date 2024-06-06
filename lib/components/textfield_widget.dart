import 'package:country_info/utils/app_controller.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Map<String, Color>>(
      valueListenable: AppController.instance.themeNotifier,
      builder: (context, value, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth * 0.8,
              margin: const EdgeInsets.only(top: 50),
              child: TextField(
                onChanged: (text) =>
                    {AppController.instance.textInput.value = text},
                style: const TextStyle(fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppController.instance.themeNotifier
                                    .value["textHeaderColor"] ??
                                Colors.black)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppController.instance.themeNotifier
                                  .value["textHeaderColor"] ??
                              Colors.black),
                    ),
                    labelText: "Buscar Pais",
                    labelStyle: TextStyle(
                        color: AppController.instance.themeNotifier
                                .value["textHeaderColor"] ??
                            Colors.black)),
              ),
            );
          },
        );
      },
    );
  }
}
