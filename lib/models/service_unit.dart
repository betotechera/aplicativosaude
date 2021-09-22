import 'package:healthpayments/models/generic/address.dart';
import 'package:healthpayments/models/generic/headoffice.dart';
import 'package:healthpayments/models/generic/situation.dart';
import 'package:healthpayments/models/serviceperiods.dart';
import 'package:healthpayments/models/services.dart';

class ServiceUnit {
  HeadOffice headOffice;
  Situation situation;
  String name;
  String fantasyName;
  String shortName;
  String contactMail;
  String returningDeadline;
  List<String> gatheringChannels;
  List<Services> services;
  Address address;
  List<ServicePeriods> servicePeriods;

  ServiceUnit(
      this.headOffice,
      this.situation,
      this.name,
      this.fantasyName,
      this.shortName,
      this.contactMail,
      this.returningDeadline,
      this.gatheringChannels,
      this.services,
      this.address,
      this.servicePeriods);

  ServiceUnit.fromJson(Map<String, dynamic> json) :
    headOffice = json['headOffice'],
    situation = json['situation'],
    name = json['name'],
    fantasyName = json['fantasyName'],
    shortName = json['shortName'],
    contactMail = json['contactMail'],
    returningDeadline = json['returningDeadline'],
    gatheringChannels = json['gatheringChannels'].cast<String>(),
    services = <Services>[],
    address = json['address'],
    servicePeriods = <ServicePeriods>[];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.headOffice != null) {
      data['headOffice'] = this.headOffice.toJson();
    }
    if (this.situation != null) {
      data['situation'] = this.situation.toJson();
    }
    data['name'] = this.name;
    data['fantasyName'] = this.fantasyName;
    data['shortName'] = this.shortName;
    data['contactMail'] = this.contactMail;
    data['returningDeadline'] = this.returningDeadline;
    data['gatheringChannels'] = this.gatheringChannels;
    if (this.services != null) {
      data['services'] = this.services.map((v) => v.toJson()).toList();
    }
    if (this.address != null) {
      data['address'] = this.address.toJson();
    }
    if (this.servicePeriods != null) {
      data['servicePeriods'] =
          this.servicePeriods.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
