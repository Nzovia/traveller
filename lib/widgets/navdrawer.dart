import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child:Text("Actions")),
            ListTile(
              title: const Text("profile"),
              onTap:(){

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Settings"),
              onTap:(){

              },
            ),
            ListTile(
              title: const Text("LogOut"),
              onTap:(){

              },
            ),
          ],


        ),
      ),

    );
  }
}
