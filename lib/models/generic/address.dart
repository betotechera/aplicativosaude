//address of a company or individual
import 'state.dart';

class Address {
  String zipCode;
  String streetName;
  String number;
  Null complement;
  String district;
  String city;
  State state;
  Null latitude;
  Null longitude;

  Address(
      this.zipCode,
      this.streetName,
      this.number,
      this.complement,
      this.district,
      this.city,
      this.state,
      this.latitude,
      this.longitude);

  @override
  String toString() {
    return 'ZipCodw: $zipCode, streetname: $streetName, number: $number, complement: $complement, district: $district, city: $city, state: $state';
  }

  Address.fromJson(Map<String, dynamic> json) :
        zipCode = json['zipCode'],
        streetName = json['streetName'],
        number = json['number'],
        complement = json['complement'],
        district = json['district'],
        city = json['city'],
        state = json['state'], //!= null ? new State.fromJson(json['state']) : null,
        latitude = json['latitude'],
        longitude = json['longitude'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['zipCode'] = this.zipCode;
    data['streetName'] = this.streetName;
    data['number'] = this.number;
    data['complement'] = this.complement;
    data['district'] = this.district;
    data['city'] = this.city;
    if (this.state != null) {
      data['state'] = this.state.toJson();
    }
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}