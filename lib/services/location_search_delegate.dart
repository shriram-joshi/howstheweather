import 'package:flutter/material.dart';
import 'package:howstheweather/data%20models/geocoding_location.dart';
import 'package:howstheweather/utilities/openweather_api_handler.dart';
import 'package:howstheweather/services/search_list_item.dart';
import 'package:howstheweather/utilities/shared_preferences_handler.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LocationSearchDelegate extends SearchDelegate {

  List<GeocodingLocation> results = [];
  List<GeocodingLocation> recents = [];
  GeocodingRequest instance = GeocodingRequest(q: '');

  @override
  Widget buildResults(BuildContext context) {

    instance.q = query.trim().replaceAll(' ', '%20');
    return FutureBuilder(
        future: instance.processRequest(),
        builder: (context, snapshot) {
          switch(snapshot.connectionState){
            case ConnectionState.waiting:
              return Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.all(20),
                child: LoadingAnimationWidget.staggeredDotsWave(color: Colors.black, size: 50),
              );
            default: {
              results = snapshot.data as List<GeocodingLocation>;
              // Checks if search res
              if(results.isEmpty){
                return buildSuggestions(context);
              }else{
                return ListView.builder(
                  itemCount: results.length,
                  itemBuilder: (context, index){
                    return SearchListItem(location: results[index]);
                  },
                );
              }
            }
          }
        }
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    results = [];

    // The search for... card
    Widget searchFor = query.isEmpty ? const SizedBox(height: 0) : Card(
      color: Colors.blueGrey[300],
      elevation: 5,
      child: ListTile(
        onTap: () => showResults(context),
        title: Text(
          "Search for $query...",
          style: const TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.left,
        ),
      ),
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          searchFor,
          const Divider(height: 40, thickness: 2, indent: 50, endIndent: 50),
          const Padding(
            padding: EdgeInsets.fromLTRB(8.0, 0, 8.0, 10.0),
            child: Text(
              'Recent',
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),
          // Recent location column
          FutureBuilder(
            future: RecentsHandler().getRecents(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              switch(snapshot.connectionState){
                default: {
                  recents = snapshot.data ?? [];
                  return Column(
                    children: recents.isEmpty ? [] : recents.map((recent) => SearchListItem(location: recent)).toList(),
                  );
                }
              }
            },
          )
        ],
      ),
    );
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: (){
            if(query.isEmpty){
              close(context, null);
            }else{
              showSuggestions(context);
              query = '';
            }
          },
          icon: const Icon(Icons.clear_rounded),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: (){
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back_rounded),
    );
  }

}
