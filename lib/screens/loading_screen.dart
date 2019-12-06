import 'package:flutter/material.dart';

import '../services/location.dart';

import 'package:clima/services/networking.dart';

const apiKey = 'c0ea72293e7bba98fccec82d038faf3c';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocationData() async {
    Location theLocation = Location();

    await theLocation.getCurrentLocation();
    latitude = theLocation.latitude;
    longitude = theLocation.longitude;

NetworkHelper networkHelper = NetworkHelper(
    'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

var weatherData = await = networkHelper.getData();



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
