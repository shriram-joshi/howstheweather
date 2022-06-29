import 'package:howstheweather/data%20models/clouds.dart';
import 'package:howstheweather/data%20models/main_weather_details.dart';
import 'package:howstheweather/data%20models/rain.dart';
import 'package:howstheweather/data%20models/snow.dart';
import 'package:howstheweather/data%20models/weather_description.dart';
import 'package:howstheweather/data%20models/wind.dart';

/// cod : "200"
/// message : 0
/// cnt : 2
/// list : [{"dt":1655737200,"main":{"temp":297.91,"feels_like":298.37,"temp_min":297.32,"temp_max":297.91,"pressure":1005,"sea_level":1005,"grnd_level":944,"humidity":74,"temp_kf":0.59},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":98},"wind":{"speed":5.1,"deg":255,"gust":8.95},"visibility":10000,"pop":0.13,"rain":{"3h":1.25},"snow":{"3h":1.25},"sys":{"pod":"n"},"dt_txt":"2022-06-20 15:00:00"},{"dt":1655748000,"main":{"temp":297.34,"feels_like":297.85,"temp_min":296.91,"temp_max":297.34,"pressure":1006,"sea_level":1006,"grnd_level":945,"humidity":78,"temp_kf":0.43},"weather":[{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}],"clouds":{"all":97},"wind":{"speed":3.86,"deg":254,"gust":8.12},"visibility":10000,"pop":0.13,"rain":{"3h":1.28},"snow":{"3h":1.253},"sys":{"pod":"n"},"dt_txt":"2022-06-20 18:00:00"}]
/// city : {"id":1259229,"name":"Pune","coord":{"lat":18.5196,"lon":73.8553},"country":"IN","population":9999,"timezone":19800,"sunrise":1655684928,"sunset":1655732599}

class Forecast3hourly {
  Forecast3hourly({
    String? cod,
    int? message,
    int? cnt,
    List<ForecastListItem>? list,
    City? city,}){
    _cod = cod;
    _message = message;
    _cnt = cnt;
    _list = list;
    _city = city;
  }

  Forecast3hourly.fromJson(dynamic json) {
    _cod = json['cod'];
    _message = json['message'];
    _cnt = json['cnt'];
    if (json['list'] != null) {
      _list = [];
      json['list'].forEach((v) {
        _list?.add(ForecastListItem.fromJson(v));
      });
    }
    _city = json['city'] != null ? City.fromJson(json['city']) : null;
  }
  String? _cod;
  int? _message;
  int? _cnt;
  List<ForecastListItem>? _list;
  City? _city;
  Forecast3hourly copyWith({  String? cod,
    int? message,
    int? cnt,
    List<ForecastListItem>? list,
    City? city,
  }) => Forecast3hourly(  cod: cod ?? _cod,
    message: message ?? _message,
    cnt: cnt ?? _cnt,
    list: list ?? _list,
    city: city ?? _city,
  );
  String? get cod => _cod;
  int? get message => _message;
  int? get cnt => _cnt;
  List<ForecastListItem>? get list => _list;
  City? get city => _city;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cod'] = _cod;
    map['message'] = _message;
    map['cnt'] = _cnt;
    if (_list != null) {
      map['list'] = _list?.map((v) => v.toJson()).toList();
    }
    if (_city != null) {
      map['city'] = _city?.toJson();
    }
    return map;
  }

}

/// id : 1259229
/// name : "Pune"
/// coord : {"lat":18.5196,"lon":73.8553}
/// country : "IN"
/// population : 9999
/// timezone : 19800
/// sunrise : 1655684928
/// sunset : 1655732599

class City {
  City({
    int? id,
    String? name,
    Coord? coord,
    String? country,
    int? population,
    int? timezone,
    int? sunrise,
    int? sunset,}){
    _id = id;
    _name = name;
    _coord = coord;
    _country = country;
    _population = population;
    _timezone = timezone;
    _sunrise = sunrise;
    _sunset = sunset;
  }

  City.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    _country = json['country'];
    _population = json['population'];
    _timezone = json['timezone'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
  }
  int? _id;
  String? _name;
  Coord? _coord;
  String? _country;
  int? _population;
  int? _timezone;
  int? _sunrise;
  int? _sunset;
  City copyWith({  int? id,
    String? name,
    Coord? coord,
    String? country,
    int? population,
    int? timezone,
    int? sunrise,
    int? sunset,
  }) => City(  id: id ?? _id,
    name: name ?? _name,
    coord: coord ?? _coord,
    country: country ?? _country,
    population: population ?? _population,
    timezone: timezone ?? _timezone,
    sunrise: sunrise ?? _sunrise,
    sunset: sunset ?? _sunset,
  );
  int? get id => _id;
  String? get name => _name;
  Coord? get coord => _coord;
  String? get country => _country;
  int? get population => _population;
  int? get timezone => _timezone;
  int? get sunrise => _sunrise;
  int? get sunset => _sunset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    if (_coord != null) {
      map['coord'] = _coord?.toJson();
    }
    map['country'] = _country;
    map['population'] = _population;
    map['timezone'] = _timezone;
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    return map;
  }

}

