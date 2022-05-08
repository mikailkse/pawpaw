import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/viewmodel/base_view_model.dart';

part 'landing_view_model.g.dart';

class LandingViewModel = _LandingViewModelBase with _$LandingViewModel;

abstract class _LandingViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => context = context;

  @override
  void init() {}

  @observable
  bool isLoading = false;

  @action
  void changeIsLoading() {
    isLoading = !isLoading;
  }

  PageController? controller;
}
