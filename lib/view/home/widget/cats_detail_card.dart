import 'package:flutter/material.dart';

import '../../../core/extensions/contex_extensions.dart';
import '../../../core/init/navigation/navigation_service.dart';
import '../../../core/init/product/utility/model/breeds_request_model.dart';
import '../../catdetail/view/catdetail_view.dart';

class CatsDetailCard extends StatelessWidget {
  final BreedsRequestModel? breedsRequestModel;
  const CatsDetailCard({
    Key? key,
    this.breedsRequestModel,
  }) : super(key: key);

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
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
        child: Container(
          height: context.height * 0.4,
          decoration: BoxDecoration(
            borderRadius: context.borderRadiusLow,
            image: DecorationImage(
              image: NetworkImage(
                breedsRequestModel?.image?.url ?? '',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: context.width,
                height: context.height * 0.12,
                decoration: BoxDecoration(
                  borderRadius: context.borderRadiusLow,
                  color: Colors.grey.shade200.withOpacity(0.9),
                ),
                child: Padding(
                  padding: context.paddingLow,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            breedsRequestModel?.name ?? '',
                            textAlign: TextAlign.start,
                            style:
                                Theme.of(context).textTheme.headline6?.copyWith(
                                      fontFamily: 'SFCompactBold',
                                    ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
