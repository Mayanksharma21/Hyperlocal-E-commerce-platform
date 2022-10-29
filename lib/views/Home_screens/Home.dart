import 'package:eshop/Controllers/homeController.dart';
import 'package:eshop/views/Cart_Screen/cart_screen.dart';
import 'package:eshop/views/Category_Screen/categories_screen.dart';
import 'package:eshop/views/Home_screens/home_screen.dart';
import 'package:eshop/views/Profile_Screen/profile_Screen.dart';
import 'package:flutter/material.dart';
import 'package:eshop/content/consts.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(homeController());

    var navBarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 26), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 26), label: category),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 26), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 26), label: account),
    ];

    var navBody = [
      HomeScreen(),
      CategoriesScren(),
      CartScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(
              child: navBody.elementAt(controller.currentNavIndex.value))),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            selectedItemColor: redColor,
            selectedLabelStyle: TextStyle(fontFamily: semibold),
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            onTap: (newValue) {
              controller.currentNavIndex.value = newValue;
            },
            items: navBarItem),
      ),
    );
  }
}
