import 'package:json_annotation/json_annotation.dart';

part 'wrapped_response.g.dart';

@JsonSerializable()
class WrappedResponse{
  @JsonKey(name: "Username")
  String Username;
  @JsonKey(name: "Behavior")
  String Behavior;
  @JsonKey(name: "Balance")
  int Balance;
  @JsonKey(name: "Email")
  String Email;
  @JsonKey(name: "Profile")
  String Profile;

  WrappedResponse();

  factory WrappedResponse.fromJson(Map<String, dynamic> json) => _$WrappedResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WrappedResponseToJson(this);

}
