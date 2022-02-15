import 'package:flutter/material.dart';

class UserBookmarks extends StatefulWidget {
  const UserBookmarks({Key? key}) : super(key: key);

  @override
  _UserBookmarksState createState() => _UserBookmarksState();
}

class _UserBookmarksState extends State<UserBookmarks> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Book Details",
        style: TextStyle(fontSize: 36,
            fontWeight: FontWeight.w500),
      ),

    );
  }
}
