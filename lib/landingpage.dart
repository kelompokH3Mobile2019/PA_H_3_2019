import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pa/navbar.dart';

class LandingPage1 extends StatelessWidget {
  const LandingPage1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff6867AC),
      body: SingleChildScrollView(
        child: Column(
        children:[
        Container(
          height: 30,    
        ),
        Container(
          // width: lebar,
          height: 50,
          child: Center (
            child: Text(
                "HOT Manga",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  
                ),
              ),
            ),
        ),
        Container(
          child: Column(
            children: [
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        gmbr1(),
                        gmbr2(),
                        gmbr3(),
                        gmbr4(),
                    ],
                  ),
                ),
            ],),
        ),
        SizedBox(
          height:15,
        ),
        Center(
          child: Text("ようこそう",
          textAlign: TextAlign.center,
          style:TextStyle(
            color:Colors.white,
            fontSize: 40,
          ) ,
          ),
        ),
         Center(
          child: Text("Mangain",
          style:TextStyle(
            color:Colors.white,
            fontSize: 40,
          ) ,
          ),
        ),
        SizedBox(
          height: 40,
        ),
          SizedBox(height: 20),
          Text("READING WITH FULLY ENJOYABLE",
          style:TextStyle(
            color:Colors.white,
            fontSize: 16,
          )),
           SizedBox(height: 20),
          Text("MORE MORE FUN",
          style:TextStyle(
            color:Colors.white,
            fontSize: 16,
          )),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed:() => Get.off(Mainpage()),
           child:Text("Lets Start Adventure",
           style: TextStyle(color: Colors.black,
           fontSize: 12,
           fontWeight: FontWeight.bold
           ),
          ),
          style:ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary: Colors.white,
          )
          ),
        ]),
      ),
    );
  }
}

class gmbr1 extends StatelessWidget {
  const gmbr1({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      width: lebar,
      decoration: BoxDecoration(
        border:Border.all(color: Color.fromARGB(255, 28, 3, 78))
      ),
      
      child: new Image.asset('assets/images/Haikyuu2.jpg'),
    );
  }
}
class gmbr2 extends StatelessWidget {
  const gmbr2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      width: lebar,
      decoration: BoxDecoration(
        border:Border.all(color: Color.fromARGB(255, 28, 3, 78))
      ),
      
      child: new Image.asset('assets/images/kenja2.png'),
    );
  }
}

class gmbr3 extends StatelessWidget {
  const gmbr3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      width: lebar,
      decoration: BoxDecoration(
        border:Border.all(color: Color.fromARGB(255, 28, 3, 78))
      ),
      
      child: new Image.asset('assets/images/hyouka2.jpg'),
    );
  }
}

class gmbr4 extends StatelessWidget {
  const gmbr4({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      width: lebar,
      decoration: BoxDecoration(
        border:Border.all(color: Color.fromARGB(255, 28, 3, 78))
      ),
      
      child: new Image.asset('assets/images/noah2.jpg'),
    );
  }
}