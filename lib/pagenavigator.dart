import 'package:flutter/material.dart';
import 'package:traveller/pages/location_detail.dart';
import 'package:traveller/pages/userAccount.dart';
import 'pages/bookmarks.dart';
import 'pages/landingpage.dart';

class PageNavigator extends StatefulWidget {
  const PageNavigator({Key? key}) : super(key: key);

  @override
  _PageNavigatorState createState() => _PageNavigatorState();
}

class _PageNavigatorState extends State<PageNavigator> {

  //declarations for the bottom navigator
  int currentIndex = 0; // forindexing the selected item
  List navigatedScreen = [
    const HomePage(),
    const PlaceDetails(),
    const UserBookmarks(),
    const UserDetails(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigatedScreen[currentIndex],
      //bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon:Icon(Icons.location_on),
            label: 'Location',
          ),
          BottomNavigationBarItem(icon:Icon(Icons.bookmark),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(icon:Icon(Icons.person),
            label: 'Profile',
          ),
        ],

        //other properties for the bottom navBar
        //type: BottomNavigationBarType.fixed,
        currentIndex:currentIndex,
        selectedItemColor:Colors.blue,
        unselectedItemColor: Colors.grey,
        //iconSize: 20,
        selectedFontSize: 16,
        onTap: (index) => setState(() => currentIndex = index),

      ),
    );
  }
}
