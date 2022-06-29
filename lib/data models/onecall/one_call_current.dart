import 'package:howstheweather/data%20models/rain.dart';
import 'package:howstheweather/data%20models/snow.dart';
import 'package:howstheweather/data%20models/weather_description.dart';

/// dt : 1656000720
/// sunrise : 1655944309
/// sunset : 1655991982
/// temp : 26.41
/// feels_like : 26.41
/// pressure : 1007
/// humidity : 90
/// dew_point : 24.64
/// uvi : 0
/// clouds : 100
/// visibility : 7622
/// wind_speed : 1.82
/// wind_deg : 183
/// wind_gust : 4.67
/// rain : {"1h":0.21}
/// snow : {"1h":0.21}
/// weather : [{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}]

class Current {
  Current({
    num? dt,
    num? sunrise,
    num? sunset,
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
  }) {
    _dt = dt;
    _sunrise = sunrise;
    _sunset = sunset;
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
  }

  num? _dt;
  num? _sunrise;
  num? _sunset;
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

  num? get dt => _dt;
  num? get sunrise => _sunrise;
  num? get sunset => _sunset;
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

  Current.fromJson(dynamic json) {
    _dt = json['dt'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
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
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
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
    return map;
  }

  List<Weather>? _weather;
  Current copyWith({
    num? dt,
    num? sunrise,
    num? sunset,
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
  }) =>
      Current(
        dt: dt ?? _dt,
        sunrise: sunrise ?? _sunrise,
        sunset: sunset ?? _sunset,
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
      );

  num? visibilityInKm() => _visibility!/1000;
}