import 'package:flutter/material.dart';
import 'package:howstheweather/utilities/formatting_helper.dart';

class MiscWeatherInfoWidget{
  late Widget miscWeatherInfo;
  num maxTemp, minTemp, uvi, sunrise, sunset, humidity, windSpeed, windDeg, visibilityKm;

  final BoxDecoration _bigBox = BoxDecoration(
    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 10, offset: Offset.fromDirection(1, 5))],
    color: Colors.grey[300]?.withOpacity(0.5),
    borderRadius: BorderRadius.circular(30),
  );
  final BoxDecoration _smallBox = BoxDecoration(
    boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 10, offset: Offset.fromDirection(1, 5))],
    color: Colors.grey[300]?.withOpacity(0.5),
    borderRadius: BorderRadius.circular(20),
  );

  MiscWeatherInfoWidget.build({
    required this. maxTemp,
    required this.minTemp,
    required this.uvi,
    required this.sunrise,
    required this.sunset,
    required this.humidity,
    required this.windSpeed,
    required this.windDeg,
    required this.visibilityKm, required num timeZone}){

    miscWeatherInfo = Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: _bigBox,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // First row containing max/mon, UVI and sunrise/sunset time
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Max/Min
                Container(
                  decoration: _smallBox,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Max Temp
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                            child: const Text(
                              'Max',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Text(
                            maxTemp == -300 ? 'Unavailable' : '${maxTemp.round()}°C',
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      // Min Temp
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                            child: const Text(
                              'Min',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Text(
                            minTemp == -300 ? 'Unavailable' : '${minTemp.round()}°C',
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // UVI
                Container(
                  decoration: _smallBox,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // UVI Text
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                        child: const Text(
                          'UVI',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      // UVI Value
                      Text(
                        uvi == -1 ? 'Unavailable' :'$uvi',
                        style: const TextStyle(
                          fontSize: 20,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                    ],
                  ),
                ),
                // Sunrise/Sunset
                Container(
                  decoration: _smallBox,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // Sunrise
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                            child: const Text(
                              'Sunrise',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Text(
                            sunrise == -1 ? 'Unavailable' : FormattingHelper.formatMSSE(sunrise).formattedTime,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      // Sunset
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                            child: const Text(
                              'Sunset',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Text(
                            sunset == -1 ? 'Unavailable' : FormattingHelper.formatMSSE(sunset).formattedTime,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Second row containing humidity, wind and visibility
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Humidity
                Container(
                  decoration: _smallBox,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Humidity
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                        child: const Text(
                          'Humidity',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Text(
                        humidity == -1 ? 'Unavailable' : '${humidity.round()}%',
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                // Wind
                Container(
                  decoration: _smallBox,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Wind text
                      Container(
                        margin: const EdgeInsets.all(2),
                        child: const Text(
                          'Wind',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      // Wind Info
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            windSpeed == -1 ? 'Unavailable' : '$windSpeed',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                            child: const Text(
                              'm/s',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                          Text(
                            windDeg == -1 ? 'Unavailable' : FormattingHelper.formatWindDir(windDeg).formattedWindDir,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Visibility
                Container(
                  decoration: _smallBox,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Visibility text
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 2, 0),
                        child: const Text(
                          'Visibility',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      // Visibility Info
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          // Value
                          Text(
                            visibilityKm == -1 ? 'Unavailable' : '$visibilityKm',
                            style: const TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          // KM Text
                          Container(
                            margin: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                            child: const Text(
                              'km',
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}