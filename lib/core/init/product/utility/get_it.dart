import 'package:get_it/get_it.dart';

import '../../../../view/favorite/viewmodel/favorite_view_model.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FavoriteViewModel>(FavoriteViewModel());
}
