import 'package:coffee_app/Resources/Color/colors.dart';
import 'package:flutter/material.dart';


class RoundButton extends StatelessWidget {
  final String title;
  final  VoidCallback onTap ;
  const RoundButton({super.key,required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width * .6,
        height:  height * .08,
        padding:const  EdgeInsets.symmetric(vertical: 15,horizontal: 30),
      decoration: BoxDecoration(
      color: AppColors.orangeColor,
      borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Text(title,style:const  TextStyle(color: AppColors.whiteColor,fontSize: 22,fontWeight: FontWeight.bold,letterSpacing: 1),),) ,
      ),
    );
  }
}
