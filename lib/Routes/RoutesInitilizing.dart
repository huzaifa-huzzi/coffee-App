import 'package:coffee_app/View/DashBoard/DashBoard_Screen.dart';
import 'package:coffee_app/View/Detail/DetailScreen.dart';
import 'package:coffee_app/View/Homescreen/HomeScreen.dart';
import 'package:coffee_app/View/Splash%20Screen/SplashScreen.dart';
import 'package:get/get.dart';

import 'Routes_name.dart';

class AppRoutes{

  static appRoutes() => [
     //splash screen
    GetPage(name: RouteName.splashScreen, page: () =>const Splashscreen()),
    //view
    GetPage(name: RouteName.homeScreen, page: () =>const HomeScreen()),
    GetPage(name: RouteName.dashboardScreen, page: () =>const DashboardScreen()),
    GetPage(name: RouteName.detailScreen, page: () => DetailScreen())




  ];

}