import 'package:flutter/material.dart';

class CatDetailListView extends StatelessWidget {
  final int? itemCount;
  final Widget Function(BuildContext, int)? itemBuilder;

  const CatDetailListView({
    Key? key,
    this.itemBuilder,
    this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      physics: const BouncingScrollPhysics(),
      itemBuilder: itemBuilder!,
    );
  }
}
