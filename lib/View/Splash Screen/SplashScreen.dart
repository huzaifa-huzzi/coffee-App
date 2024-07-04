import 'package:coffee_app/Resources/Color/colors.dart';
import 'package:coffee_app/Resources/Components/RoundButton/RoundButton.dart';
import 'package:coffee_app/Routes/Routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Material(
      child: Container(
        padding:const EdgeInsets.only(top: 100,bottom: 40),
        decoration:const  BoxDecoration(
          color: AppColors.blackColor,
          image: DecorationImage(image: AssetImage('assets/images/bg.jpeg'),
          fit: BoxFit.cover,
            opacity: 0.6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Coffee Shop',style: GoogleFonts.pacifico(
              fontSize: 50,
              color: AppColors.whiteColor,
            ),),
            Column(
              children: [
               Text('Feeling Low ? Take a sip of coffee',style: TextStyle(color: AppColors.whiteColor.withOpacity(0.9,),fontSize: 18,fontWeight: FontWeight.w500,letterSpacing: 1,),),
                SizedBox(height:  height * .05,),
                RoundButton(title: 'Get Start', onTap: (){
                  Get.toNamed(RouteName.homeScreen);
                })
            ],)
          ],
        ),
      ),
      
    );
  }
}
