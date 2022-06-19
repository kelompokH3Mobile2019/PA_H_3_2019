import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa/detail.dart';
import 'package:pa/fungsi.dart';


class Home extends StatefulWidget {
  
  const Home ({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: const Icon(Icons.lightbulb),
              onPressed: () {
                Get.isDarkMode
                    ? Get.changeTheme(ThemeData.light())
                    : Get.changeTheme(ThemeData.dark());
              })
        ],
      ),
    body:Container(
        child: ListView(
          children: [
            Row(
              children: [
                Gambar(
                    context,
                    "assets/images/Haikyuu.jpg",
                    "Haikyuu",
                    Haikyuu()),
                Gambar(context, 
                    "assets/images/Kenja_no_Mago.jpg",
                    "Kenja no Mago", 
                    Kenja()),
              ],
            ),
            //-------------------------------------------------------------------------------2
            Row(
              children: [
                Gambar(context, 
                    "assets/images/Live_Dungeon!.jpg",
                    "Live Dungeon!", 
                    LiveDungeon()),
                Gambar(context, 
                    "assets/images/Hyouka.jpg", 
                    "Hyouka",
                    Hyouka()),
              ],
            ),
            Row(
              children: [
                Gambar(context, 
                    "assets/images/8Kaijuu.jpg",
                    "8Kaijuu", 
                    Kaijuu()),
                Gambar(context, 
                    "assets/images/Noah.jpg", 
                    "Noah of the Blood Sea",
                    Noah()),
              ],
            ),
            
           ],
          ),
        ),
      
    );
  }
}



 