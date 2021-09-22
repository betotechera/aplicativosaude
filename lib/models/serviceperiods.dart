import 'package:healthpayments/models/generic/situation.dart';

class ServicePeriods {
  Situation weekday;
  Situation situation;
  String beginServiceTime;
  String endServiceTime;
  String beginLunchTime;
  String endLunchTime;

  ServicePeriods(
      this.weekday,
        this.situation,
        this.beginServiceTime,
        this.endServiceTime,
        this.beginLunchTime,
        this.endLunchTime);

  ServicePeriods.fromJson(Map<String, dynamic> json) :
    weekday = json['weekday'],
    situation = json['situation'],
    beginServiceTime = json['beginServiceTime'],
    endServiceTime = json['endServiceTime'],
    beginLunchTime = json['beginLunchTime'],
    endLunchTime = json['endLunchTime'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['weekday'] = this.weekday.toJson();
    data['situation'] = this.situation.toJson();
    data['beginServiceTime'] = this.beginServiceTime;
    data['endServiceTime'] = this.endServiceTime;
    data['beginLunchTime'] = this.beginLunchTime;
    data['endLunchTime'] = this.endLunchTime;
    return data;
  }
}