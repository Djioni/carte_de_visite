import 'package:carte_de_visite/card_api.dart';
import 'package:carte_de_visite/user/models/user_model.dart';
import 'package:dio/dio.dart';

class UserService {
  final CardApi cardApi;

  UserService({
    this.cardApi,
  });

  Future<UserModel> getUserInfo() async {
    Response resp = await this.cardApi.getRequest("/getUser");
    print(resp.data);
    return UserModel.fromJson(resp.data[0]);
  }
}
