// ignore_for_file: prefer_conditional_assignment

import 'package:pawpaw/core/init/theme/app_theme.dart';
import 'package:pawpaw/core/init/theme/panache/deepPurple_theme.dart';
import 'package:pawpaw/core/init/theme/panache/dark_theme.dart';
import 'package:flutter/material.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    if (_instance == null) _instance = AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  @override
  ThemeData get theme => deepPurpleTheme;
  ThemeData get theme1 => darkTheme;
}
