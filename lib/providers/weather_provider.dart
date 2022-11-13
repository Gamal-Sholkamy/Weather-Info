import 'package:flutter/material.dart';
import 'package:weather_info/models/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? _weatherModel;
  set weatherModel (WeatherModel? weatherModel){
    _weatherModel=weatherModel;
    notifyListeners();
  }
  WeatherModel? get weatherModel=>_weatherModel;
}