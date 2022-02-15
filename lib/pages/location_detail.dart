import 'package:flutter/material.dart';

class PlaceDetails extends StatefulWidget {
  const PlaceDetails({Key? key}) : super(key: key);

  @override
  _PlaceDetailsState createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Location Details",
        style: TextStyle(fontSize: 36,
            fontWeight: FontWeight.w500),
      ),

    );
  }
}
