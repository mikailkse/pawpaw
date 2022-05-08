import 'package:flutter/material.dart';

class DeepPurpleBackground extends StatelessWidget {
  final Widget? child;
  const DeepPurpleBackground({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: child,
    );
  }
}
