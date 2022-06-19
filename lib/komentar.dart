import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:pa/chapter.dart';
import 'package:pa/detail.dart';
import 'package:pa/main_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pa/controller.dart';

Widget tambah(context, title) {
  final GetTextController tc = Get.put(GetTextController());
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    SizedBox(
      height: 10,
    ),
    SizedBox(
      width: double.infinity,
      child: TextField(
        maxLines: 3,
        controller: tc.komentarEditing,
        decoration:
            InputDecoration(border: OutlineInputBorder(), hintText: "Komentar"),
      ),
    ),
    SizedBox(
      height: 30,
    ),
    SizedBox(
      width: 300,
      child: TextField(
          controller: tc.namauserEditing,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Nama User",
          )),
    ),
    Center(
      child: SizedBox(
        width: 100,
        child: IconButton(
          iconSize: 50,
          icon: Icon(Icons.arrow_forward_rounded),
          onPressed: () {
            tc.namauser.value = tc.namauserEditing.text;
            tc.komentar.value = tc.komentarEditing.text;
            var alert1 = submit(context);
            if (alert1) tc.tambah(title);
          },
        ),
      ),
    ),
  ]);
}

submit(BuildContext context) {
  final GetTextController tc = Get.find();
  if (tc.namauser.isEmpty || tc.komentar.isEmpty) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 5),
      content: Text("Masih Kosong Isi Dulu Bang"),
      backgroundColor: Colors.red,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    return false;
  }
  AlertDialog alert = AlertDialog(
    title: Text("Pemberitahuan"),
    content: Container(
      child: Text("Komentar Anda Telah Diposting"),
    ),
    actions: [
      TextButton(child: Text('Ok'), onPressed: () => Navigator.pop(context)),
    ],
  );

  showDialog(context: context, builder: (context) => alert);
  return true;
}

Widget Tampilkomentar(context, title) {
  return Column(
    children: [
      ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          StreamBuilder<QuerySnapshot>(
              stream: users.where("Judul", isEqualTo: title).snapshots(),
              builder: (_, snapshot) {
                return (snapshot.hasData)
                    ? Column(
                      children: snapshot.data!.docs
                        .map(((e) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 1),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                width: double.infinity,
                                child: Column(
                                    crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e.get("Nama"),
                                          style: TextStyle(
                                              color:Color(0xff6867AC) ,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          e.get("Komentar")
                                        ),
                                      ],
                                    ),
                                        
                                  )
                                  ],
                                )))
                            .toList(),
                      )
                    : Text("Loading ");
              })
        ],
      )
    ],
  );
}
