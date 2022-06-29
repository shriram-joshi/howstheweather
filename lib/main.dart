import 'package:flutter/material.dart';
import 'package:howstheweather/pages/main_weather.dart';
import 'package:howstheweather/pages/splash_screen.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => const SplashScreen(),
    '/MainWeather': (context) => const MainWeather(),
  },
));

