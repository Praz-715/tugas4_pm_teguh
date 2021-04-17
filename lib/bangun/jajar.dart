import 'package:flutter/material.dart';

class JajarGenjang extends StatefulWidget {
  @override
  _JajarGenjangState createState() => _JajarGenjangState();
}

class _JajarGenjangState extends State<JajarGenjang> {
  TextEditingController a1 = TextEditingController();
  TextEditingController t1 = TextEditingController();
  TextEditingController b1 = TextEditingController();
  TextEditingController m1 = TextEditingController();
  double luas, keliling, a, b, m, t;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jajar Genjang"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/page/jajargenjang.png"))),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jajar Genjang",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "geforce",
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Jajar genjang atau jajaran genjang adalah bangun datar dua dimensi yang dibentuk oleh dua pasang rusuk yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki dua pasang sudut yang masing-masing sama besar dengan sudut di hadapannya",
                  style: TextStyle(
                    fontFamily: "geforce",
                    fontSize: 16,
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Menghitung Luas Jajar Genjang"),
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
                                  "Rumus Luas\na × t\n" +
                                      a.toString() +
                                      " × " +
                                      t.toString() +
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
                                              labelText: "alas",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: a1,
                                          onChanged: (s) {
                                            setState(() {
                                              a = double.parse(s);
                                              luas = a * t;
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
                                              labelText: "tinggi",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: t1,
                                          onChanged: (s) {
                                            setState(() {
                                              t = double.parse(s);
                                              luas = a * t;
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
                        title: Text("Menghitung Keliling Jajar Genjang"),
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
                                  "Rumus Keliling\n2 × (a + m)\n" +
                                      "2 × (" +
                                      a.toString() +
                                      " + " +
                                      m.toString() +
                                      ")" +
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
                                              labelText: "alas",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: a1,
                                          onChanged: (s) {
                                            setState(() {
                                              a = double.parse(s);
                                              keliling = 2 * (a + m);
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
                                              labelText: "sisi m",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: m1,
                                          onChanged: (s) {
                                            setState(() {
                                              m = double.parse(s);
                                              keliling = 2 * (a + m);
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
