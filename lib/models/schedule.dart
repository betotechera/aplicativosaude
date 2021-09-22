import 'package:healthpayments/models/contract.dart';
import 'package:healthpayments/models/contractor.dart';
import 'package:healthpayments/models/order.dart';
import 'package:healthpayments/models/servicetype.dart';
import 'package:intl/intl.dart';
import 'event.dart';

class Schedule {
  Contract contract;
  Contractor contractor;
  PaymentInstrument paymentInstrument;
  ServiceType serviceType;
  List<Events> events;
  DateTime date;
  /// Records the scheduling data of a health service

  Schedule(this.contract, this.contractor, this.paymentInstrument,
      this.serviceType, this.events, this.date);

  @override
  String toString() {
    return 'Schedule contract: $contract, paymentInstrument: $paymentInstrument, servicetype: $serviceType, events: $events, date: $date}';
  }

  Schedule.fromJson(Map<String, dynamic> json)
      :
        contract = json['contract'],
        contractor = json['contractor'],
        paymentInstrument = json['paymentInstrument'],
        serviceType = json['serviceType'],
        events = json['events'],
        date = DateFormat("yyyy-MM-dd'T'HH:mm:ssZ").parse(json['date']);


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
      data['contract'] = this.contract.toJson();
      data['contractor'] = this.contractor.toJson();
      data['paymentInstrument'] = this.paymentInstrument.toJson();
      data['serviceType'] = this.serviceType.toJson();
      data['events'] = this.events.map((v) => v.toJson()).toList();
      data['date'] = this.date;
      return data;
    }
  }
