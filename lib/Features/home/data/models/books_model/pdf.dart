import 'package:json_annotation/json_annotation.dart';

part 'pdf.g.dart';

@JsonSerializable()
class Pdf {
  bool? isAvailable;
  String? acsTokenLink;

  Pdf({this.isAvailable, this.acsTokenLink});

  factory Pdf.fromJson(Map<String, dynamic> json) => _$PdfFromJson(json);

  Map<String, dynamic> toJson() => _$PdfToJson(this);

  Pdf copyWith({
    bool? isAvailable,
    String? acsTokenLink,
  }) {
    return Pdf(
      isAvailable: isAvailable ?? this.isAvailable,
      acsTokenLink: acsTokenLink ?? this.acsTokenLink,
    );
  }
}
