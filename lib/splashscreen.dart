
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pa/landingpage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    splashScreenStart();
  }

  splashScreenStart(){
    var logoTime = Duration(seconds: 2);
    return Timer(logoTime, (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
        return LandingPage1();
      }),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/logo.png",
        width: 200,
        height: 200,
        ),
      ),
    );
  }
}