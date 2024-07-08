import 'package:coffee_app/Resources/Color/colors.dart';
import 'package:coffee_app/Routes/Routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InspectWidget extends StatefulWidget {
  const InspectWidget({super.key});

  @override
  State<InspectWidget> createState() => _InspectWidgetState();
}

class _InspectWidgetState extends State<InspectWidget> {
  // List of objects to store both display names and image file names
  final List<Map<String, String>> coffees = [
    {'name': 'Latte Coffee', 'image': 'Latte Coffees.jpeg'},
    {'name': 'Cold Coffee', 'image': 'cold coffee.jpeg'},
    {'name': 'Cappuccino', 'image': 'capacinno Coffee.jpeg'},
    {'name': 'Black Coffee', 'image': 'black.jpeg'},
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    final width = MediaQuery.sizeOf(context).width * 1;
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < coffees.length; i++)
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.blackColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                )
              ],
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    // Navigate to the new screen
                    Get.toNamed(RouteName.detailScreen, arguments: {
                      'name': coffees[i]['name']!,
                      'image': coffees[i]['image']!
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "assets/images/${coffees[i]['image']}",
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coffees[i]['name']!, // Access display name from map
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: AppColors.whiteColor,
                          ),
                        ),
                        const Text(
                          'Best Coffee',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '\$30',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: AppColors.orangeColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          CupertinoIcons.add,
                          size: 20,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
