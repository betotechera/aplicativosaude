class CreditCard {
  String issuerDocument;
  String holderName;
  String number;
  String expiryMonth;
  String expiryYear;
  String securityCode;

  CreditCard(this.issuerDocument,
      this.holderName,
      this.number,
      this.expiryMonth,
      this.expiryYear,
      this.securityCode);


  CreditCard.fromJson(Map<String, dynamic> json) :
    issuerDocument = json['issuerDocument'],
    holderName = json['holderName'],
    number = json['number'],
    expiryMonth = json['expiryMonth'],
    expiryYear = json['expiryYear'],
    securityCode = json['securityCode'];


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['issuerDocument'] = this.issuerDocument;
    data['holderName'] = this.holderName;
    data['number'] = this.number;
    data['expiryMonth'] = this.expiryMonth;
    data['expiryYear'] = this.expiryYear;
    data['securityCode'] = this.securityCode;
    return data;
  }
}
