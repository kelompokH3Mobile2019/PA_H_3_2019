import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pa/chapter.dart';
import 'package:pa/fungsi.dart';
import 'package:get/get.dart';
import 'package:pa/controller.dart';
import 'package:pa/komentar.dart';

class Haikyuu extends StatelessWidget {
  final GetTextController tc = Get.put(GetTextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Haikyuu"),
        backgroundColor: Color(0xff6867AC),
      ),
      body: ListView(
        children: [
          detailKomik(
            context,
            "Haikyuu",
            "assets/images/Haikyuu2.jpg",
            "Bercerita tentang seorang pemuda bernama Hinata Shouyou. Dia bersumpah untuk membalas kekalahannya di turnamen Bola Voli tingkat SMP oleh Kageyama Tobio, seorang pemain yang dijuluki Raja Lapangan. Namun, ketika hendak bergabung dengan Klub Bola Voli SMA Karasuno, dia menemukan bahwa ternyata Tobio juga ada di situ…",
            "Furudate, Haruichi (Story & Art)",
            "Rating 8.77",
            haikyuuch1(),
            haikyuuch2(),
          ),
          SizedBox(
            height: 15,
            child: const DecoratedBox(
              decoration: const BoxDecoration(
                color:Color(0xff6867AC)
              ),
            ),
          ),
          Divider(
            thickness: 10,
            color: Color(0xff6867AC),
          ),
          Container(
            height: 35,
            decoration: BoxDecoration(color: Color(0xff6867AC)),
            child: Center (
              child: Text(
                "Komentar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  
                ),
              ),
            ),
          ),
          Container(child: Tampilkomentar(context, "Haikyuu")),
          Container(child: tambah(context, "Haikyuu")),
        ],
      ),
    );
  }
}

class Kenja extends StatelessWidget {
  const Kenja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kenja no Mago"),
        backgroundColor: Color(0xff6867AC),
      ),
      body: ListView(
        children: [
          detailKomik(
            context,
            "Kenja No Mago",
            "assets/images/kenja2.png",
            "Kisahnya, seorang pegawai swasta tertimpa kecelakaan tragis saat pulang larut malam dari kantornya. Dia pun tewas lalu bereinkarnasi ke sebuah dunia fantasi dan mengusung identitas baru bernama Shin Walford. Shin dibesarkan oleh seorang magi kesohor bernama Merlin Walford yang juga mengajarkannya aneka sihir. Begitu Shin genap berusia 15 tahun, Merlin sadar bahwa cucu nonbiologisnya ini menyimpan kekuatan mahadahsyat yang bahkan jauh melampaui dirinya.",
            "Seiji Kikuchi(Art),Tsuyoshi Yoshioka(Story)",
            "Rating 7.26",
            kenjach1(),
            kenjach2(),
          ),
          SizedBox(
            height: 15,
            child: const DecoratedBox(
              decoration: const BoxDecoration(
                color:Color(0xff6867AC)
              ),
            ),
          ),
          Divider(
            thickness: 10,
            color: Color(0xff6867AC),
          ),
          Container(
            height: 35,
            decoration: BoxDecoration(color: Color(0xff6867AC)),
            child: Center (
              child: Text(
                "Komentar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  
                ),
              ),
            ),
          ),
          Container(child: Tampilkomentar(context, "Kenja No Mago")),
          Container(child: tambah(context, "Kenja No Mago")),
        ],
      ),
    );
  }
}

class Hyouka extends StatelessWidget {
  const Hyouka({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hyouka"),
        backgroundColor: Color(0xff6867AC),
      ),
      body: ListView(
        children: [
          detailKomik(
            context,
            "Hyouka",
            "assets/images/hyouka2.jpg",
            "Oreki Houtarou adalah tipe pria yang hemat energi, yang menghabiskan energi sesedikit mungkin untuk melakukan hanya hal-hal yang harus dilakukannya. Ketika dia mulai sekolah menengah, kakak perempuannya mengiriminya surat yang memintanya untuk bergabung dengan Klub Klasik. Klub itu sangat berarti baginya, dan jumlah anggotanya telah dikurangi menjadi nol. Houtarou dengan enggan mendaftar ke klub, hanya untuk mengetahui bahwa orang lain juga telah bergabung! Dia adalah Chitanda Eru, seorang gadis imut bermata besar dengan rasa ingin tahu yang luar biasa. Sebuah misteri muncul yang menarik minat Eru, dan juga menarik teman Houtarou, Fukube Satoshi. Mereka terus memecahkan misteri duniawi bersama, dan tak lama kemudian mereka menarik teman Satoshi dan Houtarou, Ibara Mayaka, juga. Mayaka naksir Satoshi terang-terangan sejak SMP, tapi dia selalu menangkis serangannya. Bersama-sama, mereka mencari kebenaran dalam misteri yang melibatkan sejarah Klub Klasik.",
            "Honobu Yonezawa (Story) Ohna Task(Art)",
            "Rating 8.85",
            hyoukach1(),
            hyoukach2(),
          ),
          SizedBox(
            height: 15,
            child: const DecoratedBox(
              decoration: const BoxDecoration(
                color:Color(0xff6867AC)
              ),
            ),
          ),
          Divider(
            thickness: 10,
            color: Color(0xff6867AC),
          ),
          Container(
            height: 35,
            decoration: BoxDecoration(color: Color(0xff6867AC)),
            child: Center (
              child: Text(
                "Komentar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  
                ),
              ),
            ),
          ),
          Container(child: Tampilkomentar(context, "Hyouka")),
          Container(child: tambah(context, "Hyouka")),
        ],
      ),
    );
  }
}

