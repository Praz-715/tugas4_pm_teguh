import 'package:flutter/material.dart';

class LayangLayang extends StatefulWidget {
  @override
  _LayangLayangState createState() => _LayangLayangState();
}

class _LayangLayangState extends State<LayangLayang> {
  TextEditingController m1 = TextEditingController();
  TextEditingController m2 = TextEditingController();
  TextEditingController d1 = TextEditingController();
  TextEditingController d2 = TextEditingController();

  double luas, keliling, mi1, mi2, di1, di2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layang Layang"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/page/layang.png"))),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Layang Layang",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "geforce",
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Layang-layang adalah bangun datar yang dibentuk oleh dua pasang sisi yang masing-masing pasangannya sama panjang dan saling membentuk sudut. Layang-layang merupakan turunan dari segi empat yang mempunyai ciri khusus dua sisi yang membentuk sudut sama panjang dan besaran sudut yang saling berhadapan sama besar.",
                  style: TextStyle(
                    fontFamily: "geforce",
                    fontSize: 16,
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Menghitung Luas Belah Ketupat"),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  "Rumus Luas\n0.5 × d1 × d2\n" +
                                      "0.5 × " +
                                      di1.toString() +
                                      " × " +
                                      di2.toString() +
                                      " = " +
                                      luas.toString(),
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              labelText: "dialonal 1",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: d1,
                                          onChanged: (s) {
                                            setState(() {
                                              di1 = double.parse(s);
                                              luas = 0.5 * di1 * di2;
                                            });
                                          },
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              labelText: "diagonal 2",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: d2,
                                          onChanged: (s) {
                                            setState(() {
                                              di2 = double.parse(s);
                                              luas = 0.5 * di1 * di2;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ))
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Menghitung Keliling Belah Ketupat"),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  "Rumus Keliling\n2 × (m1 + m2)\n" +
                                      "2 × (" +
                                      mi1.toString() +
                                      " + " +
                                      mi2.toString() +
                                      ") "
                                          " = " +
                                      keliling.toString(),
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              labelText: "sisi m1",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: m1,
                                          onChanged: (sisi) {
                                            setState(() {
                                              mi1 = double.parse(sisi);
                                              keliling = 2 * (mi1 + mi2);
                                            });
                                          },
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              labelText: "sisi m2",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: m2,
                                          onChanged: (sisi) {
                                            setState(() {
                                              mi2 = double.parse(sisi);
                                              keliling = 2 * (mi1 + mi2);
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
