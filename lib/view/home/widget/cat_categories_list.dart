import 'package:pawpaw/view/home/viewmodel/home_view_model.dart';
import 'package:flutter/material.dart';

class CatCategoriesList extends StatelessWidget {
  final String? images;
  final String? title;
  final String? description;
  final String? country;
  final HomeViewModel? viewModel;
  final Widget Function(BuildContext, int)? itemBuilder;
  final int? itemCount;
  const CatCategoriesList({
    Key? key,
    this.images,
    this.title,
    this.description,
    this.country,
    this.viewModel,
    this.itemBuilder,
    this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        itemCount: 15,
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: itemBuilder!,
      ),
    );
  }
}
