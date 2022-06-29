import 'package:flutter/material.dart';
import 'package:howstheweather/data%20models/geocoding_location.dart';
import 'package:howstheweather/utilities/shared_preferences_handler.dart';
import 'package:howstheweather/utilities/shared_preferences_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchListItem extends StatefulWidget{

  final GeocodingLocation location;

  const SearchListItem({Key? key, required this.location}) : super(key: key);

  @override
  State<SearchListItem> createState() => _SearchListItemState();
}

class _SearchListItemState extends State<SearchListItem> {

  @override
  Widget build(BuildContext context) {

    String nameEdited, stateEdited, countryEdited;

    nameEdited = widget.location.name == null ? '' : '${widget.location.name}, ';
    stateEdited = widget.location.state == null ? '' : '${widget.location.state}, ';

    if(widget.location.country == null){
      stateEdited.replaceAll(', ', '');
      countryEdited = '';
    }else{
      countryEdited = '${widget.location.country}';
    }

    return Card(
      color: Colors.blueGrey[300],
      elevation: 5,
      child: ListTile(
        onTap: () => handleOnTap(context),
        title: Text(
          "$nameEdited$stateEdited$countryEdited",
          style: const TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }

  Future<void> handleOnTap(BuildContext itemContext) async {
    print('LOG Info: ${widget.location.name}, ${widget.location.country} was pressed.');
    widget.location.localNames = null;

    RecentsHandler().addToRecents(widget.location);

    Navigator.pushNamedAndRemoveUntil(itemContext, '/MainWeather', (Route<dynamic> route) => false, arguments: {
      'locationObj' : widget.location,
    });
  }
}