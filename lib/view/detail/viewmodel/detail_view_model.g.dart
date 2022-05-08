// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DetailViewModel on _DetailViewModelBase, Store {
  late final _$breedsRequestModelAtom =
      Atom(name: '_DetailViewModelBase.breedsRequestModel', context: context);

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

  late final _$detailServiceAtom =
      Atom(name: '_DetailViewModelBase.detailService', context: context);

  @override
  DetailService? get detailService {
    _$detailServiceAtom.reportRead();
    return super.detailService;
  }

  @override
  set detailService(DetailService? value) {
    _$detailServiceAtom.reportWrite(value, super.detailService, () {
      super.detailService = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_DetailViewModelBase.isLoading', context: context);

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
      '_DetailViewModelBase.fetchBreedsRequestModel',
      context: context);

  @override
  Future<List<BreedsRequestModel?>> fetchBreedsRequestModel() {
    return _$fetchBreedsRequestModelAsyncAction
        .run(() => super.fetchBreedsRequestModel());
  }

  late final _$_DetailViewModelBaseActionController =
      ActionController(name: '_DetailViewModelBase', context: context);

  @override
  void changeIsLoading() {
    final _$actionInfo = _$_DetailViewModelBaseActionController.startAction(
        name: '_DetailViewModelBase.changeIsLoading');
    try {
      return super.changeIsLoading();
    } finally {
      _$_DetailViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
breedsRequestModel: ${breedsRequestModel},
detailService: ${detailService},
isLoading: ${isLoading}
    ''';
  }
}
