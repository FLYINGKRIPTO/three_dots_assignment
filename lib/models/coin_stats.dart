import 'package:json_annotation/json_annotation.dart';
part 'coin_stats.g.dart';
@JsonSerializable()
class CoinStats {
  final int price;
  final int changeDay;
  final int openDay;
  final int highDay;
  final int lowDay;

  CoinStats({
    required this.price,
    required this.changeDay,
    required this.openDay,
    required this.highDay,
    required this.lowDay
  });

  factory CoinStats.fromJson(Map<String, dynamic> json) =>
      _$CoinStatsFromJson(json);

  Map<String, dynamic> toJson() => _$CoinStatsToJson(this);

}

