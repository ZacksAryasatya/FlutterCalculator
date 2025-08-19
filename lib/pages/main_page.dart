import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/nav_controller.dart';
import 'package:flutter_application_1/pages/calculator_page.dart';
import 'package:flutter_application_1/pages/football_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final NavController navController = Get.put(NavController());

  final List<Widget> pages = [
    CalculatorPage(),
    FootballPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: IndexedStack(
        index: navController.selectedIndex.value,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navController.selectedIndex.value,
        onTap: navController.changeTabIndex,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: "Calculator"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            label: "Football"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
            ),
        ]
        ),
    ));
  }
}