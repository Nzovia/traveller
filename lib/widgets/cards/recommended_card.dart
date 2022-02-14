import 'package:flutter/material.dart';
import 'package:traveller/models/recommended_data.dart';

Widget buildLargeCard(var recommendedImage) => Padding(
    padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 8.0),
        child:ClipRRect(
          borderRadius: BorderRadius.circular(18.0),
          child: Card(
            child: Container(
              height: 280,
              width: 210,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(recommendedImage),
                fit: BoxFit.cover,
              )),

              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.bottomRight,
                      child:Icon(Icons.bookmark)
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Waduk Wonorejo"
                    ),
                  )


                ],
              ),
            ),
          ),
        ),

);
