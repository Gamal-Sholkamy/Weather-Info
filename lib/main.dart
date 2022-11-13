import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_info/models/weather_model.dart';
import 'package:weather_info/providers/weather_provider.dart';
import 'package:weather_info/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    WeatherModel? model;
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return WeatherProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}


