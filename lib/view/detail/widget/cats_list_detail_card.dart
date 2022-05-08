import 'package:pawpaw/core/constants/color/app_colors.dart';
import 'package:pawpaw/core/extensions/contex_extensions.dart';
import 'package:flutter/material.dart';

import '../../../core/init/navigation/navigation_service.dart';
import '../../../core/init/product/utility/model/breeds_request_model.dart';
import '../../catdetail/view/catdetail_view.dart';

class CatsListDetailCard extends StatelessWidget {
  final BreedsRequestModel? breedsRequestModel;

  const CatsListDetailCard({Key? key, this.breedsRequestModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigationService.instance.navigateToPage(
          CatDetailView.routeName,
          data: breedsRequestModel,
        );
      },
      child: Padding(
        padding: context.paddingLow,
        child: Container(
          width: context.width * 0.95,
          height: context.height * 0.13,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: context.borderRadiusLow,
            border: Border.all(
              width: 1.0,
              color: AppColors.blackSqueeze,
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 6),
                blurRadius: 8,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(0.1),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: context.width * 0.4,
                height: context.height * 0.13,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      breedsRequestModel?.image?.url ?? '',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: context.borderRadiusLow,
                ),
              ),
              Padding(
                padding: context.paddingLow,
                child: SizedBox(
                  width: context.width * 0.5,
                  height: context.height * 0.13,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        breedsRequestModel?.name ?? '',
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              fontFamily: 'SFCompactBold',
                            ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.flag_outlined,
                                size: 18,
                              ),
                              Text(
                                breedsRequestModel?.origin ?? '',
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.scale,
                                size: 18,
                              ),
                              Text(
                                breedsRequestModel?.weight?.metric ?? '',
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        breedsRequestModel?.description ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
