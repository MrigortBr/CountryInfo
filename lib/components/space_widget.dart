import 'package:flutter/material.dart';

class SpaceWidget extends StatelessWidget {
  const SpaceWidget({super.key, required this.width, required this.heigth});
  final int width;
  final int heigth;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * (heigth / 100),
      width: MediaQuery.of(context).size.width * (width / 100),
    );
  }
}
