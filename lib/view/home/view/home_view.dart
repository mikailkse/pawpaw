import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lottie/lottie.dart';

import '../../../core/base/view/base_widget.dart';
import '../../../core/components/appbar/home_appbar.dart';
import '../../../core/components/background/blackhaze_background.dart';
import '../../../core/constants/app/app_constants.dart';
import '../../../core/extensions/contex_extensions.dart';
import '../../../core/init/network/network_manager.dart';
import '../../../core/init/product/utility/model/breeds_request_model.dart';
import '../service/home_service.dart';
import '../viewmodel/home_view_model.dart';
import '../widget/cat_categories_list.dart';
import '../widget/category_header.dart';
import '../widget/cats_detail_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const routeName = "homeView";

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(
          HomeService(VexanaManager.instance.networkManager, scaffoldKey)),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, HomeViewModel viewModel) =>
          Scaffold(
        appBar: const HomeAppBar(),
        body: BlackHazeBackground(
          child: Column(
            children: [
              const CategoryHeader(
                title: AppConstants.cats,
                detailText: AppConstants.detailText,
              ),
              Observer(
                builder: (_) {
                  return viewModel.breedsRequestModel!.isNotEmpty
                      ? CatCategoriesList(
                          itemBuilder: (BuildContext context, int index) {
                            return CatsDetailCard(
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
            ],
          ),
        ),
      ),
    );
  }
}
