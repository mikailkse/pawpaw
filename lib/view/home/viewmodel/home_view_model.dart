import 'package:pawpaw/view/home/service/home_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/viewmodel/base_view_model.dart';
import '../../../core/init/product/utility/model/breeds_request_model.dart';

part 'home_view_model.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store, BaseViewModel {
  _HomeViewModelBase(this.homeService) {
    init();
  }
  @override
  void setContext(BuildContext context) => context = context;

  @override
  void init() {
    fetchBreedsRequestModel();
  }

  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @action
  Future<List<BreedsRequestModel?>> fetchBreedsRequestModel() async {
    changeIsLoading();
    final response = await homeService?.fetchBreedsRequestModel();
    breedsRequestModel = (response ?? []).cast<BreedsRequestModel>();
    changeIsLoading();
    return response ?? [];
  }

  @observable
  List<BreedsRequestModel>? breedsRequestModel = [];

  @observable
  HomeService? homeService;

  @observable
  bool isLoading = false;

  @action
  void changeIsLoading() {
    isLoading = !isLoading;
  }
}
