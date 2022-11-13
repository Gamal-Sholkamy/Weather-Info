import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_info/models/weather_model.dart';
import '../end_points/end_points.dart';
class WeatherService{
Future<WeatherModel> getWeather({required String areaName})async{
  Uri url=Uri.parse("$baseURL/forecast.json?key=$apiKey&q=$areaName&days=1&aqi=no&alerts=no");
  http.Response response=await http.get(url);
  Map<String,dynamic> data=jsonDecode(response.body);
  WeatherModel weatherModel=WeatherModel.fromJson(data);
  return weatherModel;
}

}