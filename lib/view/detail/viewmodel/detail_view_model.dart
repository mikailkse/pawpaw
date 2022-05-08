import 'package:pawpaw/view/detail/service/detail_service.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/viewmodel/base_view_model.dart';
import '../../../core/init/product/utility/model/breeds_request_model.dart';

part 'detail_view_model.g.dart';

class DetailViewModel = _DetailViewModelBase with _$DetailViewModel;

abstract class _DetailViewModelBase with Store, BaseViewModel {
  _DetailViewModelBase(this.detailService) {
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
    final response = await detailService?.fetchBreedsRequestModel();
    breedsRequestModel = (response ?? []).cast<BreedsRequestModel>();
    changeIsLoading();
    return response ?? [];
  }

  @observable
  List<BreedsRequestModel>? breedsRequestModel = [];

  @observable
  DetailService? detailService;

  @observable
  bool isLoading = false;

  @action
  void changeIsLoading() {
    isLoading = !isLoading;
  }
}
