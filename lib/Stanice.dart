import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Map with ATMs'),
        ),
        body: CustomMap(),
      ),
    );
  }
}

class CustomMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(51.5, -0.09), // Initial map center
        zoom: 13.0, // Initial zoom level
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: ['a', 'b', 'c'],
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 45.0,
              height: 45.0,
              point: LatLng(51.5, -0.09), // ATM coordinates
              builder: (ctx) => Container(
                child: Icon(
                  Icons.local_atm, // Use a custom ATM icon
                  color: Colors.green,
                  size: 35.0,
                ),
              ),
            ),
            // Add more markers for other ATMs or points of interest
          ],
        ),
      ],
    );
  }
}
wann