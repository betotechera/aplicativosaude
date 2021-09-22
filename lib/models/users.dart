class User {
  String id;
  String name;
  String email;
  String type;
  String institution;

  User(this.id,
      this.name,
      this.email,
      this.type,
      this.institution,);

  @override
  String toString() {
    return 'Users: $id, name: $name, email: $email, type: $type. usertype: $institution}';
  }

  User.fromJson(Map<String, dynamic> json)
      :
        id = json['id'],
        name = json['name'],
        email = json['email'],
        type = json['type'],
        institution= json['usertype'];

  Map<String, dynamic> toJson() =>
      {
        'id' : this.id,
        'name': this.name,
        'email' : this.email,
        'type' : this.type,
        'usertype' : this.institution,
      };
}

class UserLogged {
  final User user;

  UserLogged(this.user);
}
