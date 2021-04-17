import 'package:flutter/material.dart';

class BelahKetupat extends StatefulWidget {
  @override
  _BelahKetupatState createState() => _BelahKetupatState();
}

class _BelahKetupatState extends State<BelahKetupat> {
  TextEditingController s1 = TextEditingController();
  TextEditingController d1 = TextEditingController();
  TextEditingController d2 = TextEditingController();

  double luas, keliling, s, di1, di2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belah Ketupat"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/page/belahketupat.png"))),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Belah Ketupat",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "geforce",
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Belah ketupat adalah bangun datar dua dimensi yang dibentuk oleh empat buah segitiga siku siku masing-masing sama besar dengan sudut di hadapannya.",
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
                                  "Rumus Keliling\n4 × sisi\n" +
                                      "4 × " +
                                      s.toString() +
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
                                              labelText: "sisi",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: s1,
                                          onChanged: (sisi) {
                                            setState(() {
                                              s = double.parse(sisi);
                                              keliling = 4 * s;
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
