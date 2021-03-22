// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseApi _$ResponseApiFromJson(Map<String, dynamic> json) {
  return ResponseApi(
    json['username'] as String,
    json['behavior'] as String,
    json['balance'] as int,
    json['email'] as String,
    json['profile'] as String,
  );
}

Map<String, dynamic> _$ResponseApiToJson(ResponseApi instance) =>
    <String, dynamic>{
      'username': instance.username,
      'behavior': instance.behavior,
      'balance': instance.balance,
      'email': instance.email,
      'profile': instance.profile,
    };
