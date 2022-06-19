import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa/detail.dart';
import 'package:pa/fungsi.dart';


class upc extends StatefulWidget {
  
  const upc ({Key? key}) : super(key: key);

  @override
  State<upc> createState() => _upc();
}

class _upc extends State<upc> {

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
                Gambarcoming(
                    context,
                    "assets/images/Homura.jpg",
                    "Homura-sensei wa Tabun Motenai",
                    ),
                Gambarcoming(context, 
                    "assets/images/Kanojo.jpg",
                    "Kanojo, Okarishimasu", 
                    ),
              ],
            ),
            //-------------------------------------------------------------------------------2
            Row(
              children: [
                Gambarcoming(context, 
                    "assets/images/Osananajimi.jpg",
                    "Osananajimi ga Zettai ni Makenai Love Comedy", 
                    ),
                Gambarcoming(context, 
                    "assets/images/Nido.jpg", 
                    "Nido Tensei Shita Shounen wa S Rank",
                    ),
              ],
            ),
            
           ],
          ),
        ),
      
    );
  }
}



 