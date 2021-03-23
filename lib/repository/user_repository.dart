import 'package:carte_de_visite/model/user_response.dart';
import 'package:carte_de_visite/repository/user_api_repository.dart';

class UserRepository{
  UserApiProvider _apiProvider = UserApiProvider();

  Future<UserResponse> getUser(){
    return _apiProvider.getUser();
  }
}