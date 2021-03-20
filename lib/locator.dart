import 'package:carte_de_visite/card_api.dart';
import 'package:carte_de_visite/config.dart';
import 'package:carte_de_visite/user/user_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
void setupLocator() {
  CardApi cardApi = CardApi(baseUrl: Config.SERVER_URL);
  locator.registerLazySingleton<CardApi>(
    () => cardApi,
  );
  locator
      .registerLazySingleton<UserService>(() => UserService(cardApi: cardApi));
}
