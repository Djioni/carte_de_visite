import 'package:dio/dio.dart';

class CardApi {
  final String baseUrl;
  Dio _dio;

  CardApi({
    this.baseUrl,
  }) {
    _dio = new Dio(BaseOptions(
      baseUrl: this.baseUrl,
    ));
  }

  getRequest(String url) {
    return _dio.get(url);
  }
}
