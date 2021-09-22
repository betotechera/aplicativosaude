// Identify the gender of an individual

class Gender {
  String code;
  String description;

  Gender(this.code, this.description);

  Gender.fromJson(Map<String, dynamic> json)
      : code = json['code'],
        description = json['description'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['description'] = this.description;
    return data;
  }
}
