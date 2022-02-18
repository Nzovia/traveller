import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PlaceDetails extends StatefulWidget {
  const PlaceDetails({Key? key}) : super(key: key);

  @override
  _PlaceDetailsState createState() => _PlaceDetailsState();
}

class _PlaceDetailsState extends State<PlaceDetails> {
  //declarations or maps variables
  static const _initialCameraPosition =
      CameraPosition(target: LatLng(-1.286389, 36.817223), zoom: 11.0);

  //add a google map controller to hence actions (gestures and responses) on our map
  late GoogleMapController _googleMapController;

  //origin and destination marker declaration
   Marker? _origin;
   Marker? _destination;


  //dispose the controller on the dispose method
  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: const Text(
            "Choose Destination", style: TextStyle(color: Colors.blueGrey),
        ),
      ),
      //Padding(padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (controller) => _googleMapController = controller,

        //marker is a Google maps parameter
        markers: {
          if(_origin != null) _origin!,
          if(_destination != null) _destination!
        },

        //long pressed function to generate markers
        onLongPress: _addMarker,
      ),

      //floating action button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () => _googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(_initialCameraPosition),
        ),
        child: const Icon(Icons.center_focus_strong, color: Colors.grey,),
      ),
    );
  }

  void _addMarker(LatLng position) {
    if(_origin == null || (_origin != null && _destination != null)){
      //origin is not set OR Origin/Destination are both Set

      //call setState method to update the UI
      setState(() {
        _origin = Marker(
            markerId: const MarkerId('origin'),
        infoWindow: const InfoWindow(title: 'Origin'),
          icon:
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        position: position,
        );

        //Reset destination
        //_destination = null;
      });


    } else {
      //origin is already set, set destination
      setState(() {
        _destination = Marker(
            markerId: const MarkerId('destination'),
        infoWindow: const InfoWindow(title:  'Destination'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: position,
        );
      });
    }
  }
}
