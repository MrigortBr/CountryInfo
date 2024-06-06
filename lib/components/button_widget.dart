import 'package:country_info/service/http.dart';
import 'package:country_info/utils/app_controller.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  ButtonWidgetState createState() => ButtonWidgetState();
}

class ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        width: constraints.maxWidth * 0.5,
        child: ElevatedButton(
          onPressed: () async {
            try {
              AppController.instance.country.value =
                  await fetchCountry(AppController.instance.textInput.value);
              Navigator.pushNamed(context, "/country");
            } catch (e) {
              AppController.instance.haveError.value = true;
              Future.delayed(const Duration(seconds: 5), () {
                AppController.instance.haveError.value = false;
              });
            }
            // Adicione a ação do botão aqui
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.blue),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.blue))),
            padding: WidgetStateProperty.all(const EdgeInsets.all(15)),
            shadowColor: WidgetStateProperty.all(Colors.black),
            elevation: WidgetStateProperty.all(5),
          ),
          child: const Text(
            'Buscar',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    });
  }
}
