import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlagImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final Alignment align;
  const FlagImage(
      {super.key,
      required this.imageUrl,
      required this.width,
      required this.align});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: align,
        child: SvgPicture.network(
          imageUrl,
          width: MediaQuery.of(context).size.width * (width / 100),
        ));
  }
}
