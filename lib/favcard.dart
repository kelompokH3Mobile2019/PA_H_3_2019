import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa/PageManage.dart';
class favCard extends StatelessWidget {

  String idKey;
  String namafav;
  String gambarfav;
  final Function? deleteFav;
  

  favCard(this.idKey ,this.namafav,this.gambarfav, {this.deleteFav});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
        Get.to(MyManage(idKey));
      },
      style: 
       ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 106, 97, 131),
        side: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1)
     ), 
      child: 
      Container(
      margin: EdgeInsets.only(top: 20,bottom: 20),
      decoration: BoxDecoration(
        // border: Border.all(width: 1.0, color: Color.fromARGB(255, 4, 4, 4)),
        // borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(gambarfav)),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text(namafav),
                ElevatedButton(child: 
                Text("hapus",
                ),
                onPressed: (){
                  if (deleteFav != null) deleteFav!();
                }
                ,)
              ],
            ),
          ),
        ]
      ),
    )
    );
  }
}