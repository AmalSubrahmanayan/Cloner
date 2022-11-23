import 'package:e_commerce/constants/colors/app_colors.dart';
import 'package:e_commerce/controller/bottom_nav_bar/bottom_nav_bar_controller.dart';
import 'package:e_commerce/view/account/accpunt.dart';
import 'package:e_commerce/view/categories/categories.dart';
import 'package:e_commerce/view/menu/menu.dart';
import 'package:e_commerce/view/home/home.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  final List<dynamic> body = const [
    Home(),
    Account(),
    Categories(),
    Menu(),
  ];
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<BottomNavBarProvider>(context);
    int curentbodyindex = controller.currentIndexsearch();
    return Scaffold(
      body: body[curentbodyindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curentbodyindex,
        type: BottomNavigationBarType.fixed,
        onTap: ((value) => controller.newIndex(value)),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              (curentbodyindex == 0) ? Icons.home : Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(
              (curentbodyindex == 1) ? Icons.person : Icons.person_outline,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Categories',
            icon: Icon(
              (curentbodyindex == 2) ? Icons.category : Icons.category_outlined,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (curentbodyindex == 3) ? Icons.menu : Icons.menu_outlined,
            ),
            label: 'Menu',
          ),
        ],
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.blueColor,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
