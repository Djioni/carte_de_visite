// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wrapped_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WrappedResponse _$WrappedResponseFromJson(Map<String, dynamic> json) {
  return WrappedResponse()
    ..Username = json['Username'] as String
    ..Behavior = json['Behavior'] as String
    ..Balance = json['Balance'] as int
    ..Email = json['Email'] as String
    ..Profile = json['Profile'] as String;
}

Map<String, dynamic> _$WrappedResponseToJson(WrappedResponse instance) =>
    <String, dynamic>{
      'Username': instance.Username,
      'Behavior': instance.Behavior,
      'Balance': instance.Balance,
      'Email': instance.Email,
      'Profile': instance.Profile,
    };
