class Bank {
  int bacenCode;
  String name;

  Bank(this.bacenCode, this.name);

  Bank.fromJson(Map<String, dynamic> json) :
    bacenCode = json['bacenCode'],
    name = json['name'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bacenCode'] = this.bacenCode;
    data['name'] = this.name;
    return data;
  }
}
