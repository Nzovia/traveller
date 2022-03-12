
import 'package:flutter/material.dart';
import 'package:traveller/widgets/categoryDetailsWidget.dart';

class CategoryCard extends StatelessWidget {
  final String category;
  final IconData? categoryIcon;
  final Color iconColor;

  const CategoryCard({Key? key,
    required this.category,
    required this.categoryIcon,
    required this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 90,
      width: 65,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
            side: const BorderSide(width: 1, color: Colors.blue),
          ),
          child:Padding(padding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 5.0),
              child:Column(
                children: [
                  ClipOval(
                      child:Container(
                        height: 30,
                        width: 30,
                        color: iconColor,
                        child: Icon(categoryIcon,
                            size: 18,
                            color:Colors.white),
                      )

                  ),
                  Text(category,
                    style: const TextStyle(fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500), )
                ],
              )
          ),
        ),


    );
  }
}
