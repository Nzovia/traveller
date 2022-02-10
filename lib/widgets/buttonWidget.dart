import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonText;
  final ShapeBorder shapeBorder;
  final VoidCallback onPressed;
  final Color buttonColor;

  const ButtonWidget({Key? key,
    required this.buttonText,
    required this.shapeBorder,
    required this.onPressed,
    required this.buttonColor, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: onPressed);
  }
}