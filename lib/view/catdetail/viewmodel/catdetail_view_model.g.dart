// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catdetail_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CatDetailViewModel on _CatDetailViewModelBase, Store {
  late final _$breedsRequestModelAtom = Atom(
      name: '_CatDetailViewModelBase.breedsRequestModel', context: context);

  @override
  BreedsRequestModel? get breedsRequestModel {
    _$breedsRequestModelAtom.reportRead();
    return super.breedsRequestModel;
  }

  @override
  set breedsRequestModel(BreedsRequestModel? value) {
    _$breedsRequestModelAtom.reportWrite(value, super.breedsRequestModel, () {
      super.breedsRequestModel = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_CatDetailViewModelBase.isLoading', context: context);

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

  late final _$_CatDetailViewModelBaseActionController =
      ActionController(name: '_CatDetailViewModelBase', context: context);

  @override
  dynamic addFavorites(BreedsRequestModel breedsRequestModel) {
    final _$actionInfo = _$_CatDetailViewModelBaseActionController.startAction(
        name: '_CatDetailViewModelBase.addFavorites');
    try {
      return super.addFavorites(breedsRequestModel);
    } finally {
      _$_CatDetailViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeIsLoading() {
    final _$actionInfo = _$_CatDetailViewModelBaseActionController.startAction(
        name: '_CatDetailViewModelBase.changeIsLoading');
    try {
      return super.changeIsLoading();
    } finally {
      _$_CatDetailViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
breedsRequestModel: ${breedsRequestModel},
isLoading: ${isLoading}
    ''';
  }
}
