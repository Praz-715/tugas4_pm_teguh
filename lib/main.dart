// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:tugas4_pm_teguhprasetyo/bangun/belahketupat.dart';
import 'package:tugas4_pm_teguhprasetyo/bangun/jajar.dart';
import 'package:tugas4_pm_teguhprasetyo/bangun/layang.dart';
import 'package:tugas4_pm_teguhprasetyo/bangun/lingkaran.dart';
import 'package:tugas4_pm_teguhprasetyo/bangun/persegipanjang.dart';
import 'package:tugas4_pm_teguhprasetyo/bangun/segitiga.dart';
import 'package:tugas4_pm_teguhprasetyo/bangun/trapesium.dart';

import 'bangundatar.dart';
import 'drawernya.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas dan Keliling Bangun Datar"),
      ),
      drawer: Drawernya(),
      body: ListView(
        children: [
          Image(
            image: AssetImage("images/bangun_datar.png"),
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bagun Datar",
                    style: TextStyle(
                        fontFamily: "geforce",
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Bangun datar merupakan suatu bidang datar atau plane geometry yang terbentuk melalui titik atau garis hingga membangun 2 dimensi dan memiliki rumus luas dan keliling",
                    style: TextStyle(fontFamily: "geforce", fontSize: 16),
                  )
                ],
              )),
          bulidCard("images/p.png", "Persegi", PersegiPage(), context),
          bulidCard(
              "images/pp.png", "Persegi Panjang", PersegiPanjang(), context),
          bulidCard("images/lingkaran.png", "Lingkaran", Lingkaran(), context),
          bulidCard("images/segitiga.png", "Segitiga", Segitiga(), context),
          bulidCard("images/trapesium.png", "Trapesium", Trapesium(), context),
          bulidCard("images/jajargenjang.png", "Jajar Genjang", JajarGenjang(),
              context),
          bulidCard("images/belahketupat.png", "Belah Ketupat", BelahKetupat(),
              context),
          bulidCard(
              "images/layang.png", "Layang Layang", LayangLayang(), context),
        ],
      ),
    );
  }

  Card bulidCard(
      String gambar, String title, Widget page, BuildContext context) {
    return Card(
      // color: Colors.pink,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.white12,
          child: Image(
            height: 20,
            image: AssetImage(gambar),
          ),
        ),
        title: Text(title),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page));
        },
      ),
    );
  }
}
