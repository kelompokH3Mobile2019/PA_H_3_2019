import 'package:flutter/material.dart';
import 'package:pa/landingpage.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pa/fungsi.dart';
import 'package:pa/splashscreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      title: 'Flutter Demo',
      theme: ThemeData(
        
      primarySwatch: Colors.deepPurple,
      ),
      home: SplashScreen(),
    );
  }
}

