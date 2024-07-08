import 'package:coffee_app/Resources/Color/colors.dart';
import 'package:coffee_app/View/Favourite/FavouriteScreen.dart';
import 'package:coffee_app/View/Homescreen/HomeScreen.dart';
import 'package:coffee_app/View/Notifications/Notifications.dart';
import 'package:coffee_app/View/Person/Person.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';




class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {



  PersistentTabController _controller = PersistentTabController(initialIndex: 0);



  List<Widget> _buildScreens() {
    return  const [
      HomeScreen(),
      FavouriteScreen(),
      NotificationsScreen(),
      PersonScreen(),
    ];
  }


  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon:const Icon(Icons.home,color: AppColors.orangeColor,),
        activeColorPrimary: AppColors.orangeColor,
          inactiveIcon:const Icon(Icons.home,color:AppColors.whiteColor,)
      ),
      PersistentBottomNavBarItem(
          icon:const Icon(Icons.favorite_outlined,color:AppColors.orangeColor,),
           activeColorPrimary: AppColors.orangeColor,
          inactiveIcon:const Icon(Icons.favorite_outlined,color: AppColors.whiteColor,)
      ),
      PersistentBottomNavBarItem(
          icon:const Icon(Icons.notifications,color: AppColors.orangeColor,),
           activeColorPrimary: AppColors.orangeColor,
          inactiveIcon:const Icon(Icons.notifications,color: AppColors.whiteColor,)
      ),
      PersistentBottomNavBarItem(
          icon:const Icon(Icons.person,color: AppColors.orangeColor,),
          activeColorPrimary: AppColors.orangeColor,
          inactiveIcon:const Icon(Icons.person,color: AppColors.whiteColor,)
      ),
    ];
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: AppColors.blackColor,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties:const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation:const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style1,
      ),
    );

  }
}