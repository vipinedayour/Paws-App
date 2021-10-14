import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MyMap extends StatefulWidget {
  const MyMap({Key? key}) : super(key: key);

  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
            markerId: MarkerId('id 1'),
            position: LatLng(22.5448131, 88.3403691),
            infoWindow: InfoWindow(title: 'Somewhere', snippet: 'good place')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Map',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(22.5448131, 88.3403691),
          zoom: 15,
        ),
        mapType: MapType.hybrid,
        myLocationEnabled: true,
        onMapCreated: _onMapCreated,
        markers: _markers,
      ),
    );
  }
}
