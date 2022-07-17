import 'dart:convert';
import 'package:howstheweather/data%20models/geocoding_location.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHandler{
  SharedPreferences? _spInstance;
  bool isInitialized = false;
}

class RecentsHandler extends SharedPreferencesHandler{
  final int maxRecents = 7;
  final String key = 'recents';
  List<GeocodingLocation> recents = [];
  List<String> recentsAsStrings = [];

  _initialize() async {
    // Initializes shared preferences
    _spInstance ??= await SharedPreferences.getInstance();

    recentsAsStrings = _spInstance?.getStringList(key) ?? [];
    if(recentsAsStrings.isNotEmpty) {
      recents = recentsAsStrings.map((e) => GeocodingLocation.fromJson(jsonDecode(e))).toList();
    }
  }

  addToRecents(GeocodingLocation location) async{
    await _initialize();

    // Checks if the location to be added already exists in the list and
    // removes it if it is present.
    var repeatCheck = recents.indexWhere((element) => element.name == location.name && element.state == location.state);
    if(repeatCheck != -1){
      recents.removeAt(repeatCheck);
      recentsAsStrings.removeAt(repeatCheck);
    }

    // Inserts the location selected to the latest spot in the list
    recents.insert(0, location);
    var locationAsString = jsonEncode(location.toJson());
    recentsAsStrings.insert(0, locationAsString);

    // If the length of the list is greater than the maximum number of recents
    // to be stored the deletes the oldest location stored.
    if(recents.length > maxRecents){
      recents.removeAt(recents.length-1);
      recentsAsStrings.removeAt(recentsAsStrings.length-1);
    }

    // Updates the list of saved recent locations
    _spInstance?.setStringList(key, recentsAsStrings);
  }

  Future<List<GeocodingLocation>> getRecents({int? count}) async {
    // print('DEBUG: ${count ?? maxRecents} number of recents requested');
    await _initialize();

    // Returns a sublist of recents with a total number of elements equal
    // to the count asked for as lon as it is less than the length of recents
    // stored
    if(count != null && count < recents.length){
      // print('DEBUG: get Recents returned - ${recents.sublist(0, count).toString()}');
      return recents.sublist(0, count);
    }else{
      // print('DEBUG: get Recents returned - ${recents.toString()}');
      return recents;
    }
  }

  clearRecents() async{
    // Clears the lists of recents
    _spInstance ??= await SharedPreferences.getInstance();
    recents=[];
    recentsAsStrings=[];
    _spInstance?.setStringList(key, []);
  }
}