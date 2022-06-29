import 'package:flutter/material.dart';
import 'package:howstheweather/services/location_search_delegate.dart';
import 'package:howstheweather/services/weather_body.dart';
import 'package:howstheweather/utilities/exclusion_settings.dart';
import 'package:howstheweather/utilities/openweather_api_handler.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MainWeather extends StatefulWidget{
  const MainWeather({Key? key}) : super(key: key);

  @override
  MainWeatherState createState() => MainWeatherState();
}

class MainWeatherState extends State<MainWeather>{

  String title = 'Tap to search a place';

  WeatherBodyBuilder builder = WeatherBodyBuilder();

  OneCallWeatherRequest? ocrInstance;

  @override
  Widget build(BuildContext context) {

    init();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        //InkWell or GestureDetector lets you have a onTap option on any type of Widget
        title: InkWell(
          onTap: (){
            showSearch(
              context: context,
              delegate: LocationSearchDelegate()
            );
          },
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey),
            //Centre the whole title so that the whole AppBar is clickable, else only the text is clickable
            child: Center(
              child: Text(
                title,
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: FutureBuilder(
        future: ocrInstance?.processRequest(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              return Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20),
                child: LoadingAnimationWidget.staggeredDotsWave(color: Colors.black, size: 50),
              );
            default:
              builder.oneWeather = snapshot.data;
              return builder.build();
          }
        },
      ),
    );
  }

  void init() async{
    Map? navigatorData = {};
    navigatorData = ModalRoute.of(context) == null ? {} : ModalRoute.of(context)?.settings.arguments as Map?;
    if(!(navigatorData == null && navigatorData?['locationObj'] == null)){
      builder.location = navigatorData?['locationObj'];
      if(builder.location != null){
        ocrInstance = OneCallWeatherRequest(lat: builder.location?.lat?.toString(), lon: builder.location?.lon?.toString(), exclude: Exclusions.exclude(alerts: true, minutely: true));
        title = '${builder.location?.name}, ${builder.location?.country}';
      }else{
        title = 'Tap to search a place';
        ocrInstance = null;
      }
    }
  }
  
}