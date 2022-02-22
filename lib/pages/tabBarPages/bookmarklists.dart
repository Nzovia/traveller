import 'package:flutter/material.dart';
import 'package:traveller/models/savedplaces.dart';
import 'package:traveller/widgets/savedplace_widget.dart';

class BookmarkLists extends StatefulWidget {
  const BookmarkLists({Key? key}) : super(key: key);

  @override
  _BookmarkListsState createState() => _BookmarkListsState();
}

class _BookmarkListsState extends State<BookmarkLists> {
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
            children: savedPlaces().savedplaces.map((e){
              return buildSavedPlace(
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

  Widget buildSavedPlace(placeName,imageUrl, rating, category) {
    return SavedPlacesWidget(
      placeName: placeName,
      imageUrl: imageUrl,
      rating: rating,
      category: category,);
  }
}
