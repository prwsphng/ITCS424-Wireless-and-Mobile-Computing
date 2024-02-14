import 'package:flutter/material.dart';
import 'package:prae_s_application3/presentation/convert_page_three_screen/convert_page_three_screen.dart';
import 'package:prae_s_application3/presentation/convert_page_four_screen/convert_page_four_screen.dart';
import 'package:prae_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String convertPageThreeScreen = '/convert_page_three_screen';

  static const String convertPageFourScreen = '/convert_page_four_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    convertPageThreeScreen: (context) => ConvertPageThreeScreen(),
    convertPageFourScreen: (context) => ConvertPageFourScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
