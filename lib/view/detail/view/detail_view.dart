import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';

import '../../../core/base/view/base_widget.dart';
import '../../../core/extensions/contex_extensions.dart';
import '../../../core/init/network/network_manager.dart';
import '../../../core/init/product/utility/model/breeds_request_model.dart';
import '../service/detail_service.dart';
import '../viewmodel/detail_view_model.dart';
import '../widget/cat_detail_list_card.dart';
import '../widget/cats_list_detail_card.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);
  static const routeName = "detailView";

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return BaseView<DetailViewModel>(
      viewModel: DetailViewModel(
          DetailService(VexanaManager.instance.networkManager, scaffoldKey)),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, DetailViewModel viewModel) =>
          Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text('Cats Detail'),
        ),
        body: Observer(
          builder: (_) {
            return viewModel.breedsRequestModel!.isNotEmpty
                ? CatDetailListView(
                    itemCount: viewModel.breedsRequestModel?.length ?? 0,
                    itemBuilder: (context, index) {
                      return CatsListDetailCard(
                        breedsRequestModel:
                            viewModel.breedsRequestModel?[index] ??
                                BreedsRequestModel(),
                      );
                    },
                  )
                : Center(
                    child: Lottie.asset(
                      'asset/lottie/loading.json',
                      width: context.width * 0.5,
                    ),
                  );
          },
        ),
      ),
    );
  }
}
