import 'package:pawpaw/core/constants/app/app_constants.dart';
import 'package:vexana/vexana.dart';

class VexanaManager {
  static VexanaManager? _instace;
  static VexanaManager get instance {
    if (_instace != null) return _instace!;
    _instace = VexanaManager._init();
    return _instace!;
  }

  VexanaManager._init();

  INetworkManager networkManager = NetworkManager(
    isEnableLogger: false,
    options: BaseOptions(
      baseUrl: AppConstants.apiBaseUrl,
    ),
  );
}
