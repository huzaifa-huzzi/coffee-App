import 'package:coffee_app/Resources/Color/colors.dart';
import 'package:flutter/cupertino.dart';
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
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
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
                 InkWell(
                   onTap: (){
                     
                   },
                   child: Container(
                     margin:const  EdgeInsets.all(10),
                     child: Image.asset(
                       "assets/images/${img[i].jpeg}",
                       width: 120,
                       height: 120,
                       fit: BoxFit.contain,
                     ),
                   ),
                 ),
                Padding(padding:const  EdgeInsets.only(bottom: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        img[i],
                        style:const  TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: AppColors.whiteColor
                        ),),
                      SizedBox(height: height * .09 ,),
                     const  Text(
                        'Best Coffee',
                        style:  TextStyle(
                            fontSize: 16,
                            color: Colors.white60
                        ),)

                    ]

                  ),
                ),

                ),
                Padding(
                    padding:const  EdgeInsets.symmetric(vertical: 5),
                     child: Row(
                       children: [
                        const  Text(
                           '\$30',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: AppColors.whiteColor
                            ),
                         ),
                         Container(
                           padding:const  EdgeInsets.all(5),
                           decoration: BoxDecoration(
                             color: AppColors.orangeColor,
                             borderRadius: BorderRadius.circular(20)
                           ),
                           child:const  Icon(
                             CupertinoIcons.add,
                             size: 20,
                             color:AppColors.whiteColor ,
                           ),
                         )
                       ],
                     ),
                )
              ],
            ),

        ),
      ],

    );
  }
}
