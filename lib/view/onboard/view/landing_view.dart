import 'package:pawpaw/core/constants/app/app_constants.dart';
import 'package:pawpaw/view/home/view/home_view.dart';
import 'package:pawpaw/view/onboard/widget/landing_view_template.dart';
import 'package:flutter/material.dart';

import '../../../core/base/view/base_widget.dart';
import '../../../core/constants/enums/locale_keys_enum.dart';
import '../../../core/init/cache/preferences/shared_preferences/shared_prefereneces_manager.dart';
import '../../../core/init/navigation/navigation_service.dart';
import '../viewmodel/landing_view_model.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({Key? key}) : super(key: key);
  static const routeName = "onBoardView";

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BaseView<LandingViewModel>(
      viewModel: LandingViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, LandingViewModel viewModel) =>
          Scaffold(
        body: PageView(
          controller: pageController,
          children: [
            OnBoardViewTemplate(
              title: 'Find Undiscovered Cats With Us',
              description: 'Start Discovering Over 1000 Cat Breeds',
              lottieAsset: AppConstants.landingWelcomeCat,
              controller: pageController,
              onPressed: () => pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear),
            ),
            OnBoardViewTemplate(
              title: 'Find Undiscovered Cats With Us',
              description: 'Start Discovering Over 1000 Cat Breeds',
              lottieAsset: AppConstants.landingWelcomeCat1,
              controller: pageController,
              onPressed: () async {
                final localeManager = await LocaleManager.instance();
                localeManager.setBoolValue(
                    PreferencesKeys.LOGGED_IN_BEFORE, true);
                NavigationService.instance
                    .navigateToPageClear(path: HomeView.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
