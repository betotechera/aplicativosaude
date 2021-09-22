import 'package:healthpayments/models/person.dart';

class Customer {
  Person person;

  Customer({required this.person});

  @override
  String toString() {
    return 'Contract person: $person}';
  }
  Customer.fromJson(Map<String, dynamic> json):
    person = (json['person'] != null ? new Person.fromJson(json['person']) : null)!;


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.person != null) {
      data['person'] = this.person.toJson();
    }
    return data;
  }
}


class Type {
  String code;

  Type({required this.code});

  @override
  String toString() {
    return 'Type: $code}';
  }

  Type.fromJson(Map<String, dynamic> json) :
    code = json['code'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    return data;
  }
}
