import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traveller/widgets/buttonWidget.dart';

class CategoryData extends StatelessWidget {
  final String placeName, rating, category, imageUrl;
  const CategoryData({Key? key,
    required this.placeName,
    required this.rating,
    required this.category,
    required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 8.0),
        child: Container(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
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
                        GestureDetector(
                          onTap: (){
                            Get.bottomSheet(
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(35.0),
                                  topLeft: Radius.circular(35.0),
                                ),
                                child:Container(
                                    color: Colors.white,
                                    height: 150,
                                    child: Padding(padding: const EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
                                        child:Column(
                                          children:  [
                                            const SizedBox(
                                              height: 16,
                                              child:ListTile(
                                                leading: Icon(Icons.share, size: 18,),
                                                title: Text("Share with others",
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                //onTap: () =>{},
                                              ),
                                            ),
                                            const SizedBox(height: 12.0,),
                                            const SizedBox(
                                              height: 16,
                                              child:ListTile(
                                                leading: Icon(Icons.star_rate, size: 18,),
                                                title: Text("rate the destination", style: TextStyle(
                                                  fontSize: 14.0,
                                                ),
                                                ),
                                                //onTap: () =>{},
                                              ),
                                            ),
                                            const SizedBox(height: 12.0,),
                                            const SizedBox(
                                              height: 16,
                                              child:ListTile(
                                                leading: Icon(Icons.delete_forever, size: 18,),
                                                title: Text("i don't want to see this", style: TextStyle(
                                                  fontSize: 14.0,
                                                ),
                                                ),
                                                //onTap: () =>{},
                                              ),
                                            ),
                                            const SizedBox(height: 16.0,),

                                            ButtonTheme(
                                              minWidth: 280.0,
                                              child: ButtonWidget(buttonText: 'Cancel',
                                                onPressed: () {  },
                                                shapeBorder: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                ),
                                                buttonColor: Colors.white,
                                              ),)
                                          ],
                                        )
                                    )

                                ),
                              ),
                              isDismissible: true,
                              elevation: 1.0,
                              enableDrag: true,
                            );
                            //myBottomSheet(context);
                          },
                          child:const Icon(
                            Icons.more_vert,
                            size: 20,
                            color: Colors.black,
                          ),
                        )
                      ])),
              const SizedBox(height: 8.0,),
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
                            Icons.info,
                            color: Colors.blueGrey,
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
      ),




    );
  }
}



