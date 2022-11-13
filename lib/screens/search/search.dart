import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_info/models/weather_model.dart';
import 'package:weather_info/providers/weather_provider.dart';
import 'package:weather_info/services/weather_service.dart';

class SearchScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final cityController=TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children:  [
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: cityController,
              keyboardType: TextInputType.text,
              maxLines: 1,
              onFieldSubmitted: (value)async{
                WeatherService weatherService=WeatherService();
                print('hello1');
                WeatherModel model=await weatherService.getWeather(areaName: value);
                Provider.of<WeatherProvider>(context,listen: false).weatherModel=model;
                Navigator.pop(context);
                print('hello2');
              },
              decoration: InputDecoration(
                label: Text("City"),
                hintText: "Type a City to Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                fillColor: Colors.red,
                focusColor: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}