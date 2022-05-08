import 'package:pawpaw/core/components/text/title_text.dart';
import 'package:pawpaw/core/extensions/contex_extensions.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../core/constants/app/app_constants.dart';

class SplashScreenContent extends StatelessWidget {
  const SplashScreenContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const TitleText(
            title: AppConstants.title,
          ),
          Lottie.asset(
            AppConstants.splashPawLottie,
            alignment: Alignment.bottomCenter,
            width: context.width * 0.7,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
