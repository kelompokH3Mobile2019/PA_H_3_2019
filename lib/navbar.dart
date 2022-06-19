import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa/controller.dart';
import 'package:pa/main_page.dart';
import 'package:pa/aboutus.dart';
import 'package:pa/upcoming.dart';
import 'package:pa/fav.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BottomNavbarController bottomNavbarController =
    Get.put(BottomNavbarController());
    return Scaffold(
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.red,
            currentIndex: bottomNavbarController.pageIndex.value,
            onTap: bottomNavbarController.changePageIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.upcoming),
                label: "Up Coming",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favorite",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_people),
                label: "About us",
              ),
            ],
          )),
        body: Obx(() => IndexedStack(
            index: bottomNavbarController.pageIndex.value,
            children: [
              Home(),
              upc(),
              FavPage(),
              AboutPage(),
            ],
          )),
    );
  }
}
