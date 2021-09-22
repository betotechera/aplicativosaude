// Characteristics of an individual

import 'package:intl/intl.dart';

class PhysicalPersonDetail {
  String email;
  DateTime birthDate;
  Type gender;

  PhysicalPersonDetail(this.email, this.birthDate, this.gender);

  PhysicalPersonDetail.fromJson(Map<String, dynamic> json) :
        email = json['email'],
        birthDate = DateFormat("yyyy-MM-dd'T'HH:mm:ssZ").parse(json['birthDate']),
        gender = json['gender'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['birthDate'] = this.birthDate;
    if (this.gender != null) {
      data['gender'] = this.gender;
    }
    return data;
  }
}