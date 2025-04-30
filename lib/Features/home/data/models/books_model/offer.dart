import 'package:json_annotation/json_annotation.dart';

import 'list_price.dart';
import 'retail_price.dart';

part 'offer.g.dart';

@JsonSerializable()
class Offer {
  int? finskyOfferType;
  ListPrice? listPrice;
  RetailPrice? retailPrice;

  Offer({this.finskyOfferType, this.listPrice, this.retailPrice});

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);

  Map<String, dynamic> toJson() => _$OfferToJson(this);

  Offer copyWith({
    int? finskyOfferType,
    ListPrice? listPrice,
    RetailPrice? retailPrice,
  }) {
    return Offer(
      finskyOfferType: finskyOfferType ?? this.finskyOfferType,
      listPrice: listPrice ?? this.listPrice,
      retailPrice: retailPrice ?? this.retailPrice,
    );
  }
}
