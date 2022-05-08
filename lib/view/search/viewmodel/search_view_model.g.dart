// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchViewModel on _SearchViewModelBase, Store {
  late final _$breedsRequestModelAtom =
      Atom(name: '_SearchViewModelBase.breedsRequestModel', context: context);

  @override
  List<BreedsRequestModel>? get breedsRequestModel {
    _$breedsRequestModelAtom.reportRead();
    return super.breedsRequestModel;
  }

  @override
  set breedsRequestModel(List<BreedsRequestModel>? value) {
    _$breedsRequestModelAtom.reportWrite(value, super.breedsRequestModel, () {
      super.breedsRequestModel = value;
    });
  }

  late final _$searchServiceAtom =
      Atom(name: '_SearchViewModelBase.searchService', context: context);

  @override
  SearchService? get searchService {
    _$searchServiceAtom.reportRead();
    return super.searchService;
  }

  @override
  set searchService(SearchService? value) {
    _$searchServiceAtom.reportWrite(value, super.searchService, () {
      super.searchService = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_SearchViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$fetchBreedsSearchAsyncAction =
      AsyncAction('_SearchViewModelBase.fetchBreedsSearch', context: context);

  @override
  Future<List<BreedsRequestModel>?> fetchBreedsSearch(String query) {
    return _$fetchBreedsSearchAsyncAction
        .run(() => super.fetchBreedsSearch(query));
  }

  late final _$_SearchViewModelBaseActionController =
      ActionController(name: '_SearchViewModelBase', context: context);

  @override
  void changeIsLoading() {
    final _$actionInfo = _$_SearchViewModelBaseActionController.startAction(
        name: '_SearchViewModelBase.changeIsLoading');
    try {
      return super.changeIsLoading();
    } finally {
      _$_SearchViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
breedsRequestModel: ${breedsRequestModel},
searchService: ${searchService},
isLoading: ${isLoading}
    ''';
  }
}
