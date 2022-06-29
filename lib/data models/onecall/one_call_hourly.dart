import 'package:howstheweather/data%20models/rain.dart';
import 'package:howstheweather/data%20models/snow.dart';
import 'package:howstheweather/data%20models/weather_description.dart';

/// dt : 1618315200
/// temp : 282.58
/// feels_like : 280.4
/// pressure : 1019
/// humidity : 68
/// dew_point : 276.98
/// uvi : 1.4
/// clouds : 19
/// visibility : 306
/// wind_speed : 4.12
/// wind_deg : 296
/// wind_gust : 7.33
/// rain : {"1h":0.21}
/// snow : {"1h":0.21}
/// weather : [{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}]
/// pop : 0

class Hourly {
  Hourly({
    num? dt,
    num? temp,
    num? feelsLike,
    num? pressure,
    num? humidity,
    num? dewPoint,
    num? uvi,
    num? clouds,
    num? visibility,
    num? windSpeed,
    num? windDeg,
    num? windGust,
    Rain? rain,
    Snow? snow,
    List<Weather>? weather,
    num? pop,
  }) {
    _dt = dt;
    _temp = temp;
    _feelsLike = feelsLike;
    _pressure = pressure;
    _humidity = humidity;
    _dewPoint = dewPoint;
    _uvi = uvi;
    _clouds = clouds;
    _visibility = visibility;
    _windSpeed = windSpeed;
    _windDeg = windDeg;
    _windGust = windGust;
    _rain = rain;
    _snow = snow;
    _weather = weather;
    _pop = pop;
  }

  num? _dt;
  num? _temp;
  num? _feelsLike;
  num? _pressure;
  num? _humidity;
  num? _dewPoint;
  num? _uvi;
  num? _clouds;
  num? _visibility;
  num? _windSpeed;
  num? _windDeg;
  num? _windGust;
  Rain? _rain;
  Snow? _snow;
  List<Weather>? _weather;
  num? _pop;

  num? get dt => _dt;
  num? get temp => _temp;
  num? get feelsLike => _feelsLike;
  num? get pressure => _pressure;
  num? get humidity => _humidity;
  num? get dewPoint => _dewPoint;
  num? get uvi => _uvi;
  num? get clouds => _clouds;
  num? get visibility => _visibility;
  num? get windSpeed => _windSpeed;
  num? get windDeg => _windDeg;
  num? get windGust => _windGust;
  Rain? get rain => _rain;
  Snow? get snow => _snow;
  List<Weather>? get weather => _weather;
  num? get pop => _pop;

  Hourly.fromJson(dynamic json) {
    _dt = json['dt'];
    _temp = json['temp'];
    _feelsLike = json['feels_like'];
    _pressure = json['pressure'];
    _humidity = json['humidity'];
    _dewPoint = json['dew_point'];
    _uvi = json['uvi'];
    _clouds = json['clouds'];
    _visibility = json['visibility'];
    _windSpeed = json['wind_speed'];
    _windDeg = json['wind_deg'];
    _windGust = json['wind_gust'];
    _rain = json['rain'] != null ? Rain.fromJson(json['rain']) : null;
    _snow = json['snow'] != null ? Snow.fromJson(json['snow']) : null;
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
    _pop = json['pop'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    map['temp'] = _temp;
    map['feels_like'] = _feelsLike;
    map['pressure'] = _pressure;
    map['humidity'] = _humidity;
    map['dew_point'] = _dewPoint;
    map['uvi'] = _uvi;
    map['clouds'] = _clouds;
    map['visibility'] = _visibility;
    map['wind_speed'] = _windSpeed;
    map['wind_deg'] = _windDeg;
    map['wind_gust'] = _windGust;
    if (_rain != null) {
      map['rain'] = _rain?.toJson();
    }
    if (_snow != null) {
      map['snow'] = _snow?.toJson();
    }
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    map['pop'] = _pop;
    return map;
  }

  Hourly copyWith({
    num? dt,
    num? temp,
    num? feelsLike,
    num? pressure,
    num? humidity,
    num? dewPoint,
    num? uvi,
    num? clouds,
    num? visibility,
    num? windSpeed,
    num? windDeg,
    num? windGust,
    Rain? rain,
    Snow? snow,
    List<Weather>? weather,
    num? pop,
  }) =>
      Hourly(
        dt: dt ?? _dt,
        temp: temp ?? _temp,
        feelsLike: feelsLike ?? _feelsLike,
        pressure: pressure ?? _pressure,
        humidity: humidity ?? _humidity,
        dewPoint: dewPoint ?? _dewPoint,
        uvi: uvi ?? _uvi,
        clouds: clouds ?? _clouds,
        visibility: visibility ?? _visibility,
        windSpeed: windSpeed ?? _windSpeed,
        windDeg: windDeg ?? _windDeg,
        windGust: windGust ?? _windGust,
        rain: rain ?? _rain,
        snow: snow ?? _snow,
        weather: weather ?? _weather,
        pop: pop ?? _pop,
      );
}