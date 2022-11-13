class WeatherModel{
   String cityName;
   String date;
   String icon;
   double temp;
   double maxTemp;
   double minTemp;
   String weatherStateName;
   WeatherModel({
     required this.cityName,
     required this.date,
     required this.icon,
     required this.temp,
     required this.maxTemp,
     required this.minTemp,
     required this.weatherStateName,
   });

factory WeatherModel.fromJson(Map <String,dynamic>data){
  var jsonData=data['forecast']['forecastday'][0]['day'];
  return WeatherModel(
      cityName: data['location']['name'],
      date: data['location']['localtime'],
      icon: data['current']['condition']['icon'],
      temp: jsonData['temp_c'],
      maxTemp: jsonData['maxtemp_c'],
      minTemp: jsonData['mintemp_c'],
      weatherStateName: jsonData['condition']['text'],
  );

}

}