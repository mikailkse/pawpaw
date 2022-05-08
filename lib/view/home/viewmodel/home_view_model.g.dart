// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$breedsRequestModelAtom =
      Atom(name: '_HomeViewModelBase.breedsRequestModel', context: context);

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

  late final _$homeServiceAtom =
      Atom(name: '_HomeViewModelBase.homeService', context: context);

  @override
  HomeService? get homeService {
    _$homeServiceAtom.reportRead();
    return super.homeService;
  }

  @override
  set homeService(HomeService? value) {
    _$homeServiceAtom.reportWrite(value, super.homeService, () {
      super.homeService = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_HomeViewModelBase.isLoading', context: context);

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

  late final _$fetchBreedsRequestModelAsyncAction = AsyncAction(
      '_HomeViewModelBase.fetchBreedsRequestModel',
      context: context);

  @override
  Future<List<BreedsRequestModel?>> fetchBreedsRequestModel() {
    return _$fetchBreedsRequestModelAsyncAction
        .run(() => super.fetchBreedsRequestModel());
  }

  late final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase', context: context);

  @override
  void changeIsLoading() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.changeIsLoading');
    try {
      return super.changeIsLoading();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
breedsRequestModel: ${breedsRequestModel},
homeService: ${homeService},
isLoading: ${isLoading}
    ''';
  }
}
