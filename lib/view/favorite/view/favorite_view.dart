import 'package:pawpaw/core/init/product/utility/get_it.dart';
import 'package:flutter/material.dart';

import '../../../core/base/view/base_widget.dart';
import '../viewmodel/favorite_view_model.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);
  static const routeName = "favoriteView";

  @override
  Widget build(BuildContext context) {
    return BaseView<FavoriteViewModel>(
      viewModel: FavoriteViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, FavoriteViewModel viewModel) =>
          Scaffold(
        appBar: AppBar(
          title: const Text('Favorite'),
        ),
        body: Column(
          children: [
            Text(
              getIt<FavoriteViewModel>().favorites.first.name ?? '',
            ),
          ],
        ),
      ),
    );
  }
}
