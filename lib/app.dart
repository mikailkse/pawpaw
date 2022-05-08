import 'package:flutter/material.dart';
import 'package:pawpaw/view/splash/view/splash_view.dart';

import 'core/constants/app/app_constants.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/init/theme/panache/deepPurple_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.title,
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
      theme: deepPurpleTheme,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}
