import 'package:flutter/material.dart';

Widget buildCard(var image, var title) => Padding(
  padding: const EdgeInsets.fromLTRB(0.0, 8.0, 8.0, 0.0),
  child: Stack(children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        height: 200,
        width: 140,
      ),
    ),
    Container(
      height: 200,
      width: 140,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FractionallySizedBox(
            //   widthFactor:0.58,
            //   child: FlatButton(
            //       onPressed: () {},
            //       color: Color(0x1AFFFFFF),
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(50.0),
            //           side: const BorderSide(color: Color(0x1AFFFFFF))),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: const <Widget>[
            //           Align(
            //             alignment: Alignment.centerLeft,
            //             child: Icon(
            //               Icons.location_on,
            //               color: Colors.white,
            //             ),
            //           ),
            //           Align(
            //             alignment: Alignment.center,
            //             child: Text(
            //               "Malang",
            //               style:
            //               TextStyle(color: Colors.white, fontSize: 16),
            //             ),
            //           ),
            //         ],
            //       )),
            // ),
            //
            // const SizedBox(
            //   height: 8,
            // ),
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    ),
  ]),
);



