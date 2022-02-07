// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinsInfo _$CoinsInfoFromJson(Map<String, dynamic> json) => CoinsInfo(
      Id: json['Id'] as String?,
      FullName: json['FullName'] as String?,
      Name: json['Name'] as String?,
      ImageUrl: json['ImageUrl'] as String?,
      BlockNumber: (json['BlockNumber'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CoinsInfoToJson(CoinsInfo instance) => <String, dynamic>{
      'Id': instance.Id,
      'FullName': instance.FullName,
      'Name': instance.Name,
      'ImageUrl': instance.ImageUrl,
      'BlockNumber': instance.BlockNumber,
    };
