import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

import '../../../core/constants/color/app_colors.dart';

class CatRating extends StatelessWidget {
  final String? ratingTitle;
  final double? value;
  const CatRating({
    Key? key,
    this.value,
    this.ratingTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 70),
      child: Row(
        children: [
          Text(
            ratingTitle ?? '',
            textAlign: TextAlign.start,
            style: Theme.of(context).primaryTextTheme.headline5?.copyWith(
                  fontFamily: 'SFCompactMedium',
                  color: AppColors.vioelet,
                ),
          ),
          const Spacer(),
          RatingStars(
            value: value!,
            starBuilder: (index, color) => Icon(
              Icons.star,
              color: color,
            ),
            starCount: 5,
            starSize: 20,
            valueLabelColor: const Color(0xff9b9b9b),
            valueLabelTextStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 12.0),
            valueLabelRadius: 20,
            maxValue: 5,
            starSpacing: 2,
            maxValueVisibility: true,
            valueLabelVisibility: true,
            animationDuration: const Duration(milliseconds: 1000),
            starOffColor: const Color(0xffe7e8ea),
            starColor: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }
}
