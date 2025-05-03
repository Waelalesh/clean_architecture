import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:json_annotation/json_annotation.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

part 'books_model.g.dart';

@JsonSerializable()
class BooksModel extends BookEntity {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BooksModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  }) : super(
          price: saleInfo?.listPrice?.amount ?? 0.0,
          autherName: volumeInfo?.authors?.first ?? "No Auther",
          bookId: id!,
          rating: num.parse(volumeInfo?.maturityRating ?? "0.0"),
          title: volumeInfo?.title ?? "No Title",
          image: volumeInfo?.imageLinks?.thumbnail ?? "",
        );

  factory BooksModel.fromJson(Map<String, dynamic> json) {
    return _$BooksModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BooksModelToJson(this);

  BooksModel copyWith({
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) {
    return BooksModel(
      kind: kind ?? this.kind,
      id: id ?? this.id,
      etag: etag ?? this.etag,
      selfLink: selfLink ?? this.selfLink,
      volumeInfo: volumeInfo ?? this.volumeInfo,
      saleInfo: saleInfo ?? this.saleInfo,
      accessInfo: accessInfo ?? this.accessInfo,
      searchInfo: searchInfo ?? this.searchInfo,
    );
  }
}
