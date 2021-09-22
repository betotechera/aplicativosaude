// Document corresponds to the type and number of the person's identification document

import 'package:intl/intl.dart';

class Document {
  String number;
  String type;

  Document(this.number, this.type);

  @override
  String toString() {
    return 'Document number: $number, type: $type}';
  }

  Document.fromJson(Map<String, dynamic> json)
      : number = json['number'],
        type = json['type'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['type'] = this.type;
    return data;
  }
}