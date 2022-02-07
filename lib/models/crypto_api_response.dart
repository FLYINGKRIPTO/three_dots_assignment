import 'package:json_annotation/json_annotation.dart';
import 'coin_info.dart';
part 'crypto_api_response.g.dart';

@JsonSerializable()
class CryptoResponse {
  final String? Message;
  final List<Coin>? Data;

  CryptoResponse({
    required this.Message,
    required this.Data,
  });

  factory CryptoResponse.fromJson(Map<String, dynamic> json) => _$CryptoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CryptoResponseToJson(this);

}

@JsonSerializable()
class Coin {
  CoinsInfo? CoinInfo;
  Raw? RAW;

  Coin({required this.CoinInfo, required this.RAW});

  factory Coin.fromJson(Map<String, dynamic> json) => _$CoinFromJson(json);

  Map<String, dynamic> toJson() => _$CoinToJson(this);
}

@JsonSerializable()
class Raw {
  Usd? USD;

  Raw({required this.USD});

  factory Raw.fromJson(Map<String, dynamic> json) => _$RawFromJson(json);

  Map<String, dynamic> toJson() => _$RawToJson(this);
}

@JsonSerializable()
class Usd {
  final double? PRICE;
  final double? CHANGEDAY;
  final double? OPENDAY;
  final double? HIGHDAY;
  final double? LOWDAY;

  Usd(
      {required this.PRICE,
      required this.CHANGEDAY,
      required this.HIGHDAY,
      required this.LOWDAY,
      required this.OPENDAY});


  factory Usd.fromJson(Map<String, dynamic> json) => _$UsdFromJson(json);

  Map<String, dynamic> toJson() => _$UsdToJson(this);
}
