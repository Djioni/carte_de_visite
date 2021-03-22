import 'dart:io';
import 'package:dio/dio.dart';

import 'package:visit_card/core/models/result/response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://us-central1-savvy-expense.cloudfunctions.net/")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET("getUser")
  Future<List<ResponseApi>> getInfosAsync();
}



