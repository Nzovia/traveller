import 'package:flutter/material.dart';

class LabelledBookmarks extends StatefulWidget {
  const LabelledBookmarks({Key? key}) : super(key: key);

  @override
  _LabelledBookmarksState createState() => _LabelledBookmarksState();
}

class _LabelledBookmarksState extends State<LabelledBookmarks> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Labelled Lists", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),),
    );
  }
}
