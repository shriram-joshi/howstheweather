import 'dart:convert';
import 'package:howstheweather/data%20models/geocoding_location.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHandler{
  SharedPreferences? _spInstance;
}

class RecentsHandler extends SharedPreferencesHandler{
  final int maxRecents = 10;
  List<GeocodingLocation> recents = [];
  List<String> recentsAsStrings = [];

  // Do not call any other method in the class before calling initialize()
  _initialize() async {
    _spInstance ??= await SharedPreferences.getInstance();
    recentsAsStrings = _spInstance?.getStringList('recents') ?? [];

    recents = recentsAsStrings.map((location) => GeocodingLocation.fromJson(jsonDecode(location))).toList();

    if(recents.length != recentsAsStrings.length){
      recents=[];
      recentsAsStrings=[];
    }
    print('DEBUG: Recents initialized as - ${recentsAsStrings.toString()}');
  }

  addToRecents(GeocodingLocation location) async{
    await _initialize();

    if(recents.length == maxRecents){
      recents.removeAt(recents.length-1);
      recentsAsStrings.removeAt(recentsAsStrings.length-1);
    }
    recents.insert(0, location);
    recentsAsStrings.insert(0, jsonDecode(jsonEncode(location.toJson().toString())));

    _spInstance?.setStringList('recents', recentsAsStrings);
    print('DEBUG: Recents updated with - ${_spInstance?.getStringList('recents')}');
  }

  Future<List<GeocodingLocation>> getRecents({int? count}) async {
    await _initialize();

    if(count == null || count >= recents.length) {
      count = recents.length;
    }

    return recents.sublist(0, count);
  }

  clearRecents() async{
    _spInstance ??= await SharedPreferences.getInstance();
    recents=[];
    recentsAsStrings=[];
    _spInstance?.setStringList('recents', []);
  }
}