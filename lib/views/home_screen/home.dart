import 'package:ecommerce_ui/consts/consts.dart';
import 'package:ecommerce_ui/controller/home_controller.dart';
import 'package:ecommerce_ui/views/cart_screen/cart_screen.dart';
import 'package:ecommerce_ui/views/category_screen/category_screen.dart';
import 'package:ecommerce_ui/views/home_screen/home_screen.dart';
import 'package:ecommerce_ui/views/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navBaritem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: categories),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account),
    ];
    var navBody = [
      HomeScreen(),
      CategoryScreen(),
      CartScreen(),
      ProfileScreen()
    ];
    return Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            selectedItemColor: redColor,
            selectedLabelStyle: TextStyle(fontFamily: semibold),
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            items: navBaritem,
            onTap: (value) {
              controller.currentNavIndex.value = value;
            },
          ),
        ),
        body: Column(
          children: [
            Obx(() =>
                Expanded(child: navBody[controller.currentNavIndex.value]))
          ],
        ));
  }
}
