import 'package:coffee_app/Resources/Color/colors.dart';
import 'package:coffee_app/View/Splash%20Screen/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Routes/RoutesInitilizing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Coffee App',
      debugShowMaterialGrid: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.blackColor,
      ),
      debugShowCheckedModeBanner: false,
      home:const  Splashscreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}

