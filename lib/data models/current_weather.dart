import 'package:howstheweather/data%20models/clouds.dart';
import 'package:howstheweather/data%20models/main_weather_details.dart';
import 'package:howstheweather/data%20models/rain.dart';
import 'package:howstheweather/data%20models/snow.dart';
import 'package:howstheweather/data%20models/weather_description.dart';
import 'package:howstheweather/data%20models/wind.dart';

/// coord : {"lon":-0.1257,"lat":51.5085}
/// weather : [{"id":803,"main":"Clouds","description":"broken clouds","icon":"04d"}]
/// base : "stations"
/// main : {"temp":304.76,"feels_like":304.27,"temp_min":301.75,"temp_max":305.92,"pressure":1019,"humidity":36,"sea_level":1007,"grnd_level":946}
/// visibility : 10000
/// wind : {"speed":6.69,"deg":240}
/// clouds : {"all":69}
/// rain : {"1h":0.64,"3h":0.64}
/// snow : {"1h":0.64,"3h":0.64}
/// dt : 1655478184
/// sys : {"type":2,"id":268730,"country":"GB","sunrise":1655437361,"sunset":1655497208}
/// timezone : 3600
/// id : 2643743
/// name : "London"
/// cod : 200

class CurrentWeather {
  CurrentWeather({
    Coord? coord,
    List<Weather>? weather,
    String? base,
    Main? main,
    int? visibility,
    Wind? wind,
    Clouds? clouds,
    Rain? rain,
    Snow? snow,
    int? dt,
    Sys? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,}){
    _coord = coord;
    _weather = weather;
    _base = base;
    _main = main;
    _visibility = visibility;
    _wind = wind;
    _clouds = clouds;
    _rain = rain;
    _snow = snow;
    _dt = dt;
    _sys = sys;
    _timezone = timezone;
    _id = id;
    _name = name;
    _cod = cod;
  }

  CurrentWeather.fromJson(dynamic json) {
    _coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
    _base = json['base'];
    _main = json['main'] != null ? Main.fromJson(json['main']) : null;
    _visibility = json['visibility'];
    _wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    _clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    _rain = json['rain'] != null ? Rain.fromJson(json['rain']) : null;
    _snow = json['snow'] != null ? Snow.fromJson(json['snow']) : null;
    _dt = json['dt'];
    _sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
    _timezone = json['timezone'];
    _id = json['id'];
    _name = json['name'];
    _cod = json['cod'];
  }
  Coord? _coord;
  List<Weather>? _weather;
  String? _base;
  Main? _main;
  int? _visibility;
  Wind? _wind;
  Clouds? _clouds;
  Rain? _rain;
  Snow? _snow;
  int? _dt;
  Sys? _sys;
  int? _timezone;
  int? _id;
  String? _name;
  int? _cod;
  CurrentWeather copyWith({  Coord? coord,
    List<Weather>? weather,
    String? base,
    Main? main,
    int? visibility,
    Wind? wind,
    Clouds? clouds,
    Rain? rain,
    Snow? snow,
    int? dt,
    Sys? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) => CurrentWeather(  coord: coord ?? _coord,
    weather: weather ?? _weather,
    base: base ?? _base,
    main: main ?? _main,
    visibility: visibility ?? _visibility,
    wind: wind ?? _wind,
    clouds: clouds ?? _clouds,
    rain: rain ?? _rain,
    snow: snow ?? _snow,
    dt: dt ?? _dt,
    sys: sys ?? _sys,
    timezone: timezone ?? _timezone,
    id: id ?? _id,
    name: name ?? _name,
    cod: cod ?? _cod,
  );
  Coord? get coord => _coord;
  List<Weather>? get weather => _weather;
  String? get base => _base;
  Main? get main => _main;
  int? get visibility => _visibility;
  Wind? get wind => _wind;
  Clouds? get clouds => _clouds;
  Rain? get rain => _rain;
  Snow? get snow => _snow;
  int? get dt => _dt;
  Sys? get sys => _sys;
  int? get timezone => _timezone;
  int? get id => _id;
  String? get name => _name;
  int? get cod => _cod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_coord != null) {
      map['coord'] = _coord?.toJson();
    }
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    map['base'] = _base;
    if (_main != null) {
      map['main'] = _main?.toJson();
    }
    map['visibility'] = _visibility;
    if (_wind != null) {
      map['wind'] = _wind?.toJson();
    }
    if (_clouds != null) {
      map['clouds'] = _clouds?.toJson();
    }
    if (_rain != null) {
      map['rain'] = _rain?.toJson();
    }
    if (_snow != null) {
      map['snow'] = _snow?.toJson();
    }
    map['dt'] = _dt;
    if (_sys != null) {
      map['sys'] = _sys?.toJson();
    }
    map['timezone'] = _timezone;
    map['id'] = _id;
    map['name'] = _name;
    map['cod'] = _cod;
    return map;
  }

}

/// type : 2
/// id : 268730
/// country : "GB"
/// sunrise : 1655437361
/// sunset : 1655497208

class Sys {
  Sys({
    int? type,
    int? id,
    String? country,
    int? sunrise,
    int? sunset,}){
    _type = type;
    _id = id;
    _country = country;
    _sunrise = sunrise;
    _sunset = sunset;
  }

  Sys.fromJson(dynamic json) {
    _type = json['type'];
    _id = json['id'];
    _country = json['country'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
  }
  int? _type;
  int? _id;
  String? _country;
  int? _sunrise;
  int? _sunset;
  Sys copyWith({  int? type,
    int? id,
    String? country,
    int? sunrise,
    int? sunset,
  }) => Sys(  type: type ?? _type,
    id: id ?? _id,
    country: country ?? _country,
    sunrise: sunrise ?? _sunrise,
    sunset: sunset ?? _sunset,
  );
  int? get type => _type;
  int? get id => _id;
  String? get country => _country;
  int? get sunrise => _sunrise;
  int? get sunset => _sunset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['id'] = _id;
    map['country'] = _country;
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    return map;
  }

}

/// lon : -0.1257
/// lat : 51.5085

class Coord {
  Coord({
    double? lon,
    double? lat,}){
    _lon = lon;
    _lat = lat;
  }

  Coord.fromJson(dynamic json) {
    _lon = json['lon'];
    _lat = json['lat'];
  }
  double? _lon;
  double? _lat;
  Coord copyWith({  double? lon,
    double? lat,
  }) => Coord(  lon: lon ?? _lon,
    lat: lat ?? _lat,
  );
  double? get lon => _lon;
  double? get lat => _lat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lon'] = _lon;
    map['lat'] = _lat;
    return map;
  }

}