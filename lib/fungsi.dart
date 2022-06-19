import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
FirebaseFirestore firestore = FirebaseFirestore.instance;
CollectionReference favorite = firestore.collection("favorite");


Widget Gambarcoming(BuildContext context, String namaGambar, String judulkomik) {
  var lebar = MediaQuery.of(context).size.width;
  return Container(
    decoration: BoxDecoration( 
      border: Border.all(color: Color.fromARGB(255, 121, 4, 180)),
    ),
    margin: EdgeInsets.only(
      top: 15,
      left: 10,
    ),
    child: Container(
        width: (lebar-30) / 2,
        height: 300,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 5,
              ),
              width: (lebar - 100) / 2,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(width: 1.0, color: Color.fromARGB(255, 4, 4, 4)),
                image: DecorationImage(image: AssetImage(namaGambar)),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 15,
              ),
              width: (lebar - 100) / 2,
              
              child: Text(
                judulkomik,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                   // color: Color.fromARGB(255, 146, 112, 182)
                    ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              width: (lebar - 100) / 2,
              child: Text(
                "Up Coming",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 243, 29, 18)),
              ),
            )
          ],
        ),
      ),
  );
} 


Widget Gambar(BuildContext context, String namaGambar, String judulkomik,
    final objectivePage) {
  var lebar = MediaQuery.of(context).size.width;
  return Container(
    margin: EdgeInsets.only(
      top: 15,
      left: 10,
    ),
    child: ElevatedButton(
      child: Container(
        width: (lebar - 100) / 2,
        height: 300,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 5,
              ),
              width: (lebar - 70) / 2,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(namaGambar)),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 15,
              ),
              width: (lebar - 100) / 2,
              child: Text(
                judulkomik,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              width: (lebar - 100) / 2,
              child: Text(
                "Ongoing",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 35, 23)),
              ),
            )
          ],
        ),
      ),
      onPressed: () {
        Get.to(objectivePage);
      },
       style: 
       ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 106, 97, 131),
        side: BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1)
     ),
   ),
  );
} 
Widget detailKomik(
    BuildContext context,
    String judulKomik,
    String poster1,
    String synopsis,
    String author,
    String rating,
    final kechapter,
    final kechapter2) {
    double? _ratingValue;
  var lebar = MediaQuery.of(context).size.width;
  return Container(
    color: Color(0xff6867AC),
    child: 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: lebar,
          height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(poster1))),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
          top: 30
          ),
          width: (lebar/2)-15,
          child: ElevatedButton(
            child: Text("ADD TO FAVORITE"),
              style: ElevatedButton.styleFrom(
                primary: Colors.green
                ),
            onPressed: (){
            favorite.add({
              "gambar": poster1,
              "name" : judulKomik,
              "status" : "belum dibaca"
              });
                          
              },
            ),
          ),
        Divider(),
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          child: Text(
            "SYNOPSIS",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.amber,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 5,
            left: 15,
            right: 15,
          ),
          child: Text(
            synopsis,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          child: Text(
            "Author :",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 5,
            left: 15,
          ),
          child: Text(
            author,
            style: TextStyle(color: Colors.white),
          ),
        ),
        
        Container(
          margin: EdgeInsets.only(
            top: 15,
            left: 15,
          ),
          child: Text(
            "Rating:",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 5,
            left: 15,
          ),
          child: Text(
            rating,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: lebar,
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                child: Container(
                  width: lebar / 2,
                  child: Text(
                    "Chapter 01",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                onPressed: () {
                  Get.to(kechapter);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.amber, onPrimary: Color(0xff6867AC)),
              ),
              ElevatedButton(
                child: Container(
                  width: lebar / 2,
                  child: Text(
                    "Chapter  02",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                onPressed: () {
                  Get.to(kechapter2);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.amber, onPrimary: Color(0xff6867AC)),
              ),
             
            ],
          ),
        ),
        
      ],
    ),
  // backgroundColor: Color(0xff6867AC),
  );
}

Widget chapterdetail(
    BuildContext context, String judulKomik, String chapter) {
  var lebar = MediaQuery.of(context).size.width;
  var panjang = MediaQuery.of(context).size.height;
  return Scaffold(
    appBar: AppBar(
      title: (Text("Manga.In")),
      backgroundColor: Color(0xff6867AC),
    ),
    body: ListView(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 5,
                  left: 15,
                ),
                child: Text(
                  judulKomik,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 240, 240, 247)),
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Container(     
          child: 
            Container(
              child: Image.network(
              chapter,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;

                return Text('Loading...',
                textAlign: TextAlign.center,
                style:TextStyle(color: Colors.deepPurple));
                // You can use LinearProgressIndicator or CircularProgressIndicator instead
              },
              errorBuilder: (context, error, stackTrace) =>
                  const Text('Some errors occurred!'),
            ),
          ),
        ),
      ],
    ),
    backgroundColor: Color.fromARGB(255, 0, 0, 0),
  );
}

Future<dynamic> ApplicationAlert(BuildContext context, String judulAlert,
    String contentAlert, String kataAksi, final tujuanAlert) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(judulAlert),
          content: Text(
            contentAlert,
            textAlign: TextAlign.center,
          ),
          actions: [
            TextButton(
              child: Text(kataAksi),
              onPressed: () {
                Get.off(tujuanAlert);
              },
            )
          ],
        );
      });
}



