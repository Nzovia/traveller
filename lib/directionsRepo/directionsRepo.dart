import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:traveller/models/directions.dart';

class DirectionsRepository{
  static const String _baseUrl =
      'https://www.google.com/maps/dir/?api=1&parameters';
  final Dio _dio;

  DirectionsRepository({required Dio dio}) : _dio = dio?? Dio();

  Future<Directions?> getDirections(
  {
  required LatLng origin,
    required LatLng destination,

})
async {
    final response = await _dio.get(
        _baseUrl,
      queryParameters: {
          'origin':'${origin.latitude}, ${origin.longitude}',
        'destination' : '${destination.latitude}, ${destination.latitude}',
        'key' : 'AIzaSyBedVS2qM06lkoKsTs6wBmk3XAYNkUhFxs',
      },
    );

    //evaluate whether the response successful
  if(response.statusCode == 200){
    return Directions.fromMap(response.data);
  }
  return null;

}
}