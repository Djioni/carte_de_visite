import 'dart:convert';
import 'dart:developer';

import 'package:carte_de_visite/config/config.dart';
import 'package:carte_de_visite/model/user_response.dart';
import 'package:carte_de_visite/utils/logging_interceptors.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class UserApiProvider {
  final String _endpoint = Config.shareBaseUrl;
  Dio _dio;

  UserApiProvider() {
    BaseOptions options =
        BaseOptions(receiveTimeout: 10000, connectTimeout: 10000);
    _dio = Dio(options);
    _dio.interceptors.add(LoggingInterceptor());
  }

  Future<UserResponse> getUser() async {
    try {
      Response response = await _dio.get(_endpoint);
      log('data: $response.data');
      String receivedJson = """ $response.data """;
      List<dynamic> list = json.decode(receivedJson);
      return UserResponse.fromJson(list[0]);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return UserResponse.withError(_handleError(error));
    }
  }

  String _handleError(Error error) {
    String errorDescription = "";
    if (error is DioError) {
      DioError dioError = error as DioError;
      switch (dioError.type) {
        case DioErrorType.CANCEL:
          errorDescription = "Request to API server was cancelled";
          break;
        case DioErrorType.CONNECT_TIMEOUT:
          errorDescription = "Connection timeout with API server";
          break;
        case DioErrorType.DEFAULT:
          errorDescription =
              "Connection to API server failed due to internet connection";
          break;
        case DioErrorType.RECEIVE_TIMEOUT:
          errorDescription = "Receive timeout in connection with API server";
          break;
        case DioErrorType.RESPONSE:
          errorDescription =
              "Received invalid status code: ${dioError.response.statusCode}";
          break;
        case DioErrorType.SEND_TIMEOUT:
          errorDescription = "Send timeout in connection with API server";
          break;
      }
    } else {
      errorDescription = "Unexpected error occured";
    }
    return errorDescription;
  }
}