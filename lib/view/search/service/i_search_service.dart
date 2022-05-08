import 'package:flutter/material.dart';
import 'package:vexana/vexana.dart';

import '../../../core/init/product/utility/model/breeds_request_model.dart';

abstract class ISearchService {
  final INetworkManager manager;
  final GlobalKey<ScaffoldState>? scaffoldyKey;

  ISearchService(this.manager, this.scaffoldyKey);

  Future<List<BreedsRequestModel>?> fetchBreedsSearch(String query);
}
