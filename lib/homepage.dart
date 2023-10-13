import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'constraints.dart' as k;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoaded = false;
  num? temp;
  num? pressure;
  num? humidity;
  num? cover;
  String cityname='';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Thursday,June,2019",
                style: TextStyle(fontSize: 20, color: Colors.white54),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
             cityname,
              style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "SCATTERED CLOUDS",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.cloud_outlined,
            size: 100,
            color: Colors.white,
          ),
          Text(
            "${temp?.toInt()}",
            style: const TextStyle(
              fontSize: 90,
              color: Colors.white,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "MAX",
                    style: TextStyle(fontSize: 15, color: Colors.white54),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "31",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  SizedBox(),
                  Text(
                    "MIN",
                    style: TextStyle(fontSize: 15, color: Colors.white54),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "29",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              )
            ],
          ),
          Divider(
            height: 50,
            color: Colors.white,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Thu,5PM",
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    Icon(
                      Icons.cloudy_snowing,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      "27",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      "Thu,8PM",
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    Icon(
                      Icons.cloud_off_rounded,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      "23",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      "Thu,11PM",
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    Icon(
                      Icons.cloud_off_rounded,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      "27",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      "Thu,5PM",
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    Icon(
                      Icons.cloudy_snowing,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      "27",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      "Thu,5PM",
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    Icon(
                      Icons.cloudy_snowing,
                      size: 20,
                      color: Colors.white,
                    ),
                    Text(
                      "27",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 50,
            color: Colors.white,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Wind Speed",
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "5.1 m/s",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Colors.white,
                  width: 37,
                  thickness: 5,
                  indent: 10,
                  endIndent: 10,
                ),
                Column(
                  children: [
                    Text(
                      "Sunrise",
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "5.1 m/s",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Colors.white,
                  width: 37,
                  thickness: 5,
                  indent: 10,
                  endIndent: 10,
                ),
                Column(
                  children: [
                    Text(
                      "Sunset",
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "5.1 m/s",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Colors.white,
                  width: 37,
                  thickness: 5,
                  indent: 10,
                  endIndent: 10,
                ),
                Column(
                  children: [
                    Text(
                      "humidity",
                      style: TextStyle(fontSize: 15, color: Colors.white54),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "5.1 m/s",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
      forceAndroidLocationManager: true,
    );
    if (position != null) {
      print('lat:${position.latitude},long:${position.longitude}');
      getCurrentCityWeather(position);
    } else {
      print('Data Unavailable');
    }
  }

  getCurrentCityWeather(Position pos) async {
    var url =
        '${k.domain}lat=${pos.latitude}&lon=${pos.longitude}&appid=${k.apiKey}';
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var data = response.body;
      var decodeData = jsonDecode(data);
      print(data);
      updateUI(decodeData);
      setState(() {
        isLoaded = true;
      });
    } else {
      print(response.statusCode);
    }
  }

  updateUI(var decodeData) {
    setState(() {
      if (decodeData == null) {
        temp = 0;
        pressure = 0;
        humidity = 0;
        cover = 0;
        cityname = "Not available";
      } else {
        temp = decodeData['main']['temp'] - 273;
        pressure = decodeData['main']['pressure'];
        humidity = decodeData['clouds']['all'];
        cityname = decodeData['name'];
      }
    });
  }
}
