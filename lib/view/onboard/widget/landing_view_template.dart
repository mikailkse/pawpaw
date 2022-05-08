import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/constants/color/app_colors.dart';
import '../../../core/extensions/contex_extensions.dart';

class OnBoardViewTemplate extends StatelessWidget {
  final String? lottieAsset;
  final String? title;
  final String? description;
  final Function()? onPressed;
  final PageController controller;

  const OnBoardViewTemplate({
    Key? key,
    required this.controller,
    this.lottieAsset,
    this.title,
    this.description,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: context.height * 0.06),
          Lottie.asset(
            lottieAsset ?? '',
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SmoothPageIndicator(
                      controller: controller,
                      count: 2,
                      effect: WormEffect(
                        dotColor: Colors.grey,
                        activeDotColor: Theme.of(context).colorScheme.primary,
                        dotHeight: 12,
                        type: WormType.thin,
                        dotWidth: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                  child: Text(
                    title ?? '',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: AppColors.vioelet, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    description ?? '',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: AppColors.blackHaze),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: ElevatedButton(
                    onPressed: onPressed,
                    child: Text(
                      'Skip',
                      style: Theme.of(context).textTheme.button?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
