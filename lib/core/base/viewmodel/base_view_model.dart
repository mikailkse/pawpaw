import 'package:flutter/material.dart';

import '../../init/navigation/navigation_service.dart';
import '../../init/network/network_manager.dart';

abstract class BaseViewModel {
  VexanaManager? vexanaManager = VexanaManager.instance;

  VexanaManager get vexanaManagerComputed => VexanaManager.instance;

  NavigationService navigation = NavigationService.instance;

  void setContext(BuildContext context) => context = context;
  void init() {}
}
