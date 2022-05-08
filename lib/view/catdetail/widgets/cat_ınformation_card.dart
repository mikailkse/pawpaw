import 'package:flutter/material.dart';

import '../../../core/constants/color/app_colors.dart';
import '../../../core/extensions/contex_extensions.dart';

class CatInformationCard extends StatelessWidget {
  final String? infoTitle;
  final String? infoDescription;
  const CatInformationCard({
    Key? key,
    this.infoTitle,
    this.infoDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.24,
      height: context.height * 0.08,
      decoration: BoxDecoration(
        color: AppColors.concrete,
        borderRadius: context.borderRadiusLow,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            infoDescription ?? '',
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            infoTitle ?? '',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
