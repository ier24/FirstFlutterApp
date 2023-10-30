import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';

class GeoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Geolocation"),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        IconButton(
            onPressed: () {
              print("pressed");
            },
            icon: const FaIcon(FontAwesomeIcons.gamepad))
      ])),
    );
  }

  String _latitude = "NoData";
  String _longitude = "NoData";
  String _altitude = "NoData";
  String _distanceInMeters = "NoData";
  String _bearing = "NoData";

  Future<Position> getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return position;
  }
}