/// lat : 18.5196
/// lon : 73.8553

class Coord {
  Coord({
    double? lat,
    double? lon,}){
    _lat = lat;
    _lon = lon;
  }

  Coord.fromJson(dynamic json) {
    _lat = json['lat'];
    _lon = json['lon'];
  }
  double? _lat;
  double? _lon;
  Coord copyWith({  double? lat,
    double? lon,
  }) => Coord(  lat: lat ?? _lat,
    lon: lon ?? _lon,
  );
  double? get lat => _lat;
  double? get lon => _lon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lat'] = _lat;
    map['lon'] = _lon;
    return map;
  }

}

/// dt : 1655737200
/// main : {"temp":297.91,"feels_like":298.37,"temp_min":297.32,"temp_max":297.91,"pressure":1005,"sea_level":1005,"grnd_level":944,"humidity":74,"temp_kf":0.59}
/// weather : [{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}]
/// clouds : {"all":98}
/// wind : {"speed":5.1,"deg":255,"gust":8.95}
/// visibility : 10000
/// pop : 0.13
/// rain : {"3h":1.25}
/// snow : {"3h":1.25}
/// sys : {"pod":"n"}
/// dt_txt : "2022-06-20 15:00:00"

class ForecastListItem {
  ForecastListItem({
    int? dt,
    Main? main,
    List<Weather>? weather,
    Clouds? clouds,
    Wind? wind,
    int? visibility,
    double? pop,
    Rain? rain,
    Snow? snow,
    Sys? sys,
    String? dtTxt,}){
    _dt = dt;
    _main = main;
    _weather = weather;
    _clouds = clouds;
    _wind = wind;
    _visibility = visibility;
    _pop = pop;
    _rain = rain;
    _snow = snow;
    _sys = sys;
    _dtTxt = dtTxt;
  }

  ForecastListItem.fromJson(dynamic json) {
    _dt = json['dt'];
    _main = json['main'] != null ? Main.fromJson(json['main']) : null;
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
    _clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    _wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    _visibility = json['visibility'];
    _pop = json['pop'];
    _rain = json['rain'] != null ? Rain.fromJson(json['rain']) : null;
    _snow = json['snow'] != null ? Snow.fromJson(json['snow']) : null;
    _sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
    _dtTxt = json['dt_txt'];
  }
  int? _dt;
  Main? _main;
  List<Weather>? _weather;
  Clouds? _clouds;
  Wind? _wind;
  int? _visibility;
  double? _pop;
  Rain? _rain;
  Snow? _snow;
  Sys? _sys;
  String? _dtTxt;
  ForecastListItem copyWith({  int? dt,
    Main? main,
    List<Weather>? weather,
    Clouds? clouds,
    Wind? wind,
    int? visibility,
    double? pop,
    Rain? rain,
    Snow? snow,
    Sys? sys,
    String? dtTxt,
  }) => ForecastListItem(  dt: dt ?? _dt,
    main: main ?? _main,
    weather: weather ?? _weather,
    clouds: clouds ?? _clouds,
    wind: wind ?? _wind,
    visibility: visibility ?? _visibility,
    pop: pop ?? _pop,
    rain: rain ?? _rain,
    snow: snow ?? _snow,
    sys: sys ?? _sys,
    dtTxt: dtTxt ?? _dtTxt,
  );
  int? get dt => _dt;
  Main? get main => _main;
  List<Weather>? get weather => _weather;
  Clouds? get clouds => _clouds;
  Wind? get wind => _wind;
  int? get visibility => _visibility;
  double? get pop => _pop;
  Rain? get rain => _rain;
  Snow? get snow => _snow;
  Sys? get sys => _sys;
  String? get dtTxt => _dtTxt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    if (_main != null) {
      map['main'] = _main?.toJson();
    }
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    if (_clouds != null) {
      map['clouds'] = _clouds?.toJson();
    }
    if (_wind != null) {
      map['wind'] = _wind?.toJson();
    }
    map['visibility'] = _visibility;
    map['pop'] = _pop;
    if (_rain != null) {
      map['rain'] = _rain?.toJson();
    }
    if (_snow != null) {
      map['snow'] = _snow?.toJson();
    }
    if (_sys != null) {
      map['sys'] = _sys?.toJson();
    }
    map['dt_txt'] = _dtTxt;
    return map;
  }

}

/// pod : "n"

class Sys {
  Sys({
    String? pod,}){
    _pod = pod;
  }

  Sys.fromJson(dynamic json) {
    _pod = json['pod'];
  }
  String? _pod;
  Sys copyWith({  String? pod,
  }) => Sys(  pod: pod ?? _pod,
  );
  String? get pod => _pod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pod'] = _pod;
    return map;
  }

}

