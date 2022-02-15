import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("User Details",
        style: TextStyle(fontSize: 36,
            fontWeight: FontWeight.w500),
      ),

    );
  }
}
