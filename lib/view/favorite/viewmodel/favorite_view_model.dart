import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/viewmodel/base_view_model.dart';
import '../../../core/init/product/utility/model/breeds_request_model.dart';

part 'favorite_view_model.g.dart';

class FavoriteViewModel = _FavoriteViewModelBase with _$FavoriteViewModel;

abstract class _FavoriteViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => context = context;

  @observable
  List<BreedsRequestModel> favorites = [];

  @observable
  BreedsRequestModel? breedsRequestModel;

  @override
  void init() {}

  @observable
  bool isLoading = false;

  @action
  void changeIsLoading() {
    isLoading = !isLoading;
  }
}
