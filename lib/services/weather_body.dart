import 'package:flutter/material.dart';
import 'package:howstheweather/data%20models/geocoding_location.dart';
import 'package:howstheweather/data%20models/onecall/one_call_weather.dart';
import 'package:howstheweather/services/weather_body_elements/main_weather_widget.dart';
import 'package:howstheweather/services/weather_body_elements/miscellaneous_weather_info_widget.dart';

class WeatherBodyBuilder {
  OneCallWeather? oneWeather;
  GeocodingLocation? location;

  WeatherBodyBuilder({this.oneWeather, this.location});

  BoxDecoration bigBox = BoxDecoration(
    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 10, offset: Offset.fromDirection(1, 5))],
    color: Colors.grey[300]?.withOpacity(0.5),
    borderRadius: BorderRadius.circular(30),
  );
  BoxDecoration smallBox = BoxDecoration(
    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 10, offset: Offset.fromDirection(1, 5))],
    color: Colors.grey[300]?.withOpacity(0.5),
    borderRadius: BorderRadius.circular(20),
  );

  String sunrise = '', sunset = '';

  Widget build(){

    Widget body;

    if(oneWeather != null){
      body = Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/testmoodimage.png'),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          children: [
            const SizedBox(height: 30, width: 40),
            // Main Weather
            MainWeatherWidget.build(
              weatherDesc: oneWeather?.current?.weather![0].description ?? '',
              feelsLikeTemp: oneWeather?.current?.feelsLike ?? -300,
              currentTemp: oneWeather?.current?.temp ?? -300,
              iconCode: oneWeather?.current?.weather![0].icon ?? ''
            ).mainWeather,
            // Miscellaneous Info
            MiscWeatherInfoWidget.build(
              maxTemp: oneWeather?.daily![0].temp?.max ?? -300,
              minTemp: oneWeather?.daily![0].temp?.min ?? -300,
              uvi: oneWeather?.current?.uvi ?? -1,
              sunrise: oneWeather?.current?.sunrise ?? -1,
              sunset: oneWeather?.current?.sunset ?? -1,
              humidity: oneWeather?.current?.humidity ?? -1,
              windSpeed: oneWeather?.current?.windSpeed ?? -1,
              windDeg: oneWeather?.current?.windDeg ?? -1,
              visibilityKm: oneWeather?.current?.visibilityInKm() ?? -1
            ).miscWeatherInfo,
            // TODO: Horizontal hourly forecast widget
          ],
        ),
      );
    }else{
      body = Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(10),
        child: const Text(
          'Tap to search location or try to reload.',
          style: TextStyle(
            fontSize: 25,
            color: Colors.deepPurpleAccent,
            wordSpacing: 3,
          ),
        ),
      );
    }

    return body;
  }
}