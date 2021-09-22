class ServiceType {
  String code;
  String description;
  /// It groups the services provided by health establishments

  ServiceType({required this.code, required this.description});
  @override
  String toString() {
    return 'Service Type code: $code, description: $description}';
  }

  ServiceType.fromJson(Map<String, dynamic> json) :
    code = json['code'],
    description = json['description'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['description'] = this.description;
    return data;
  }
}
