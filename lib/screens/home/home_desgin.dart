import 'package:flutter/material.dart';
import 'package:weather_info/models/weather_model.dart';

class HomeDesign extends StatelessWidget{
  WeatherModel weatherModel;
  HomeDesign({required this.weatherModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Text(weatherModel.cityName,style: const TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          const SizedBox(height: 15,),
          Text(weatherModel.date,style: const TextStyle(fontSize: 24),),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(weatherModel.icon),
              Text('${weatherModel.temp.toInt()}',style: const TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
              Column(
                children: [
                  Text("Max Temp:${weatherModel.maxTemp..toInt()}",style: const TextStyle(fontSize: 22),),
                  Text("Max Temp:${weatherModel.maxTemp.toInt()}",style: const TextStyle(fontSize: 22),),


                ],
              ),

            ],
          ),
          SizedBox(height: 30,),
          Text("Clear",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),



        ],
      ),

    );
  }
}