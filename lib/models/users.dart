import 'package:flutter/foundation.dart';

class User {
  String id;
  String name;
  String surname;
  String email;
  String type;
  String institution;

  User({
    required this.id,
    required this.name,
    required this.surname,
    required this.email,
    required this.type,
    required this.institution,
  });

  @override
  String toString() {
    return 'Users: $id, name: $name, surname: $surname, email: $email, type: $type. usertype: $institution}';
  }

  User.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        surname = json['surname'],
        email = json['email'],
        type = json['type'],
        institution = json['usertype'];

  Map<String, dynamic> toJson() => {
        'id': this.id,
        'name': this.name,
        'surname': this.surname,
        'email': this.email,
        'type': this.type,
        'usertype': this.institution,
      };
}

class UserLogged {
  final User user;

  UserLogged(this.user);
}
