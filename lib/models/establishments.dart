//Accredited Health Facility Data

import 'package:healthpayments/models/financialcontact.dart';
import 'package:healthpayments/models/generic/state.dart';
import 'package:healthpayments/models/network.dart';
import 'package:healthpayments/models/person.dart';
import 'package:healthpayments/models/services.dart';

import 'bankaccount.dart';

class Establishments {
  Person person;
  State type;
  String contactMail;
  String invoiceMail;
  String bachShipmentMail;
  double fee;
  String returningDeadline;
  Network network;
  int cancellationTolerance;
  List<Services> services;
  FinancierContact financierContact;
  List<String> gatheringChannels;
  BankAccount bankAccount;
  Checkout checkout;
  InvoiceReceipt invoiceReceipt;
  State issueInvoiceType;
  List<Null> servicePeriods;

  Establishments(
      this.person,
      this.type,
      this.contactMail,
      this.invoiceMail,
      this.bachShipmentMail,
      this.fee,
      this.returningDeadline,
      this.network,
      this.cancellationTolerance,
      this.services,
      this.financierContact,
      this.gatheringChannels,
      this.bankAccount,
      this.checkout,
      this.invoiceReceipt,
      this.issueInvoiceType,
      this.servicePeriods);

  @override
  String toString() {
    return 'Establishments person: $person, contactEmail: $contactMail, network: $network}';
  }

  Establishments.fromJson(Map<String, dynamic> json)
      : person = (json['person'] != null
            ? new Person.fromJson(json['person'])
            : null)!,
        type =
            (json['type'] != null ? new State.fromJson(json['type']) : null)!,
        contactMail = json['contactMail'],
        invoiceMail = json['invoiceMail'],
        bachShipmentMail = json['bachShipmentMail'],
        fee = json['fee'],
        returningDeadline = json['returningDeadline'],
        network = (json['network'] != null
            ? new Network.fromJson(json['network'])
            : null)!,
        cancellationTolerance = json['cancellationTolerance'],
        services = <Services>[],
        financierContact = (json['financierContact'] != null
            ? new FinancierContact.fromJson(json['financierContact'])
            : null)!,
        gatheringChannels = json['gatheringChannels'].cast<String>(),
        bankAccount = (json['bankAccount'] != null
            ? new BankAccount.fromJson(json['bankAccount'])
            : null)!,
        checkout = (json['checkout'] != null
            ? new Checkout.fromJson(json['checkout'])
            : null)!,
        invoiceReceipt = (json['invoiceReceipt'] != null
            ? new InvoiceReceipt.fromJson(json['invoiceReceipt'])
            : null)!,
        issueInvoiceType = (json['issueInvoiceType'] != null
            ? new State.fromJson(json['issueInvoiceType'])
            : null)!,
        servicePeriods = <Null>[];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['person'] = this.person.toJson();
    data['type'] = this.type.toJson();
    data['contactMail'] = this.contactMail;
    data['invoiceMail'] = this.invoiceMail;
    data['bachShipmentMail'] = this.bachShipmentMail;
    data['fee'] = this.fee;
    data['returningDeadline'] = this.returningDeadline;
    data['network'] = this.network.toJson();
    data['cancellationTolerance'] = this.cancellationTolerance;
    data['services'] = this.services.map((v) => v.toJson()).toList();
    data['financierContact'] = this.financierContact.toJson();
    data['gatheringChannels'] = this.gatheringChannels;
    data['bankAccount'] = this.bankAccount.toJson();
    data['checkout'] = this.checkout.toJson();
    data['invoiceReceipt'] = this.invoiceReceipt.toJson();
    data['issueInvoiceType'] = this.issueInvoiceType.toJson();
    data['servicePeriods'] = this.servicePeriods;
    return data;
  }
}

class Checkout {
  String period;
  double minimumDepositValue;
  int closingPaymentDays;

  Checkout(this.period, this.minimumDepositValue, this.closingPaymentDays);

  Checkout.fromJson(Map<String, dynamic> json)
      : period = json['period'],
        minimumDepositValue = json['minimumDepositValue'],
        closingPaymentDays = json['closingPaymentDays'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['period'] = this.period;
    data['minimumDepositValue'] = this.minimumDepositValue;
    data['closingPaymentDays'] = this.closingPaymentDays;
    return data;
  }
}

class InvoiceReceipt {
  String type;
  String period;

  InvoiceReceipt(this.type, this.period);

  InvoiceReceipt.fromJson(Map<String, dynamic> json)
      : type = json['type'],
        period = json['period'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['period'] = this.period;
    return data;
  }
}
