import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>{

  SplashScreenState(){
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, '/MainWeather');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/raining.gif'),
    );
  }
}