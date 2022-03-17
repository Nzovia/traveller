import 'package:flutter/material.dart';

class EnterText extends StatelessWidget {
  final String hintText;
  final String labelText;
  // final String enterText;
  const EnterText({Key? key,
       // required this.enterText,
       required this.hintText,
       required this.labelText}) :
        super(key: key,

      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            filled: true,
            fillColor: Colors.white,
            labelText: labelText,
            hintText: hintText,
            contentPadding: const EdgeInsets.fromLTRB(32,16,32,16),


          ),
        ),

      ),
    );
  }
}
