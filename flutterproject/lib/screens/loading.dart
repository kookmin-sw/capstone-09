import 'package:flutter/material.dart';
import 'package:flutterproject/data/my_location.dart' show MyLocation;
import 'package:flutterproject/data/network.dart';

const apiKey = '0d0cc1131b44cd6ea0027e60e69dc007';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  double latitude3;
  double longitude3;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //생성되면서 getLocation을 실행함
    getLocation();
  }

  void getLocation() async{
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    latitude3 = myLocation.latitude2;
    longitude3 = myLocation.longitude2;
    print(latitude3);
    print(longitude3);

    Network network = Network('https://api.openweathermap.org/data/2.5/weather'
        '?lat=$latitude3&lon=$longitude3&appid=$apiKey');

    var weatherData = await network.getJsonData();
    print(weatherData);    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: null,
          child: Text(
            'Get my location',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          color: Colors.blue,
        ),
      ),
    );
  }
}