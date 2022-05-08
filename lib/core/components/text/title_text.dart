import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String? title;
  const TitleText({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline2?.copyWith(
            fontFamily: 'ShadowsIntoLight',
            color: Theme.of(context).colorScheme.primary,
          ),
    );
  }
}
