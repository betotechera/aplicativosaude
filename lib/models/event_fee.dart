import 'package:healthpayments/models/event.dart';
import 'package:intl/intl.dart';

class EventFee {
  Events event;
  Events establishment;
  DateTime expiration;
  double value;
  int privateValue;

  EventFee(this.event, this.establishment, this.expiration, this.value,
      this.privateValue);

  @override
  String toString() {
    return 'Contract Event: $event, establishment: $establishment, expiration: $expiration, value: $value privatevalue: $privateValue';
  }

  EventFee.fromJson(Map<String, dynamic> json)
      : event = json['event'],
        establishment = json['establishment'],
        expiration = DateFormat("yyyy-MM-dd'T'HH:mm:ssZ").parse(json['expiration']),
        value = json['value'],
        privateValue = json['privateValue'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.event != null) {
      data['event'] = this.event.toJson();
    }
    if (this.establishment != null) {
      data['establishment'] = this.establishment.toJson();
    }
    data['expiration'] = this.expiration;
    data['value'] = this.value;
    data['privateValue'] = this.privateValue;
    return data;
  }
}

