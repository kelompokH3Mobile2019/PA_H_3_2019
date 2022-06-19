import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa/komentar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference users = firestore.collection("users");

class BottomNavbarController extends GetxController {
  var pageIndex = 0.obs;

  void changePageIndex(int index) {
    pageIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class GetTextController extends GetxController {
  var namauser = "".obs;
  var komentar = "".obs;

  final namauserEditing = TextEditingController();
  final komentarEditing = TextEditingController();

  tambah(title) {
    namauser = namauserEditing.text.obs;
    komentar = komentarEditing.text.obs;

    users.add({'Nama': namauser.value, 'Komentar': komentar.value,"Judul":title});
    namauserEditing.text = "";
    komentarEditing.text = "";
  }
}
