
/// sender_name : "NWS Tulsa"
/// event : "Heat Advisory"
/// start : 1597341600
/// end : 1597366800
/// description : "...HEAT ADVISORY REMAINS IN EFFECT FROM 1 PM THIS AFTERNOON TO\n8 PM CDT THIS EVENING...\n* WHAT...Heat index values of 105 to 109 degrees expected.\n* WHERE...Creek, Okfuskee, Okmulgee, McIntosh, Pittsburg,\nLatimer, Pushmataha, and Choctaw Counties.\n* WHEN...From 1 PM to 8 PM CDT Thursday.\n* IMPACTS...The combination of hot temperatures and high\nhumidity will combine to create a dangerous situation in which\nheat illnesses are possible."
/// tags : ["Extreme temperature value"]

class Alerts {
  Alerts({
    String? senderName,
    String? event,
    num? start,
    num? end,
    String? description,
    List<String>? tags,
  }) {
    _senderName = senderName;
    _event = event;
    _start = start;
    _end = end;
    _description = description;
    _tags = tags;
  }

  String? _senderName;
  String? _event;
  num? _start;
  num? _end;
  String? _description;
  List<String>? _tags;

  String? get senderName => _senderName;
  String? get event => _event;
  num? get start => _start;
  num? get end => _end;
  String? get description => _description;
  List<String>? get tags => _tags;

  Alerts.fromJson(dynamic json) {
    _senderName = json['sender_name'];
    _event = json['event'];
    _start = json['start'];
    _end = json['end'];
    _description = json['description'];
    _tags = json['tags'] != null ? json['tags'].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sender_name'] = _senderName;
    map['event'] = _event;
    map['start'] = _start;
    map['end'] = _end;
    map['description'] = _description;
    map['tags'] = _tags;
    return map;
  }

  Alerts copyWith({
    String? senderName,
    String? event,
    num? start,
    num? end,
    String? description,
    List<String>? tags,
  }) =>
      Alerts(
        senderName: senderName ?? _senderName,
        event: event ?? _event,
        start: start ?? _start,
        end: end ?? _end,
        description: description ?? _description,
        tags: tags ?? _tags,
      );
}