class LiveDungeon extends StatelessWidget {
  const LiveDungeon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Live Dungeon!"),
        backgroundColor: Color(0xff6867AC),
      ),
      body: ListView(
        children: [
          detailKomik(
            context,
            "Live Dungeon",
            "assets/images/live2.jpg",
            "bercerita tentang MMORPG lama bernama Live Dungeon. Sebelum layanan dihentikan, Kyotani Tsutomu memanfaatkan sepenuhnya 5 PC notebook untuk membersihkan game dan diundang ke dunia lain. Dan kemudian, Tsutomu tidak bisa berkata-kata saat dia melihat siaran langsung penangkapan dungeon di dunia berbeda. Mereka membuldoser tanpa memikirkan strategi. Nasib buruk mendapatkan posisi penyembuh. Tsutomu mengembalikan White Mage yang selalu menjadi favoritnya dalam permainan dan bertujuan untuk menaklukkan penjara bawah tanah untuk menemukan kunci pelariannya dari dunia yang berbeda.",
            "Reitou dy (Story) Kotori Ryou(Art)",
            "Rating 7.08",
            livech1(),
            livech2(),
          ),
          SizedBox(
            height: 15,
            child: const DecoratedBox(
              decoration: const BoxDecoration(
                color:Color(0xff6867AC)
              ),
            ),
          ),
          Divider(
            thickness: 10,
            color: Color(0xff6867AC),
          ),
          Container(
            height: 35,
            decoration: BoxDecoration(color: Color(0xff6867AC)),
            child: Center (
              child: Text(
                "Komentar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  
                ),
              ),
            ),
          ),
          Container(child: Tampilkomentar(context, "Live Dungeon")),
          Container(child: tambah(context, "Live Dungeon")),
        ],
      ),
      
    );
  }
}

class Kaijuu extends StatelessWidget {
  const Kaijuu ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("8 Kaijuu"),
        backgroundColor: Color(0xff6867AC),
      ),
      body: ListView(
        children: [
          detailKomik(
            context,
            "8 Kaijuu",
            "assets/images/kaiju2.jpg",
            "Mengerikan, monster seperti Godzilla yang disebut sebagai “kaijuu” sering muncul di seluruh Jepang sejak beberapa tahun terakhir. Untuk mengalahkan binatang buas ini, uni militer elit yang dikenal dengan nama Defense Corps mempertaruhkan nyawa mereka setiap hari untuk melindungi para warga. Setelah makhluk itu dibunuh, “sweepers”—- yang bekerja di bawah Korporasi Pembersih Kaijuu Profesional — ditinggalkan untuk membersihkan sisa-sisanya.Kafka Hibino, seorang pria berusia 32 tahun, tak puas dengan pekerjaannya sebagai seorang sweeper. Sejak masih muda, ia sudah terinspirasi untuk bergabung dengan Defense Corps dan membunuh kaijuu untuk memenuhi kehidupannya. Setelah beberapa kali gagal, akan tetapi, ia memutuskan untuk menyerah dengan mimpinya dan mengundurkan diri ke pekerjaan biasa yang memberikannya gaji yang lumayan. Namun, saat seorang pemuda ambisius berusia 18 tahun yang baru direkrut bernama Leno Ichikawa bergabung dengan tim pembersih, Kafka kembali diingatkan dengan keinginannya untuk bergabung dengan militer.Mengikuti rentetan kejadian mengenaskan dan interaksi dengan junior sweeper-nya, Kafka berhadapan dengan kaijuu bertipe parasit yang memaksa masuk melalui mulutnya—merubahnya menjadi monster berbentuk manusia. Dengan kekuatan terbarunya, Kafka berniatan untuk mencoba kembali meraih mimpinya.",
            "Naoya Matsumoto(Story,Art)",
            "Rating 7.81",
            kaiju1(),
            kaiju2(),
          ),
          SizedBox(
            height: 15,
            child: const DecoratedBox(
              decoration: const BoxDecoration(
                color:Color(0xff6867AC)
              ),
            ),
          ),
          Divider(
            thickness: 10,
            color: Color(0xff6867AC),
          ),
          Container(
            height: 35,
            decoration: BoxDecoration(color: Color(0xff6867AC)),
            child: Center (
              child: Text(
                "Komentar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  
                ),
              ),
            ),
          ),
          Container(child: Tampilkomentar(context, "8 Kaijuu")),
          Container(child: tambah(context, "8 Kaijuu")),
        ],
      ),
      
    );
  }
}

class Noah extends StatelessWidget {
  const Noah ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Noah Of The Blood Sea"),
        backgroundColor: Color(0xff6867AC),
      ),
      body: ListView(
        children: [
          detailKomik(
            context,
            "Noah Of The Blood Sea",
            "assets/images/noah2.jpg",
            "Ketika keluarga dari tiga bagian buku di atas kapal mewah mereka segera menyadari bahwa kapal pesiar glamours tidak lain hanyalah sebuah fasad sebagai serangkaian pembunuhan misterius yang tersebar di kapal. Dengan laut yang membuktikan tidak ada jalan keluar, bagaimana mereka akan bertahan?",
            "Yuu Satomi (Story,Art)",
            "Rating 6.71",
            noahch1(),
            noahch2(),
          ),
          SizedBox(
            height: 15,
            child: const DecoratedBox(
              decoration: const BoxDecoration(
                color:Color(0xff6867AC)
              ),
            ),
          ),
          Divider(
            thickness: 10,
            color: Color(0xff6867AC),
          ),
          Container(
            height: 35,
            decoration: BoxDecoration(color: Color(0xff6867AC)),
            child: Center (
              child: Text(
                "Komentar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  
                ),
              ),
            ),
          ),
          Container(child: Tampilkomentar(context, "Noah Of The Blood Sea")),
          Container(child: tambah(context, "Noah Of The Blood Sea")),
        ],
      ),
      
    );
  }
}