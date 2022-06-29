/// day : 279.79
/// min : 275.09
/// max : 284.07
/// night : 275.09
/// eve : 279.21
/// morn : 278.49

class Temp {
  Temp({
    num? day,
    num? min,
    num? max,
    num? night,
    num? eve,
    num? morn,
  }) {
    _day = day;
    _min = min;
    _max = max;
    _night = night;
    _eve = eve;
    _morn = morn;
  }

  num? _day;
  num? _min;
  num? _max;
  num? _night;
  num? _eve;
  num? _morn;

  num? get day => _day;
  num? get min => _min;
  num? get max => _max;
  num? get night => _night;
  num? get eve => _eve;
  num? get morn => _morn;

  Temp.fromJson(dynamic json) {
    _day = json['day'];
    _min = json['min'];
    _max = json['max'];
    _night = json['night'];
    _eve = json['eve'];
    _morn = json['morn'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['day'] = _day;
    map['min'] = _min;
    map['max'] = _max;
    map['night'] = _night;
    map['eve'] = _eve;
    map['morn'] = _morn;
    return map;
  }

  Temp copyWith({
    num? day,
    num? min,
    num? max,
    num? night,
    num? eve,
    num? morn,
  }) =>
      Temp(
        day: day ?? _day,
        min: min ?? _min,
        max: max ?? _max,
        night: night ?? _night,
        eve: eve ?? _eve,
        morn: morn ?? _morn,
      );
}