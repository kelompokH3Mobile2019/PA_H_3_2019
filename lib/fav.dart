import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pa/favcard.dart';


class FavPage extends StatefulWidget {
  
  const FavPage ({Key? key}) : super(key: key);

  @override
  State<FavPage> createState() => _FavPage();
}

class _FavPage extends State<FavPage> {

  @override

  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference favorite = firestore.collection("favorite");
    String updating = "Sudah Di dibaca";

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
            StreamBuilder<QuerySnapshot>(stream: favorite.snapshots(), builder:(_,snapshot){
              return (snapshot.hasData)
              ?Column(
                children: snapshot.data!.docs
                .map((e) => favCard(e.id, e.get("name"), e.get("gambar"),
                    deleteFav: (){
                      favorite.doc(e.id).delete();
                    },
                  ),
                ).toList()

              )
              :Text("loading");
            }
            )
          ],
        ),
        ),
      
    );
  }
}



 