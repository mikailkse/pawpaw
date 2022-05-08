import 'package:flutter/material.dart';

import '../../../core/base/view/base_widget.dart';
import '../viewmodel/splash_view_model.dart';
import '../widget/splash_screen_content.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashViewModel>(
      viewModel: SplashViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, SplashViewModel viewModel) {
        return const Scaffold(
          body: SplashScreenContent(),
        );
      },
    );
  }
}
