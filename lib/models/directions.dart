import 'package:flutter/foundation.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//our directions model
class Directions {
  final LatLngBounds bounds;  //allows us to center the camera between the origin and destination
  final List<PointLatLng> polylinePoints; //helps us draw our polylines
  final String totalDistance; //
  final String totalDuration;

//add constructor
  const Directions(
      {required this.bounds,
      required this.polylinePoints,
      required this.totalDistance,
      required this.totalDuration});
  
  //our factory constructor will take in maps string
factory Directions.fromMap(
    //constructor takes in map string
    Map <String, dynamic> map
    ){
  
  //check if route is not available
  // if((map['routes'] as List).isEmpty) {
  //   return null;
  // }
  
  //Get route information
  final data = Map<String, dynamic> .from(map['routes'][0]);

  //Bounds
  final northeast = data ['bounds']['northeast'];
  final southWest = data  ['bounds']['southwest'];
  final bounds = LatLngBounds(
      southwest: LatLng(southWest['lat'], southWest['lng']),
      northeast: LatLng(northeast['lat'], northeast['lng']),
  );

  //Distance and Duration
  String distance =' ';
  String duration = ' ';

  if((data['legs'] as List). isNotEmpty){
    final leg = data['legs'][0];
    distance = leg ['distance']['text'];
    duration = leg ['duration']['text'];

  }

  return Directions(bounds: bounds,
      polylinePoints:
      PolylinePoints().decodePolyline(data['overview_polyline']['points']), // here we use polylinePoint package to decode
      // the overview polyline passed back in the json
      totalDistance: distance,
      totalDuration: duration);
}
}
