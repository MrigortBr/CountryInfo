import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  final String text;
  final double size;
  final Color color;
  final String font;
  const TextWidget(
      {super.key,
      required this.text,
      required this.size,
      required this.color,
      required this.font});

  @override
  TextWidgetState createState() => TextWidgetState();
}

class TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        widget.text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: widget.color,
          fontFamily: widget.font,
          fontSize: widget.size,
        ),
      ),
    );
  }
}
