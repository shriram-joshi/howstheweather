import 'package:flutter/material.dart';

class MainWeatherWidget {
  late Widget mainWeather;

  String weatherDesc, iconCode;
  num feelsLikeTemp, currentTemp;

  final BoxDecoration _bigBox = BoxDecoration(
    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 10, offset: Offset.fromDirection(1, 5))],
    color: Colors.grey[300]?.withOpacity(0.5),
    borderRadius: BorderRadius.circular(30),
  );

  MainWeatherWidget.build({required this.weatherDesc, required this. feelsLikeTemp, required this.currentTemp, required this.iconCode}){
    mainWeather = Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: _bigBox,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Weather description
                Text(
                  weatherDesc.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                // Weather icon
                FadeInImage(
                    height: 50,
                    width: 50,
                    placeholder: const AssetImage('assets/raining.gif'),
                    image: NetworkImage('http://openweathermap.org/img/wn/$iconCode.png')
                ),
                // Current temp
                Text(
                  currentTemp == -300 ? 'Unavailable' : '${currentTemp.round()}°C',
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                  textAlign: TextAlign.center,
                ),
                // Feels like temp
                Text(
                  feelsLikeTemp == -300 ? 'Unavailable' : 'Feels like ${feelsLikeTemp.round()}°C',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                )
              ]
          ),
        ),
      ),
    );
  }
}