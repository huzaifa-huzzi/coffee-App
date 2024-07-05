import 'package:coffee_app/Resources/Color/colors.dart';
import 'package:coffee_app/View/Homescreen/InspectWidget.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin  {



  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;

    return MaterialApp(
      home: DefaultTabController(
        length: 4, // Number of tabs
        child: Scaffold(
          backgroundColor: AppColors.blackColor,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.sort_rounded, color: Colors.white.withOpacity(0.5), size: 35,),
                        Icon(Icons.notifications, color: Colors.white.withOpacity(0.5), size: 35,),
                      ],
                    ),
                  ),
                  SizedBox(height: height * .05,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text('It\'s a Great Day for Coffee', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    width: width * .8,
                    height: height * .06,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 50, 54, 56),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Find Your Coffee',
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                        ),
                        prefixIcon: Icon(Icons.search, size: 30, color: Colors.white.withOpacity(0.5),),
                      ),
                    ),
                  ),
                  TabBar(
                    isScrollable: true,
                    indicator:const  UnderlineTabIndicator(
                      borderSide: BorderSide(color: Colors.orange, width: 2.0),
                      insets: EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    indicatorPadding: EdgeInsets.zero,
                    labelStyle:const  TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                    labelPadding:const  EdgeInsets.symmetric(horizontal: 20.0),
                    labelColor: Colors.orange,
                    unselectedLabelColor: Colors.white.withOpacity(0.5),
                    tabs:const  [
                      Tab(text: 'Hot Coffee'),
                      Tab(text: 'Cold Coffee'),
                      Tab(text: 'Cappuccino'),
                      Tab(text: 'Americano'),
                    ],
                  ),
                 const  Expanded(
                    child: TabBarView(
                      children: [
                        InspectWidget(),
                        InspectWidget(),
                        InspectWidget(),
                        InspectWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
