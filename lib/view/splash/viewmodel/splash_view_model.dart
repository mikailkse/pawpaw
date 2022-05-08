import 'package:pawpaw/view/home/view/home_view.dart';
import 'package:pawpaw/view/onboard/view/landing_view.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/viewmodel/base_view_model.dart';
import '../../../core/constants/enums/locale_keys_enum.dart';
import '../../../core/init/cache/preferences/shared_preferences/shared_prefereneces_manager.dart';
import '../../../core/init/navigation/navigation_service.dart';

part 'splash_view_model.g.dart';

class SplashViewModel = _SplashViewModelBase with _$SplashViewModel;

abstract class _SplashViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => context = context;

  @override
  void init() {
    navigateAfterDelay();
  }

  Future<void> navigateAfterDelay() async {
    final localeManager = await LocaleManager.instance();
    final loggedInBefore =
        localeManager.getBoolValue(PreferencesKeys.LOGGED_IN_BEFORE);
    if (!loggedInBefore) {
      return Future.delayed(const Duration(seconds: 3), () {
        NavigationService.instance
            .navigateToPageClear(path: OnBoardView.routeName);
      });
    }
    return Future.delayed(const Duration(seconds: 3), () {
      NavigationService.instance.navigateToPageClear(path: HomeView.routeName);
    });
  }
}
