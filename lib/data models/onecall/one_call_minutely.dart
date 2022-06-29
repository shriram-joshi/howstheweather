/// dt : 1656000720
/// precipitation : 0

class Minutely {
  Minutely({
    num? dt,
    num? precipitation,
  }) {
    _dt = dt;
    _precipitation = precipitation;
  }

  num? _dt;
  num? _precipitation;

  num? get dt => _dt;
  num? get precipitation => _precipitation;

  Minutely.fromJson(dynamic json) {
    _dt = json['dt'];
    _precipitation = json['precipitation'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['dt'] = _dt;
    map['precipitation'] = _precipitation;
    return map;
  }

  Minutely copyWith({
    num? dt,
    num? precipitation,
  }) =>
      Minutely(
        dt: dt ?? _dt,
        precipitation: precipitation ?? _precipitation,
      );
}