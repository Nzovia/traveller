import 'package:flutter/material.dart';
import 'package:traveller/pages/tabBarPages/reserveslist.dart';
import 'package:traveller/pages/tabBarPages/visitedlist.dart';
import 'package:traveller/widgets/TextsWidgets/largerTexts.dart';

import 'tabBarPages/bookmarklists.dart';
import 'tabBarPages/labeledbookmark.dart';

class UserBookmarks extends StatefulWidget {
  const UserBookmarks({Key? key}) : super(key: key);

  @override
  _UserBookmarksState createState() => _UserBookmarksState();
}

class _UserBookmarksState extends State<UserBookmarks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1.0,
            title: const LargerTexts(
              typedText: "Saved Place",
              textColor: Colors.black,
            ),
            actions: const <Widget>[
              Icon(
                Icons.more_vert,
                color: Colors.black,
                size: 18.0,
              )
            ],
            bottom: const TabBar(
                unselectedLabelColor: Colors.black45,
                labelColor: Colors.blue,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
              Tab(
                text: "Lists",
              ),
              Tab(
                text: "Labeled",
              ),
              Tab(
                text: "Reserves",
              ),
              Tab(
                text: "Visited",
              ),
            ]),
          ),
          body: const TabBarView(
            children: [
              BookmarkLists(),
              LabelledBookmarks(),
              ReservesList(),
              VisitedList(),
            ],
          )
        ),
      ),
    );
  }
}
