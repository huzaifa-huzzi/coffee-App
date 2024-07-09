import 'package:coffee_app/Routes/Routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {
    final Map<String, String> arguments = Get.arguments as Map<String, String>;
    final String name = arguments['name']!;
    final String image = arguments['image']!;
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding:const  EdgeInsets.only(top: 30,bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:const  EdgeInsets.only(left: 25),
                    child: InkWell(
                      onTap: (){
                        Get.toNamed(RouteName.dashboardScreen);
                      },
                      child:const Icon(Icons.arrow_back_ios,color:Colors.white,),
                    ),
                  ),
                  SizedBox(height:  height * .05,),
                  Center(
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset("assets/images/$image",
                        width: width / 1.6,
                        height: height * .3,
                        fit: BoxFit.cover,
                      ),
                    ) ,

                  ),
                  SizedBox(height:  height * .05,),
                  Padding(
                      padding:const EdgeInsets.only(left: 2,right: 40),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Best coffee',
                           style: TextStyle(color: Colors.white.withOpacity(0.4),letterSpacing: 3),),
                         SizedBox(height:  height * .01,),
                         Text(name,
                           style:const  TextStyle(
                           fontSize: 25,
                           letterSpacing: 1,
                           color: Colors.white,
                         ),),
                         SizedBox(height:  height * .02,),
                         Container(
                           width: width ,
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                                Container(
                                  padding:const  EdgeInsets.all(15),
                                  width: 120,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child:const  Row(
                                    mainAxisAlignment:MainAxisAlignment.center ,
                                    children: [
                                       Icon(
                                         CupertinoIcons.minus,
                                         size: 18,
                                         color: Colors.white,
                                       ),
                                      SizedBox(width: 15,),
                                      Text('2',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                                      SizedBox(width: 15,),
                                      Icon(
                                        CupertinoIcons.plus,
                                        size: 18,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                )
                             ],
                           ),
                         )


                       ],
                     ),
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}




