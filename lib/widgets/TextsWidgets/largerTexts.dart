
import 'package:flutter/material.dart';

class LargerTexts extends StatelessWidget {

  //text properties
  final String typedText;
  final Color textColor;

  const LargerTexts({Key? key,
    required this.typedText,
    required this.textColor}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(typedText,
        style: TextStyle( fontWeight: FontWeight.w500, fontSize: 18, color: textColor),
        
      ),
    );
  }
}
