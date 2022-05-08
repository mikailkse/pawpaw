import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/viewmodel/base_view_model.dart';
import '../../../core/init/product/utility/model/breeds_request_model.dart';
import '../service/search_service.dart';

part 'search_view_model.g.dart';

class SearchViewModel = _SearchViewModelBase with _$SearchViewModel;

abstract class _SearchViewModelBase with Store, BaseViewModel {
  _SearchViewModelBase(this.searchService) {
    init();
  }
  @override
  void setContext(BuildContext context) => context = context;

  @override
  void init() {}

  GlobalKey<FormState> formState = GlobalKey();
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @action
  Future<List<BreedsRequestModel>?> fetchBreedsSearch(String query) async {
    changeIsLoading();
    final response = await searchService?.fetchBreedsSearch(query);
    breedsRequestModel = response ?? [];
    changeIsLoading();
    return response ?? [];
  }

  @observable
  List<BreedsRequestModel>? breedsRequestModel = [];

  @observable
  SearchService? searchService;

  @observable
  bool isLoading = false;

  @action
  void changeIsLoading() {
    isLoading = !isLoading;
  }
}
