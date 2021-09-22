class Contractor {
  String id;
  String name;

  Contractor({required this.id, required this.name});
  @override
  String toString() {
    return 'Contractor code: $id, name: $name}';
  }

  Contractor.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        name = json['name'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
