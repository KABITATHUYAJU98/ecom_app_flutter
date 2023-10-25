import 'package:ecom_app_ddbahinicreation/constts/consts.dart';
import 'package:ecom_app_ddbahinicreation/constts/images.dart';
import 'package:ecom_app_ddbahinicreation/controller/home_controller.dart';
import 'package:ecom_app_ddbahinicreation/views/cart_screen/cart_screen.dart';
import 'package:ecom_app_ddbahinicreation/views/category_screen/category_screen.dart';
import 'package:ecom_app_ddbahinicreation/views/home_screen/home_screen.dart';
import 'package:ecom_app_ddbahinicreation/views/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//we are just creating structure for home in this file
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //init home controller
    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];

    //to show the body according to the nav
    var navBody = [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
        body: Column(
          children: [
            //wrap with obx to show the dynamic change of screen
            Obx(() => Expanded(
                child: navBody.elementAt(controller.currentNavIndex.value)))
          ],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(fontFamily: semibold),
            selectedItemColor: redColor,
            backgroundColor: whiteColor,
            items: navbarItem,
            onTap: (value) {
              //value will be current value of nav index
              controller.currentNavIndex.value = value;
            },
          ),
        ));
  }
}
