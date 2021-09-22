class State {
  String code;
  String description;

  State(this.code, this.description);

  State.fromJson(Map<String, dynamic> json) :
    code = json['code'],
    description = json['description'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['description'] = this.description;
    return data;
  }
}
