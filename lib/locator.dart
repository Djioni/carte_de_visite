import 'package:carte_de_visite/user/user_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton<UserService>(() => UserService());
}
