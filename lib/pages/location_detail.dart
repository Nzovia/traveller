import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceDetails extends StatefulWidget {
  const PlaceDetails({Key? key}) : super(key: key);

  @override
  _PlaceDetailsState createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {

  //declarations or maps variables
  static const _initialCameraPosition = CameraPosition(
  target: LatLng(-1.286389, 36.817223),
  zoom: 11.0);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
       child: GoogleMap(
            myLocationButtonEnabled: false,
            zoomControlsEnabled: true,
            initialCameraPosition: _initialCameraPosition),
      )
    );

  }
}
