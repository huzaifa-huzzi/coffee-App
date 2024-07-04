import 'package:coffee_app/Resources/Color/colors.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin  {

  late  TabController _tabController ;
  @override
  void initState() {
    // TODO: implement initState
    _tabController =TabController(length: 3, vsync: this,initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection(){
    if(_tabController.indexIsChanging){
       setState(() {

       });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
      body: SafeArea(
          child:Padding(
              padding:const  EdgeInsets.only(top: 15),
            child: ListView(
              children: [
                Padding(
                    padding:const  EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.sort_rounded,color: AppColors.whiteColor.withOpacity(0.5),size: 35,),
                      Icon(Icons.notifications,color: AppColors.whiteColor.withOpacity(0.5),size: 35,),

                    ],
                  ),

                ),
                SizedBox(height:  height * .05,),
               const Padding(
                    padding:EdgeInsets.symmetric(horizontal: 15),
                  child: Text('Its a Great Day for Coffee',style: TextStyle(color: AppColors.whiteColor,fontSize: 30,fontWeight: FontWeight.w500),),

                  ),
                Container(
                  margin:const EdgeInsets.symmetric(horizontal: 15,vertical: 20) ,
                  width: width * .2,
                  height: height * .06,
                  decoration: BoxDecoration(
                    color:const  Color.fromARGB(255, 50, 54, 56),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Find Your Coffee',
                      hintStyle: TextStyle(
                        color: AppColors.whiteColor.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(Icons.search,size: 30,color: AppColors.whiteColor.withOpacity(0.5),)
                    ),
                  ),
                ),
                 TabBar(
                   controller: _tabController,
                   tabs: [
                  Tab(text: 'Hot Coffee',),
                  Tab(text: 'Hot Coffee',),
                  Tab(text: 'Hot Coffee',)
                ]),
                SizedBox(height:  height * .1,),
                Center(
                  child:[ Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.red,
                  ),
        ][_tabController.index],
                ),
              ],
            ),


          ),
      ),
    );
  }
}
