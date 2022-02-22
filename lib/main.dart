import 'package:flutter/material.dart';
import 'package:traveller/pagenavigator.dart';
import 'package:get/get.dart';
void main() {
  //Get.put(DashboardController);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Traveller',darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // getPages: [
      //   GetPage(name: '/',page: ()=>const PageNavigator()),
      // ],
      home: const PageNavigator( ),
    );
  }
}

