/// day : 277.59
/// night : 276.27
/// eve : 276.49
/// morn : 276.27

class FeelsLike {
  FeelsLike({
    num? day,
    num? night,
    num? eve,
    num? morn,
  }) {
    _day = day;
    _night = night;
    _eve = eve;
    _morn = morn;
  }

  num? _day;
  num? _night;
  num? _eve;
  num? _morn;

  num? get day => _day;
  num? get night => _night;
  num? get eve => _eve;
  num? get morn => _morn;


  FeelsLike.fromJson(dynamic json) {
    _day = json['day'];
    _night = json['night'];
    _eve = json['eve'];
    _morn = json['morn'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['night'] = _night;
    map['eve'] = _eve;
    map['morn'] = _morn;
    return map;
  }

  FeelsLike copyWith({
    num? day,
    num? night,
    num? eve,
    num? morn,
  }) =>
      FeelsLike(
        day: day ?? _day,
        night: night ?? _night,
        eve: eve ?? _eve,
        morn: morn ?? _morn,
      );
}