// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FavoriteViewModel on _FavoriteViewModelBase, Store {
  late final _$favoritesAtom =
      Atom(name: '_FavoriteViewModelBase.favorites', context: context);

  @override
  List<BreedsRequestModel> get favorites {
    _$favoritesAtom.reportRead();
    return super.favorites;
  }

  @override
  set favorites(List<BreedsRequestModel> value) {
    _$favoritesAtom.reportWrite(value, super.favorites, () {
      super.favorites = value;
    });
  }

  late final _$breedsRequestModelAtom =
      Atom(name: '_FavoriteViewModelBase.breedsRequestModel', context: context);

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
      Atom(name: '_FavoriteViewModelBase.isLoading', context: context);

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

  late final _$_FavoriteViewModelBaseActionController =
      ActionController(name: '_FavoriteViewModelBase', context: context);

  @override
  void changeIsLoading() {
    final _$actionInfo = _$_FavoriteViewModelBaseActionController.startAction(
        name: '_FavoriteViewModelBase.changeIsLoading');
    try {
      return super.changeIsLoading();
    } finally {
      _$_FavoriteViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favorites: ${favorites},
breedsRequestModel: ${breedsRequestModel},
isLoading: ${isLoading}
    ''';
  }
}
