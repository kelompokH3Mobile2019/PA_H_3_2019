import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa/ManajemenCard.dart';
import 'package:pa/fav.dart';
import 'package:pa/navbar.dart';

class MyManage extends StatelessWidget {

  String patokan;
  
  MyManage(this.patokan);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore  = FirebaseFirestore.instance;
    CollectionReference managing = firestore.collection("favorite");
    return Scaffold(
      appBar: AppBar(title: Text("Manga.In"),),
      body: ListView(
        children: [
          StreamBuilder<DocumentSnapshot>(
            stream: managing.doc(patokan).snapshots(),
            builder: (_, snapshot){
              return (snapshot.hasData)
              ? MyManajemenCard(
                snapshot.data!.get("name"),
                snapshot.data!.get("status"),
                snapshot.data!.get("gambar"),
                updateData: (){
                  managing.doc(snapshot.data!.id).update({
                    "status" : "Sudah Dibaca",
                  });
                },
              )
              : Text("Loading");
            }
          )
        ],
      ),
    );
  }
}