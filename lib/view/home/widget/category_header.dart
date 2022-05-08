import 'package:pawpaw/core/init/navigation/navigation_service.dart';
import 'package:pawpaw/view/detail/view/detail_view.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/color/app_colors.dart';

class CategoryHeader extends StatelessWidget {
  final String? title;
  final String? detailText;
  const CategoryHeader({
    Key? key,
    this.title,
    this.detailText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title ?? '',
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: AppColors.vioelet,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SFCompactSemiBold',
                ),
          ),
          TextButton(
            onPressed: () =>
                NavigationService.instance.navigateToPage(DetailView.routeName),
            child: Text(
              detailText ?? '',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontFamily: 'SFCompactMedium',
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
