// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinStats _$CoinStatsFromJson(Map<String, dynamic> json) => CoinStats(
      price: json['price'] as int,
      changeDay: json['changeDay'] as int,
      openDay: json['openDay'] as int,
      highDay: json['highDay'] as int,
      lowDay: json['lowDay'] as int,
    );

Map<String, dynamic> _$CoinStatsToJson(CoinStats instance) => <String, dynamic>{
      'price': instance.price,
      'changeDay': instance.changeDay,
      'openDay': instance.openDay,
      'highDay': instance.highDay,
      'lowDay': instance.lowDay,
    };
