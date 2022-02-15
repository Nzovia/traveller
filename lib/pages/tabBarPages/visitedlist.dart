import 'package:flutter/material.dart';

class VisitedList extends StatefulWidget {
  const VisitedList({Key? key}) : super(key: key);

  @override
  _VisitedListState createState() => _VisitedListState();
}

class _VisitedListState extends State<VisitedList> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Visited Lists", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),),
    );
  }
}
