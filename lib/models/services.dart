class Services {
  String id;
  int code;
  String name;

  Services(this.id, this.code, this.name);

  Services.fromJson(Map<String, dynamic> json) :
    id = json['id'],
    code = json['code'],
    name = json['name'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['name'] = this.name;
    return data;
  }
}