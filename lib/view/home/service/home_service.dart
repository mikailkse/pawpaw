import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

import '../../../core/constants/app/app_constants.dart';
import '../../../core/init/product/enum/network_route_enum.dart';
import '../../../core/init/product/utility/model/breeds_request_model.dart';
import '../../../core/init/product/utility/service_helper.dart';
import 'i_home_service.dart';

class HomeService extends IHomeService with ServiceHelper {
  HomeService(INetworkManager manager, GlobalKey<ScaffoldState>? scaffoldyKey)
      : super(manager, scaffoldyKey);

  @override
  Future<List<BreedsRequestModel?>> fetchBreedsRequestModel() async {
    final response =
        await manager.send<BreedsRequestModel, List<BreedsRequestModel>>(
      NetworkRoutes.breeds.rawValue,
      parseModel: BreedsRequestModel(),
      method: RequestType.GET,
      options: Options(
        headers: {'x-api-key': AppConstants.apiKey},
      ),
    );
    showMessage(scaffoldyKey, response.error);
    return response.data ?? [];
  }
}
