class Situation {
  String code;

  Situation({required this.code});

  Situation.fromJson(Map<String, dynamic> json) :
    code = json['code'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    return data;
  }
}