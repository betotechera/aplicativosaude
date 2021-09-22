class FinancierContact {
  String name;
  String cellPhone;
  String mail;

  FinancierContact(this.name, this.cellPhone, this.mail);

  FinancierContact.fromJson(Map<String, dynamic> json) :
    name = json['name'],
    cellPhone = json['cellPhone'],
    mail = json['mail'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['cellPhone'] = this.cellPhone;
    data['mail'] = this.mail;
    return data;
  }
}
