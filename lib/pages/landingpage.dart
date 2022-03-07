import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:traveller/models/recommended_data.dart';
import 'package:traveller/widgets/TextsWidgets/largerTexts.dart';
import 'package:traveller/widgets/TextsWidgets/smallerTexts.dart';
import 'package:traveller/widgets/buttonWidget.dart';
import 'package:traveller/widgets/cards/categorycard.dart';
import 'package:traveller/widgets/cards/recommended_card.dart';
import 'package:traveller/widgets/navdrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey,
                        child:GestureDetector(
                          child: const Icon(
                            Icons.menu,
                            size: 24,
                            color: Colors.black,
                          ),
                          onTap: () => const NavDrawer(),
                        )

                      )),
                  const SizedBox(
                    width: 180,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        hintText: "Babarsari, YK",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        prefixIcon: Icon(
                          Icons.location_on,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey,
                        child: const Icon(
                          Icons.search,
                          size: 24,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),

              const SizedBox(
                height: 18.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child: Container(
                    height: 150.0,
                    color: Colors.blue,
                    child: Center(
                      child: Column(
                        children: [
                          const SizedBox(height: 16.0),
                          const LargerTexts(
                              typedText: "Let's Discover Around",
                              textColor: Colors.white),
                          const SizedBox(height: 8.0),
                          const SmallerTexts(
                            typedText: 'Find the best place to visit',
                            textColor: Colors.white,
                          ),
                          const SizedBox(height: 8.0),
                          ButtonTheme(
                            minWidth: 120.0,
                            child: ButtonWidget(buttonText: 'Start now',
                              onPressed: () {  },
                              shapeBorder: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              buttonColor: Colors.white,
                            ),)

                        ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child:
                LargerTexts(typedText: "Category", textColor: Colors.black),
              ),

              const SizedBox(
                height: 8.0,
              ),
              //Row to show categories
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CategoryCard(
                      category: "All",
                      categoryIcon: Icons.dashboard,
                      iconColor: Colors.blue),
                  CategoryCard(
                      category: "Hill",
                      categoryIcon: Icons.downhill_skiing,
                      iconColor: Colors.green),
                  CategoryCard(
                      category: "Beach",
                      categoryIcon: Icons.beach_access,
                      iconColor: Colors.orange),
                  CategoryCard(
                      category: "Hotel",
                      categoryIcon: Icons.hotel,
                      iconColor: Colors.lightBlue),
                  CategoryCard(
                      category: "Nature",
                      categoryIcon: Icons.tour,
                      iconColor: Colors.grey),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child:
                LargerTexts(typedText: "Recommended", textColor: Colors.black),
              ),
              const SizedBox(height: 8.0,),

              SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: recommendedData().recommended.map((e) {
                      return buildCard(
                        e['image'],
                        e['title'],
                      );
                    }).toList(),
                  )

              )//horizontal list of recommended places

            ],
          ),
        ),
      ),

    );
  }
}


