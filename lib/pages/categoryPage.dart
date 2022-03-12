import 'package:flutter/material.dart';
import 'package:traveller/models/allPlacesData.dart';
import 'package:traveller/widgets/categoryDetailsWidget.dart';


class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Padding(padding: EdgeInsets.all(16.0),
          child: Container(
            //vertical list of all places that are bookmarked
            child:ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: AllData().allPlacesData.map((e){
                return buildAllPlacesData(
                  e['placeName'],
                  e['imageUrl'],
                  e['rating'],
                  e['category'],
                );
              }).toList(),
            ),



          ),
        ),
      ),
    );

  }


  Widget buildAllPlacesData(placeName, imageUrl, rating, category) {
    return CategoryData(
      placeName: placeName,
      imageUrl: imageUrl,
      rating: rating,
      category: category,);
  }
}
