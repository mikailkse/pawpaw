import 'package:flutter/material.dart';

import '../../constants/color/app_colors.dart';

class BlackHazeBackground extends StatelessWidget {
  final Widget? child;
  const BlackHazeBackground({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: AppColors.blackHaze,
            ),
            child: Center(
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
