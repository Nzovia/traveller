
import 'package:flutter/material.dart';

class SmallerTexts extends StatelessWidget {

  //text properties
  final String typedText;
  final Color textColor;

  const SmallerTexts({Key? key,
    required this.typedText,
    required this.textColor}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(typedText,
        style: TextStyle( fontWeight: FontWeight.w200, fontSize: 14, color: textColor),

      ),
    );
  }
}
