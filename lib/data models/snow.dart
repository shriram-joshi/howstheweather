/// 1h : 0.64
/// 3h : 0.64

class Snow {
  Snow({num? oneHour, num? threeHour}){
    _1h = oneHour;
    _3h = threeHour;
  }

  Snow.fromJson(dynamic json) {
    _1h = json['1h'];
    _3h = json['3h'];
  }

  num? _1h;
  num? _3h;

  Snow copyWith({num? oneHour,num? threeHour}) => Snow(oneHour: oneHour ?? _1h, threeHour: threeHour ?? _3h);

  num? get oneHour => _1h;
  num? get threeHour => _3h;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['1h'] = _1h;
    map['3h'] = _3h;
    return map;
  }
}