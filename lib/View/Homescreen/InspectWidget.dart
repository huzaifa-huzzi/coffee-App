import 'package:coffee_app/Resources/Color/colors.dart';
import 'package:flutter/material.dart';



class InspectWidget extends StatefulWidget {
  const InspectWidget({super.key});

  @override
  State<InspectWidget> createState() => _InspectWidgetState();
}

class _InspectWidgetState extends State<InspectWidget> {

  List img = [
    'Latte Coffees',
    'cold coffee',
    'capacinno Coffee',
    'Black Coffee',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics:const  NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for(int i = 0 ; i<img.length ; i++)
          Container(
           padding:const  EdgeInsets.symmetric(vertical: 5,horizontal: 10),
           margin:const  EdgeInsets.symmetric(vertical: 8,horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.blackColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ]
            ),
            child: Column(
              children: [

              ],
            ),

        ),
      ],

    );
  }
}
