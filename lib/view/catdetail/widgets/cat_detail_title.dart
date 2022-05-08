import 'package:flutter/material.dart';

import '../../../core/constants/color/app_colors.dart';

class CatDetailTitle extends StatelessWidget {
  final String? title;
  final void Function()? favoriteOnPressed;
  const CatDetailTitle({
    Key? key,
    this.title,
    this.favoriteOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title ?? '',
          style: Theme.of(context).primaryTextTheme.headline5?.copyWith(
                fontFamily: 'SFCompactMedium',
                color: AppColors.vioelet,
              ),
        ),
        IconButton(
          onPressed: favoriteOnPressed,
          iconSize: 40,
          tooltip: 'Favorite',
          icon: const Icon(
            Icons.favorite,
          ),
        ),
      ],
    );
  }
}
