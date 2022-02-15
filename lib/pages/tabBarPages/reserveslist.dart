import 'package:flutter/material.dart';

class ReservesList extends StatefulWidget {
  const ReservesList({Key? key}) : super(key: key);

  @override
  _ReservesListState createState() => _ReservesListState();
}

class _ReservesListState extends State<ReservesList> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Reserves Lists", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),),
    );
  }
}
