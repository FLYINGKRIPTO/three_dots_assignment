// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CryptoResponse _$CryptoResponseFromJson(Map<String, dynamic> json) =>
    CryptoResponse(
      Message: json['Message'] as String?,
      Data: (json['Data'] as List<dynamic>?)
          ?.map((e) => Coin.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CryptoResponseToJson(CryptoResponse instance) =>
    <String, dynamic>{
      'Message': instance.Message,
      'Data': instance.Data,
    };

Coin _$CoinFromJson(Map<String, dynamic> json) => Coin(
      CoinInfo: json['CoinInfo'] == null
          ? null
          : CoinsInfo.fromJson(json['CoinInfo'] as Map<String, dynamic>),
      RAW: json['RAW'] == null
          ? null
          : Raw.fromJson(json['RAW'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CoinToJson(Coin instance) => <String, dynamic>{
      'CoinInfo': instance.CoinInfo,
      'RAW': instance.RAW,
    };

Raw _$RawFromJson(Map<String, dynamic> json) => Raw(
      USD: json['USD'] == null
          ? null
          : Usd.fromJson(json['USD'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RawToJson(Raw instance) => <String, dynamic>{
      'USD': instance.USD,
    };

Usd _$UsdFromJson(Map<String, dynamic> json) => Usd(
      PRICE: (json['PRICE'] as num?)?.toDouble(),
      CHANGEDAY: (json['CHANGEDAY'] as num?)?.toDouble(),
      HIGHDAY: (json['HIGHDAY'] as num?)?.toDouble(),
      LOWDAY: (json['LOWDAY'] as num?)?.toDouble(),
      OPENDAY: (json['OPENDAY'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UsdToJson(Usd instance) => <String, dynamic>{
      'PRICE': instance.PRICE,
      'CHANGEDAY': instance.CHANGEDAY,
      'OPENDAY': instance.OPENDAY,
      'HIGHDAY': instance.HIGHDAY,
      'LOWDAY': instance.LOWDAY,
    };
