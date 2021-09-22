class LegalPersonDetail {
  String fantasyName;

  LegalPersonDetail({required this.fantasyName});

  LegalPersonDetail.fromJson(Map<String, dynamic> json) :
    fantasyName = json['fantasyName'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fantasyName'] = this.fantasyName;
    return data;
  }
}
