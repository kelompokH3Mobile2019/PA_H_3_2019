import 'package:flutter/material.dart';



class MyManajemenCard extends StatelessWidget {

  String judulCard;
  String imageCard;
  String statusCard;
  final Function? updateData;

  MyManajemenCard(this.judulCard,this.statusCard, this.imageCard, {this.updateData});

  @override
  Widget build(BuildContext context) {
    return Container(
    
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            height: 30,
          ),
          Text(judulCard,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
                        ),),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imageCard))
            ),
          ),
          Text(statusCard,
          style: TextStyle(
            fontSize: 25,
              fontWeight: FontWeight.bold,
          ),),
          Container(
            height: 40,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                    height: 80,
                    width: 120,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.green[900],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_upward,
                          color: Colors.white,
                        )),
                        onPressed: () {
                          if (updateData != null) updateData!();
                        }),
                    ),
                    SizedBox(
                      child: Text("Sudah Baca",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ],
                ),
                
                // Column(
                //   children: [
                //     SizedBox(
                //     height: 80,
                //     width: 120,
                //     child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         shape: CircleBorder(),
                //         primary: Colors.red[900],
                //       ),
                //       child: Center(
                //         child: Icon(
                //           Icons.delete,
                //           color: Colors.white,
                //         )),
                //         onPressed: () {
                //         }),
                //         ),
                //          SizedBox(
                //           child: Text("Hapus",
                //             style: TextStyle(
                //                 fontSize: 25,
                //                 fontWeight: FontWeight.bold,
                //           ),
                //       ),
                //     ),
                //    ],
                //   )
                  ],
                ),
          ),
              
        ],
      ),
    );
  }
}