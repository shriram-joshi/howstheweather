/// speed : 5.1
/// deg : 255
/// gust : 8.95

class Wind {
  Wind({
    double? speed,
    int? deg,
    double? gust,}){
    _speed = speed;
    _deg = deg;
    _gust = gust;
  }

  Wind.fromJson(dynamic json) {
    _speed = json['speed'];
    _deg = json['deg'];
    _gust = json['gust'];
  }
  double? _speed;
  int? _deg;
  double? _gust;
  Wind copyWith({  double? speed,
    int? deg,
    double? gust,
  }) => Wind(  speed: speed ?? _speed,
    deg: deg ?? _deg,
    gust: gust ?? _gust,
  );
  double? get speed => _speed;
  int? get deg => _deg;
  double? get gust => _gust;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speed'] = _speed;
    map['deg'] = _deg;
    map['gust'] = _gust;
    return map;
  }

}