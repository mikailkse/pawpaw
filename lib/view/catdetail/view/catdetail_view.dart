import 'package:flutter/material.dart';

import '../../../core/base/view/base_widget.dart';
import '../../../core/components/appbar/cat_detail_appbar.dart';
import '../../../core/init/product/utility/model/breeds_request_model.dart';
import '../viewmodel/catdetail_view_model.dart';
import '../widgets/cat_detail_title.dart';
import '../widgets/cat_rating.dart';
import '../widgets/cat_ınformation_card.dart';
import '../widgets/cat_ınformation_description.dart';

class CatDetailView extends StatelessWidget {
  const CatDetailView({Key? key}) : super(key: key);

  static const routeName = "catDetailView";

  @override
  Widget build(BuildContext context) {
    return BaseView<CatDetailViewModel>(
      viewModel: CatDetailViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        model.breedsRequestModel =
            ModalRoute.of(context)!.settings.arguments as BreedsRequestModel;
      },
      onPageBuilder: (BuildContext context, CatDetailViewModel viewModel) =>
          Scaffold(
        appBar: CatDetailAppBar(
          images: viewModel.breedsRequestModel!.image!.url,
        ),
        body: Column(
          children: [
            CatDetailTitle(
              title: viewModel.breedsRequestModel!.name,
              favoriteOnPressed: () {
                viewModel.addFavorites(
                  viewModel.breedsRequestModel ?? BreedsRequestModel(),
                );
              },
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CatInformationCard(
                  infoTitle: 'Country',
                  infoDescription: viewModel.breedsRequestModel?.origin,
                ),
                CatInformationCard(
                  infoTitle: 'Weight',
                  infoDescription: viewModel.breedsRequestModel?.weight?.metric,
                ),
                CatInformationCard(
                  infoTitle: 'Life Span',
                  infoDescription: viewModel.breedsRequestModel?.lifeSpan,
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                CatRating(
                  ratingTitle: 'Adaptability',
                  value:
                      viewModel.breedsRequestModel?.adaptability?.toDouble() ??
                          0,
                ),
                CatRating(
                  ratingTitle: 'Grooming',
                  value:
                      viewModel.breedsRequestModel?.grooming?.toDouble() ?? 0,
                ),
                CatRating(
                  ratingTitle: 'Energy',
                  value:
                      viewModel.breedsRequestModel?.energyLevel?.toDouble() ??
                          0,
                ),
              ],
            ),
            CatInformationDescription(
              description: viewModel.breedsRequestModel?.description,
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
