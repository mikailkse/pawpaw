import 'package:pawpaw/core/extensions/contex_extensions.dart';
import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/color/app_colors.dart';

class CatInformationDescription extends StatelessWidget {
  final String? description;
  const CatInformationDescription({
    Key? key,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: ExpandText(
            description ?? '',
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: AppColors.silverSand,
                  fontFamily: 'SFCompactRegular',
                  fontWeight: FontWeight.w400,
                ),
            maxLines: 2,
            arrowColor: Theme.of(context).primaryColor,
            arrowSize: 20,
          ),
        ),
      ),
    );
  }
}
