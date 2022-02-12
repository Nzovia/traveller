import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:traveller/widgets/TextsWidgets/largerTexts.dart';
import 'package:traveller/widgets/TextsWidgets/smallerTexts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       child: Padding(padding: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 16.0),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children:  [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child:Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                      child:const Icon(Icons.menu, size: 24, color: Colors.black,),
                    )

                  ),
                  const SizedBox(
                    width: 180,
                    height: 40,
                    child:TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        hintText: "Babarsari, YK",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                        prefixIcon: Icon(Icons.location_on, color: Colors.blue,),

                      ),
                    ),
                  ),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child:Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey,
                      child:const Icon(Icons.search, size: 24, color: Colors.black,),
                    )

                  ),

                ],

              ),

              const SizedBox(
                height: 18.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child:Container(
                  height: 150.0,
                  color: Colors.blue,
                    child: Center(
                      child: Column(
                        children: const [
                          SizedBox(height:16.0),
                          LargerTexts(typedText: "Let's Discover Around", textColor: Colors.white),
                          SizedBox(height:8.0),
                          SmallerTexts(typedText: 'Find the best place to visit', textColor: Colors.white,),
                          SizedBox(height: 8.0),
                          //ButtonWidget();


                        ],
                      ),
                )

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
