import 'package:healthpayments/models/credit_cards.dart';

class Order {
  String value;
  PaymentInstrument paymentInstrument;
  PaymentRequest paymentRequest;
  Type type;
  PaymentInstrument product;
  PaymentInstrument contract;

  Order(this.value, this.paymentInstrument, this.paymentRequest, this.type,
      this.product, this.contract);

  Order.fromJson(Map<String, dynamic> json)
      : value = json['value'],
        paymentInstrument = json['paymentInstrument'],
        paymentRequest = json['paymentRequest'],
        type = json['type'],
        product = json['product'],
        contract = json['contract'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    if (this.paymentInstrument != null) {
      data['paymentInstrument'] = this.paymentInstrument.toJson();
    }
    if (this.paymentRequest != null) {
      data['paymentRequest'] = this.paymentRequest.toJson();
    }
    data['type'] = this.type;
    if (this.product != null) {
      data['product'] = this.product.toJson();
    }
    if (this.contract != null) {
      data['contract'] = this.contract.toJson();
    }
    return data;
  }
}

class PaymentInstrument {
  String id;

  PaymentInstrument({required this.id});

  PaymentInstrument.fromJson(Map<String, dynamic> json) : id = json['id'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    return data;
  }
}

class PaymentRequest {
  String method;
  bool storeCard;
  CreditCard creditCard;

  PaymentRequest(this.method, this.storeCard, this.creditCard);

  PaymentRequest.fromJson(Map<String, dynamic> json)
      : method = json['method'],
        storeCard = json['storeCard'],
        creditCard = json['creditCard'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['method'] = this.method;
    data['storeCard'] = this.storeCard;
    if (this.creditCard != null) {
      data['creditCard'] = this.creditCard.toJson();
    }
    return data;
  }
}
