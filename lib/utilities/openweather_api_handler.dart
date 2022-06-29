import 'dart:convert';
import 'package:howstheweather/data%20models/current_weather.dart';
import 'package:howstheweather/data%20models/onecall/one_call_weather.dart';
import 'package:howstheweather/utilities/exclusion_settings.dart';
import 'package:http/http.dart';
import 'package:howstheweather/data models/geocoding_location.dart';

abstract class OpenWeatherAPIRequest {
  final String _apiKey = '5ed4fa271a9d1bf3ad96084e04085ee6';
  final String _baseUrl = 'https://pro.openweathermap.org';
  final String _units = 'metric';

  GeocodingRequest? geoReq;
  CurrentWeatherRequest? cwReq;
  OneCallWeatherRequest? ocReq;

  OpenWeatherAPIRequest({this.geoReq, this.cwReq});
}

class OneCallWeatherRequest extends OpenWeatherAPIRequest{
  final String _endPoint = '/data/2.5/onecall';
  String? lat, lon;
  OneCallWeather? oneCallWeather;
  Exclusions? exclude = Exclusions.exclude();
  Uri? finalUri;

  OneCallWeatherRequest({required this.lat, required this.lon, this.exclude});

  Future<OneCallWeather?> processRequest() async {
    finalUri = Uri.parse('$_baseUrl$_endPoint?lat=$lat&lon=$lon&exclude=${exclude?.setting}&units=$_units&appid=$_apiKey');

    print('DEBUG: Request url - $finalUri');
    Response response = await get(finalUri!);
    // print('Response: ${response.body}');

    Map data = jsonDecode(response.body);

    oneCallWeather = OneCallWeather.fromJson(data);

    return oneCallWeather;
  }
}

class CurrentWeatherRequest extends OpenWeatherAPIRequest{
  final String _endPoint = '/data/2.5/weather';
  String? lat, lon;
  String? q;
  CurrentWeather? weather;
  Uri? finalUri;

  CurrentWeatherRequest({required this.lat, required this.lon});

  Future<CurrentWeather?> processRequest() async {
    finalUri = Uri.parse('$_baseUrl$_endPoint?lat=$lat&lon=$lon&units=$_units&appid=$_apiKey');

    print('DEBUG: Request url - $finalUri');
    Response response = await get(finalUri!);

    // print('Response: ${response.body}');

    weather = CurrentWeather.fromJson(jsonDecode(response.body));
    return weather;
  }
}

class GeocodingRequest extends OpenWeatherAPIRequest{

  final String _endPoint = '/geo/1.0/direct';
  String q;
  int? limit;
  List<GeocodingLocation>? searchResult;
  Uri? finalUri;

  GeocodingRequest({required this.q, this.limit});

  Future<List<GeocodingLocation>?> processRequest() async{
    limit ??= 5; // If the limit is not mentioned default limit is set to 5

    // Checks if the query is empty or not
    if(q == ''){
      searchResult = [];
    }else{
      finalUri = Uri.parse('$_baseUrl$_endPoint?q=$q&limit=$limit&appid=$_apiKey');

      // Calls the OpenWeatherAPI to get the geocoding locations
      print('DEBUG: Request url - $finalUri');
      Response response = await get(finalUri!);

      // print('Response: ${response.body}');

      // Converts the Response body to a list of GeocodingLocation
      var locations = jsonDecode(response.body) as List;
      searchResult = locations.map((location) => GeocodingLocation.fromJson(location)).toList();
    }
    return searchResult;
  }
}