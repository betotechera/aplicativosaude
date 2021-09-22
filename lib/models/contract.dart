class Contract {
  String id;
  Contract({required this.id});

  @override
  String toString() {
    return 'Contract Id: $id}';
  }

  Contract.fromJson(Map<String, dynamic> json) :
        id = json['id'];



  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    return data;
  }
}
