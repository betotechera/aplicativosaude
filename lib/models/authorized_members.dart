// Authorized members correspond to legal or not legal dependents who are authorized by the
// main user to enjoy the health services offered by accredited health establishments.

import 'package:intl/intl.dart';

import 'package:healthpayments/models/contract.dart';

import 'generic/document.dart';
import 'generic/gender.dart';
import 'generic/state.dart';

class AuthorizedMembers {
  String id;
  Document document;
  String name;
  Gender gender;
  Gender relatedness;
  DateTime birthDate;
  String email;
  Contract contract;
  Contract paymentInstrument;

  AuthorizedMembers(
      this.id,
      this.document,
      this.name,
      this.gender,
      this.relatedness,
      this.birthDate,
      this.email,
      this.contract,
      this.paymentInstrument,
  );

  @override
  String toString() {
    return 'Authorized Members Id: $id, document: $document, name: $name, gender: $gender, relatedness: $relatedness, mail: $email, contract: $contract. paymentInstrument: $paymentInstrument}';
  }

  AuthorizedMembers.fromJson(Map<String, dynamic> json)
      :
        id = json['íd'],
        document = json['document'],
        name = json['name'],
        gender = json['gender'],
        relatedness = json['relatedness'],
        birthDate = DateFormat("yyyy-MM-dd'T'HH:mm:ssZ").parse(json['birthdate']),
        email = json['email'],
        contract = json['contract'],
        paymentInstrument = json['paymentInstrument'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['document'] = this.document.toJson();
    data['name'] = this.name;
    data['gender'] = this.gender.toJson();
    data['relatedness'] = this.relatedness.toJson();
    data['birthDate'] = this.birthDate;
    data['email'] = this.email;
    data['contract'] = this.contract.toJson();
    data['paymentInstrument'] = this.paymentInstrument.toJson();
    return data;
  }
}
