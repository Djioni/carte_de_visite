

import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class ResponseApi{
  String username;
  String behavior;
  int balance;
  String email;
  String profile;


  ResponseApi(
      this.username, this.behavior, this.balance, this.email, this.profile);

  factory ResponseApi.fromJson(Map<String, dynamic> json) => _$ResponseApiFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseApiToJson(this);

}
