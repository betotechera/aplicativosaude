import 'dart:ffi';
import 'package:intl/intl.dart';

class ServicePerformed {
  String events;
  DateTime date;
  String serviceType;
  String valueService;

  /// Records the scheduling data of a health service

  ServicePerformed(this.serviceType, this.events, this.date, this.valueService);

  @override
  String toString() {
    return 'ServicePerformed serviceType: $serviceType, events: $events, date: $date, valueService: $valueService}';
  }

  ServicePerformed.fromJson(Map<String, dynamic> json)
      : serviceType = json['serviceType'],
        events = json['events'],
        date = DateFormat("yyyy-MM-dd'T'HH:mm:ssZ").parse(json['date']),
        valueService = json['valueService'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['serviceType'] = this.serviceType;
    data['events'] = this.events; //.map((v) => v.toJson()).toList();
    data['date'] = this.date;
    data['valueService']=this.valueService;
    return data;
  }
}
