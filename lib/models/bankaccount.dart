import 'package:healthpayments/models/bank.dart';

class BankAccount {
  String type;
  Bank bank;
  String agency;
  String agencyDigit;
  String accountNumber;
  String accountNumberDigit;

  BankAccount(
      this.type,
        this.bank,
        this.agency,
        this.agencyDigit,
        this.accountNumber,
        this.accountNumberDigit);

  BankAccount.fromJson(Map<String, dynamic> json) :
    type = json['type'],
    bank = json['bank'],
    agency = json['agency'],
    agencyDigit = json['agencyDigit'],
    accountNumber = json['accountNumber'],
    accountNumberDigit = json['accountNumberDigit'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
      data['bank'] = this.bank.toJson();
    data['agency'] = this.agency;
    data['agencyDigit'] = this.agencyDigit;
    data['accountNumber'] = this.accountNumber;
    data['accountNumberDigit'] = this.accountNumberDigit;
    return data;
  }
}