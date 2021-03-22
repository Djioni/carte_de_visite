
import 'package:visit_card/core/models/result/response.dart';
import 'package:visit_card/core/webservices/api_service.dart';
import 'package:dio/dio.dart';

import 'contracts/home_activity_contract.dart';



class HomeActivityPresenter implements HomeActivityInteractor {
  HomeActivityView view;
  HomeActivityPresenter(this.view);
  RestClient api = RestClient(Dio());
  ResponseApi result;
  bool loading = true;

  @override
  Future<void> callApi() async {
    loading = true;
    await api.getInfosAsync().then((it){
      if(it != null){
        result = it.first;
        view?.onLoadComplete(result);
        print(result.toJson());
        loading = false;
        view?.toast("Api success");
        //view?.finish();
      }else{
        loading = false;
        view?.toast("Api Error");
      }
    }).catchError((e){
      switch (e.runtimeType) {
        case DioError:
          loading = false;
        // Here's the sample to get the failed response error code and message
          final res = (e as DioError).response;
          view?.toast("Got error : ${res.statusCode} -> ${res.statusMessage}");
          print("Got error : ${res.statusCode} -> ${res.statusMessage}");
          break;
        default:
          print("Exception $e");
          view?.toast("CallApi Error");
      }
    });
  }

  @override
  void destroy() => view = null;
}