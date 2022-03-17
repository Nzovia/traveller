
import 'package:flutter/material.dart';
import 'package:traveller/widgets/TextsWidgets/inputTextWidget.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: const [
            EnterText(hintText: "enter valid email", labelText: "email"),
            SizedBox(height: 8.0,),
            EnterText(hintText: "enter firstName", labelText: "firstName"),
            SizedBox(height: 8.0,),
            EnterText(hintText: "enter lastName", labelText: "lastName"),
            SizedBox(height: 8.0,),
            EnterText(hintText: "create password", labelText: "password"),
            SizedBox(height: 8.0,),
            
          ],
        ),
        
      ),
      
    );
  }
}
