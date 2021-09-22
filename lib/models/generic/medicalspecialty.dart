class MedicalSpecialty {
  String id;
  String name;

  MedicalSpecialty({required this.id, required this.name});
  @override
  String toString() {
    return 'Id: $id, name: $name}';
  }

  MedicalSpecialty.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
