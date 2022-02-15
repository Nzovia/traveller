import 'package:flutter/material.dart';

Widget buildSavedPlace(
        var placeName, var placeImage, var rating, var category) =>
    Padding(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                height: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(placeImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                  Text(
                    placeName,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                  const Icon(
                    Icons.more_vert,
                    size: 20,
                    color: Colors.black,
                  ),
                ])),
            Row(
              children: [
                RichText(
                    text: TextSpan(children: [
                  const WidgetSpan(
                    child: Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 18,
                    ),
                  ),

                  TextSpan(
                      text: rating,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      )),
                ])),
                const SizedBox(width: 12.0,),
                RichText(
                    text: TextSpan(children: [
                      const WidgetSpan(
                        child: Icon(
                          Icons.category,
                          color: Colors.greenAccent,
                          size: 18,
                        ),
                      ),

                      TextSpan(
                          text: category,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          )),
                    ])),
              ],
            )
          ],
        ),
      ),
    );
