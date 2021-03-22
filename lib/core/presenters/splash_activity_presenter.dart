
import 'package:dio/dio.dart';
import 'package:visit_card/core/webservices/api_service.dart';



import 'contracts/splash_activity_contract.dart';

class SplashActivityPresenter implements SplashActivityInteractor{
  SplashActivityView view;
  SplashActivityPresenter(this.view);
  RestClient api = RestClient(Dio());

  @override
  void splash() {

  }

  @override
  void success() async {

  }

  @override
  void destroy() => view = null;


}

