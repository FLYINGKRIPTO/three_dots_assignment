import 'package:json_annotation/json_annotation.dart';

part 'coin_info.g.dart';

@JsonSerializable()
class CoinsInfo {
  final String? Id;
  final String? FullName;
  final String? Name;
  final String? ImageUrl;
  final double? BlockNumber;

  CoinsInfo(
      {required this.Id,
      required this.FullName,
      required this.Name,
      required this.ImageUrl,
      required this.BlockNumber});


  factory CoinsInfo.fromJson(Map<String, dynamic> json) => _$CoinsInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CoinsInfoToJson(this);

}
