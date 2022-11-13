import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_info/models/weather_model.dart';
import 'package:weather_info/providers/weather_provider.dart';
import 'package:weather_info/screens/search/search.dart';

import 'home_desgin.dart';

class HomeScreen extends StatelessWidget{
  WeatherModel? weatherModel;
  @override
  Widget build(BuildContext context) {
    weatherModel=Provider.of<WeatherProvider>(context).weatherModel;
   return Scaffold(
     appBar: AppBar(
       title: const Text("Weather",
         style: TextStyle(
           fontSize: 22,
         ),
       ),
       actions: [
         IconButton(
             onPressed: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)=>SearchScreen(),
                   ),
               );
             },
             icon: const Icon(Icons.search_outlined))
       ],
     ),
     body: weatherModel ==null? const Center(
       child: Text("There is no weather 🌨️🌩️😢 start searching Now🔍",
         textAlign: TextAlign.center,
         style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,),
       ),
     ):
         HomeDesign(weatherModel: weatherModel!,)

   );
  }
// Widget homeDesign(WeatherModel weatherModel){
//     return Container(
//       color: Colors.orange,
//       child:  Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children:  [
//           Text(weatherModel.cityName,style: const TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
//           const SizedBox(height: 15,),
//           Text(weatherModel.date,style: const TextStyle(fontSize: 24),),
//           const SizedBox(height: 30,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Image.asset(weatherModel.icon),
//               Text('${weatherModel.temp}',style: const TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
//               Column(
//                 children: [
//                   Text(weatherModel.maxTemp,style: const TextStyle(fontSize: 22),),
//                   Text(weatherModel.minTemp,style: const TextStyle(fontSize: 22),),
//
//
//                 ],
//               ),
//
//             ],
//           ),
//           SizedBox(height: 30,),
//           Text("Clear",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
//           SizedBox(height: 30,),
//
//
//
//         ],
//       ),
//
//     );
// }
}