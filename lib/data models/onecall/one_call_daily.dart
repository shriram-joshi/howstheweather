import 'package:howstheweather/data%20models/onecall/one_call_daily_feels_like.dart';
import 'package:howstheweather/data%20models/onecall/one_call_daily_temperature.dart';
import 'package:howstheweather/data%20models/weather_description.dart';

/// dt : 1618308000
/// sunrise : 1618282134
/// sunset : 1618333901
/// moonrise : 1618284960
/// moonset : 1618339740
/// moon_phase : 0.04
/// temp : {"day":279.79,"min":275.09,"max":284.07,"night":275.09,"eve":279.21,"morn":278.49}
/// feels_like : {"day":277.59,"night":276.27,"eve":276.49,"morn":276.27}
/// pressure : 1020
/// humidity : 81
/// dew_point : 276.77
/// wind_speed : 3.06
/// wind_deg : 294
/// weather : [{"id":500,"main":"Rain","description":"light rain","icon":"10d"}]
/// clouds : 56
/// pop : 0.2
/// rain : 0.62
/// snow : 0.62
/// uvi : 1.93

class Daily {
  Daily({
    num? dt,
    num? sunrise,
    num? sunset,
    num? moonrise,
    num? moonset,
    num? moonPhase,
    Temp? temp,
    FeelsLike? feelsLike,
    num? pressure,
    num? humidity,
    num? dewPoint,
    num? windSpeed,
    num? windDeg,
    List<Weather>? weather,
    num? clouds,
    num? pop,
    num? rain,
    num? snow,
    num? uvi,
  }) {
    _dt = dt;
    _sunrise = sunrise;
    _sunset = sunset;
    _moonrise = moonrise;
    _moonset = moonset;
    _moonPhase = moonPhase;
    _temp = temp;
    _feelsLike = feelsLike;
    _pressure = pressure;
    _humidity = humidity;
    _dewPoint = dewPoint;
    _windSpeed = windSpeed;
    _windDeg = windDeg;
    _weather = weather;
    _clouds = clouds;
    _pop = pop;
    _rain = rain;
    _snow = snow;
    _uvi = uvi;
  }

  num? _dt;
  num? _sunrise;
  num? _sunset;
  num? _moonrise;
  num? _moonset;
  num? _moonPhase;
  Temp? _temp;
  FeelsLike? _feelsLike;
  num? _pressure;
  num? _humidity;
  num? _dewPoint;
  num? _windSpeed;
  num? _windDeg;
  List<Weather>? _weather;
  num? _clouds;
  num? _pop;
  num? _rain;
  num? _snow;
  num? _uvi;

  num? get dt => _dt;
  num? get sunrise => _sunrise;
  num? get sunset => _sunset;
  num? get moonrise => _moonrise;
  num? get moonset => _moonset;
  num? get moonPhase => _moonPhase;
  Temp? get temp => _temp;
  FeelsLike? get feelsLike => _feelsLike;
  num? get pressure => _pressure;
  num? get humidity => _humidity;
  num? get dewPoint => _dewPoint;
  num? get windSpeed => _windSpeed;
  num? get windDeg => _windDeg;
  List<Weather>? get weather => _weather;
  num? get clouds => _clouds;
  num? get pop => _pop;
  num? get rain => _rain;
  num? get snow => _snow;
  num? get uvi => _uvi;

  Daily.fromJson(dynamic json) {
    _dt = json['dt'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
    _moonrise = json['moonrise'];
    _moonset = json['moonset'];
    _moonPhase = json['moon_phase'];
    _temp = json['temp'] != null ? Temp.fromJson(json['temp']) : null;
    _feelsLike = json['feels_like'] != null
        ? FeelsLike.fromJson(json['feels_like'])
        : null;
    _pressure = json['pressure'];
    _humidity = json['humidity'];
    _dewPoint = json['dew_point'];
    _windSpeed = json['wind_speed'];
    _windDeg = json['wind_deg'];
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
    _clouds = json['clouds'];
    _pop = json['pop'];
    _rain = json['rain'];
    _snow = json['snow'];
    _uvi = json['uvi'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    map['moonrise'] = _moonrise;
    map['moonset'] = _moonset;
    map['moon_phase'] = _moonPhase;
    if (_temp != null) {
      map['temp'] = _temp?.toJson();
    }
    if (_feelsLike != null) {
      map['feels_like'] = _feelsLike?.toJson();
    }
    map['pressure'] = _pressure;
    map['humidity'] = _humidity;
    map['dew_point'] = _dewPoint;
    map['wind_speed'] = _windSpeed;
    map['wind_deg'] = _windDeg;
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    map['clouds'] = _clouds;
    map['pop'] = _pop;
    map['rain'] = _rain;
    map['snow'] = _snow;
    map['uvi'] = _uvi;
    return map;
  }

  Daily copyWith({
    num? dt,
    num? sunrise,
    num? sunset,
    num? moonrise,
    num? moonset,
    num? moonPhase,
    Temp? temp,
    FeelsLike? feelsLike,
    num? pressure,
    num? humidity,
    num? dewPoint,
    num? windSpeed,
    num? windDeg,
    List<Weather>? weather,
    num? clouds,
    num? pop,
    num? rain,
    num? snow,
    num? uvi,
  }) =>
      Daily(
        dt: dt ?? _dt,
        sunrise: sunrise ?? _sunrise,
        sunset: sunset ?? _sunset,
        moonrise: moonrise ?? _moonrise,
        moonset: moonset ?? _moonset,
        moonPhase: moonPhase ?? _moonPhase,
        temp: temp ?? _temp,
        feelsLike: feelsLike ?? _feelsLike,
        pressure: pressure ?? _pressure,
        humidity: humidity ?? _humidity,
        dewPoint: dewPoint ?? _dewPoint,
        windSpeed: windSpeed ?? _windSpeed,
        windDeg: windDeg ?? _windDeg,
        weather: weather ?? _weather,
        clouds: clouds ?? _clouds,
        pop: pop ?? _pop,
        rain: rain ?? _rain,
        snow: snow ?? _snow,
        uvi: uvi ?? _uvi,
      );
}