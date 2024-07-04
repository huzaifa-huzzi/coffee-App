import 'package:coffee_app/View/Splash%20Screen/SplashScreen.dart';
import 'package:get/get.dart';

import 'Routes_name.dart';

class AppRoutes{

  static appRoutes() => [
    GetPage(name: RouteName.splashScreen, page: () =>const Splashscreen()),
    //view



  ];

}