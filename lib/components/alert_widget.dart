import 'package:country_info/utils/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAlert extends StatefulWidget {
  final String message;
  final bool isVisible;

  const CustomAlert({
    super.key,
    required this.message,
    required this.isVisible,
  });

  @override
  _CustomAlertState createState() => _CustomAlertState();
}

class _CustomAlertState extends State<CustomAlert> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {AppController.instance.haveError.value = false},
      child: AnimatedOpacity(
        opacity: widget.isVisible ? 1.0 : 0.0,
        duration: const Duration(seconds: 1),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.1,
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.8,
            left: MediaQuery.of(context).size.width * 0.2,
          ),
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), // Define o raio das bordas
            color: Colors.red,
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/images/alert.svg",
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Pais não encontrado",
                  style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                    fontFamily: "Sen",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
