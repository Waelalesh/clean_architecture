import 'package:json_annotation/json_annotation.dart';

part 'retail_price.g.dart';

@JsonSerializable()
class RetailPrice {
  double? amount;
  String? currencyCode;

  RetailPrice({this.amount, this.currencyCode});

  factory RetailPrice.fromJson(Map<String, dynamic> json) {
    return _$RetailPriceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RetailPriceToJson(this);

  RetailPrice copyWith({
    double? amount,
    String? currencyCode,
  }) {
    return RetailPrice(
      amount: amount ?? this.amount,
      currencyCode: currencyCode ?? this.currencyCode,
    );
  }
}
