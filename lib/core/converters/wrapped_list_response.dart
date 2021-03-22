import 'package:json_annotation/json_annotation.dart';

part 'wrapped_list_response.g.dart';

@JsonSerializable()
class WrappedListResponse {
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "status")
  String status;
  @JsonKey(name: "data")
  List<dynamic> data;

  WrappedListResponse();

  factory WrappedListResponse.fromJson(Map<String, dynamic> json) => _$WrappedListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WrappedListResponseToJson(this);


}