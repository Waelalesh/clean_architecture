import 'package:json_annotation/json_annotation.dart';

part 'list_price.g.dart';

@JsonSerializable()
class ListPrice {
  num? amount;
  String? currencyCode;

  ListPrice({this.amount, this.currencyCode});

  factory ListPrice.fromJson(Map<String, dynamic> json) {
    return _$ListPriceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ListPriceToJson(this);

  ListPrice copyWith({
    num? amount,
    String? currencyCode,
  }) {
    return ListPrice(
      amount: amount ?? this.amount,
      currencyCode: currencyCode ?? this.currencyCode,
    );
  }
}
