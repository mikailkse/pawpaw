import '../../../core/init/product/utility/get_it.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/viewmodel/base_view_model.dart';
import '../../../core/init/product/utility/model/breeds_request_model.dart';
import '../../favorite/viewmodel/favorite_view_model.dart';

part 'catdetail_view_model.g.dart';

class CatDetailViewModel = _CatDetailViewModelBase with _$CatDetailViewModel;

abstract class _CatDetailViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => context = context;

  @override
  void init() {}

  var myFavoriteModel = getIt.get<FavoriteViewModel>().favorites;

  @observable
  BreedsRequestModel? breedsRequestModel;

  @action
  addFavorites(BreedsRequestModel breedsRequestModel) {
    myFavoriteModel.add(breedsRequestModel);
  }

  @observable
  bool isLoading = false;

  @action
  void changeIsLoading() {
    isLoading = !isLoading;
  }
}
