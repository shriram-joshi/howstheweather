import 'package:howstheweather/data%20models/onecall/one_call_alerts.dart';
import 'package:howstheweather/data%20models/onecall/one_call_current.dart';
import 'package:howstheweather/data%20models/onecall/one_call_daily.dart';
import 'package:howstheweather/data%20models/onecall/one_call_hourly.dart';
import 'package:howstheweather/data%20models/onecall/one_call_minutely.dart';

/// lat : 18.53
/// lon : 73.25
/// timezone : "Asia/Kolkata"
/// timezone_offset : 19800
/// current : {"dt":1656000720,"sunrise":1655944309,"sunset":1655991982,"temp":26.41,"feels_like":26.41,"pressure":1007,"humidity":90,"dew_point":24.64,"uvi":0,"clouds":100,"visibility":7622,"wind_speed":1.82,"wind_deg":183,"wind_gust":4.67,"rain":{"1h":0.21},"snow":{"1h":0.21},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}]}
/// minutely : [{"dt":1656000720,"precipitation":0}]
/// hourly : [{"dt":1618315200,"temp":282.58,"feels_like":280.4,"pressure":1019,"humidity":68,"dew_point":276.98,"uvi":1.4,"clouds":19,"visibility":306,"wind_speed":4.12,"wind_deg":296,"wind_gust":7.33,"rain":{"1h":0.21},"snow":{"1h":0.21},"weather":[{"id":801,"main":"Clouds","description":"few clouds","icon":"02d"}],"pop":0}]
/// daily : [{"dt":1618308000,"sunrise":1618282134,"sunset":1618333901,"moonrise":1618284960,"moonset":1618339740,"moon_phase":0.04,"temp":{"day":279.79,"min":275.09,"max":284.07,"night":275.09,"eve":279.21,"morn":278.49},"feels_like":{"day":277.59,"night":276.27,"eve":276.49,"morn":276.27},"pressure":1020,"humidity":81,"dew_point":276.77,"wind_speed":3.06,"wind_deg":294,"weather":[{"id":500,"main":"Rain","description":"light rain","icon":"10d"}],"clouds":56,"pop":0.2,"rain":0.62,"snow":0.62,"uvi":1.93}]
/// alerts : [{"sender_name":"NWS Tulsa","event":"Heat Advisory","start":1597341600,"end":1597366800,"description":"...HEAT ADVISORY REMAINS IN EFFECT FROM 1 PM THIS AFTERNOON TO\n8 PM CDT THIS EVENING...\n* WHAT...Heat index values of 105 to 109 degrees expected.\n* WHERE...Creek, Okfuskee, Okmulgee, McIntosh, Pittsburg,\nLatimer, Pushmataha, and Choctaw Counties.\n* WHEN...From 1 PM to 8 PM CDT Thursday.\n* IMPACTS...The combination of hot temperatures and high\nhumidity will combine to create a dangerous situation in which\nheat illnesses are possible.","tags":["Extreme temperature value"]}]

class OneCallWeather {
  num? _lat;
  num? _lon;
  String? _timezone;
  num? _timezoneOffset;
  Current? _current;
  List<Minutely>? _minutely;
  List<Hourly>? _hourly;
  List<Daily>? _daily;
  List<Alerts>? _alerts;

  num? get lat => _lat;
  num? get lon => _lon;
  String? get timezone => _timezone;
  num? get timezoneOffset => _timezoneOffset;
  Current? get current => _current;
  List<Minutely>? get minutely => _minutely;
  List<Hourly>? get hourly => _hourly;
  List<Daily>? get daily => _daily;
  List<Alerts>? get alerts => _alerts;

  OneCallWeather(
      {num? lat,
        num? lon,
        String? timezone,
        num? timezoneOffset,
        Current? current,
        List<Minutely>? minutely,
        List<Hourly>? hourly,
        List<Daily>? daily,
        List<Alerts>? alerts}) {
    _lat = lat;
    _lon = lon;
    _timezone = timezone;
    _timezoneOffset = timezoneOffset;
    _current = current;
    _minutely = minutely;
    _hourly = hourly;
    _daily = daily;
    _alerts = alerts;
  }

  OneCallWeather.fromJson(dynamic json) {
    _lat = json['lat'];
    _lon = json['lon'];
    _timezone = json['timezone'];
    _timezoneOffset = json['timezone_offset'];
    _current =
    json['current'] != null ? Current.fromJson(json['current']) : null;
    if (json['minutely'] != null) {
      _minutely = [];
      json['minutely'].forEach((v) {
        _minutely?.add(Minutely.fromJson(v));
      });
    }
    if (json['hourly'] != null) {
      _hourly = [];
      json['hourly'].forEach((v) {
        _hourly?.add(Hourly.fromJson(v));
      });
    }
    if (json['daily'] != null) {
      _daily = [];
      json['daily'].forEach((v) {
        _daily?.add(Daily.fromJson(v));
      });
    }
    if (json['alerts'] != null) {
      _alerts = [];
      json['alerts'].forEach((v) {
        _alerts?.add(Alerts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = _lat;
    map['lon'] = _lon;
    map['timezone'] = _timezone;
    map['timezone_offset'] = _timezoneOffset;
    if (_current != null) {
      map['current'] = _current?.toJson();
    }
    if (_minutely != null) {
      map['minutely'] = _minutely?.map((v) => v.toJson()).toList();
    }
    if (_hourly != null) {
      map['hourly'] = _hourly?.map((v) => v.toJson()).toList();
    }
    if (_daily != null) {
      map['daily'] = _daily?.map((v) => v.toJson()).toList();
    }
    if (_alerts != null) {
      map['alerts'] = _alerts?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  OneCallWeather copyWith({
    num? lat,
    num? lon,
    String? timezone,
    num? timezoneOffset,
    Current? current,
    List<Minutely>? minutely,
    List<Hourly>? hourly,
    List<Daily>? daily,
    List<Alerts>? alerts,
  }) =>
      OneCallWeather(
        lat: lat ?? _lat,
        lon: lon ?? _lon,
        timezone: timezone ?? _timezone,
        timezoneOffset: timezoneOffset ?? _timezoneOffset,
        current: current ?? _current,
        minutely: minutely ?? _minutely,
        hourly: hourly ?? _hourly,
        daily: daily ?? _daily,
        alerts: alerts ?? _alerts,
      );
}