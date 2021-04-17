import 'package:flutter/material.dart';

class Segitiga extends StatefulWidget {
  @override
  _SegitigaState createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  TextEditingController a1 = TextEditingController();
  TextEditingController t1 = TextEditingController();
  TextEditingController b1 = TextEditingController();
  TextEditingController c1 = TextEditingController();
  double luas, keliling, a, b, c, t;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segitiga"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/page/segitiga.png"))),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Segitiga",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "geforce",
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sebuah segitiga adalah poligon dengan tiga ujung dan tiga simpul. Ini adalah salah satu bentuk dasar dalam geometri. Segitiga dengan simpul A, B, dan C dilambangkan",
                  style: TextStyle(
                    fontFamily: "geforce",
                    fontSize: 16,
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Menghitung Luas Segitiga"),
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
                                  "Rumus Luas\n0.5 × a × t\n" +
                                      "0.5 × " +
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
                              // Padding(
                              //   padding: EdgeInsets.only(right: 16, left: 16),
                              //   child: Text(
                              //     "Rumus Keliling\n2 × p + 2 × l\n" +
                              //         "2 × " +
                              //         p.toString() +
                              //         " = "
                              //             "2 × " +
                              //         l.toString() +
                              //         " = " +
                              //         keliling.toString(),
                              //     style: TextStyle(
                              //       color: Colors.black.withOpacity(0.6),
                              //     ),
                              //     textAlign: TextAlign.left,
                              //   ),
                              // ),
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
                                              luas = 0.5 * a * t;
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
                                              luas = 0.5 * a * t;
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
                        title: Text("Menghitung Keliling Segitiga"),
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
                                  "Rumus Keliling\na + b + c\n" +
                                      a.toString() +
                                      " + " +
                                      b.toString() +
                                      " + " +
                                      c.toString() +
                                      " = " +
                                      keliling.toString(),
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              // Padding(
                              //   padding: EdgeInsets.only(right: 16, left: 16),
                              //   child: Text(
                              //     "Rumus Keliling\n2 × p + 2 × l\n" +
                              //         "2 × " +
                              //         p.toString() +
                              //         " = "
                              //             "2 × " +
                              //         l.toString() +
                              //         " = " +
                              //         keliling.toString(),
                              //     style: TextStyle(
                              //       color: Colors.black.withOpacity(0.6),
                              //     ),
                              //     textAlign: TextAlign.left,
                              //   ),
                              // ),
                              Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
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
                                              keliling = a + b + c;
                                            });
                                          },
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              labelText: "sisi b",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: b1,
                                          onChanged: (s) {
                                            setState(() {
                                              b = double.parse(s);
                                              keliling = a + b + c;
                                            });
                                          },
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.25,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              labelText: "sisi c",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: c1,
                                          onChanged: (s) {
                                            setState(() {
                                              c = double.parse(s);
                                              keliling = a + b + c;
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
