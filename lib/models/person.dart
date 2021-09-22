import 'package:healthpayments/models/generic/address.dart';
import 'package:healthpayments/models/generic/document.dart';
import 'package:healthpayments/models/legalpersonaldetails.dart';

import 'generic/state.dart';

class Person {
  Document document;
  State type;
  String shortName;
  String name;
  LegalPersonDetail legalPersonDetail;
  String telephone;
  Address address;

  Person(this.document, this.type, this.shortName, this.name,
      this.legalPersonDetail, this.telephone, this.address);

  Person.fromJson(Map<String, dynamic> json)
      : document = json['document'],
        type = json['type'],
        shortName = json['shortname'],
        name = json['name'],
        legalPersonDetail = json['legalPersonDetail'],
        telephone = json['telephone'],
        address = json['address'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['document'] = this.document;
    data['type'] = this.type.toJson();
    data['shortName'] = this.shortName;
    data['name'] = this.name;
    data['legalPersonDetail'] = this.legalPersonDetail.toJson();
    data['telephone'] = this.telephone;
    data['address'] = this.address.toJson();
    return data;
  }
}
