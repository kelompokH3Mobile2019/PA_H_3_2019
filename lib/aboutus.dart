import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa/navbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6867AC),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "私たちに関しては",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            Center(
              child: Text(
                "About Us.",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(height: 20),
            Text("私たちは情報工学科のプログラマーです 2019",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
            SizedBox(height: 20),
            Text("We are Programer From Teknik Informatika 2019",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),

            SizedBox(height: 40),
            Text("私たちを応援してください",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
            SizedBox(height: 20),
            Text("Suport Us",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),

            SizedBox(height: 20),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/QR.png"),
              )),
            ),

          ]),
        ),
      ),
    );
  }
}
