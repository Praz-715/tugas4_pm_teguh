import 'package:flutter/material.dart';

class Lingkaran extends StatefulWidget {
  @override
  _LingkaranState createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  TextEditingController j1 = TextEditingController();
  TextEditingController d1 = TextEditingController();
  double luas, keliling, j, d;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lingkaran"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/page/lingkaran.png"))),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lingkaran",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "geforce",
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Lingkaran adalah bentuk yang terdiri dari semua titik dalam bidang yang berjarak tertentu dari titik tertentu, pusat; ekuivalennya adalah kurva yang dilacak oleh titik yang bergerak dalam bidang sehingga jaraknya dari titik tertentu adalah konstan memiliki satuan berupa diameter dan jari-jari",
                  style: TextStyle(
                    fontFamily: "geforce",
                    fontSize: 16,
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Menghitung Luas dan Keliling Lingkaran"),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  "Rumus Luas\n𝜋 × 𝑟^2\n 22/7" +
                                      " × " +
                                      j.toString() +
                                      "^2"
                                          " = " +
                                      luas.toString(),
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 16, left: 16),
                                child: Text(
                                  "Rumus Keliling\n𝜋 × d\n" +
                                      "22/7 × " +
                                      d.toString() +
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
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.4,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                              labelText: "jari-jari",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: j1,
                                          onChanged: (s) {
                                            setState(() {
                                              j = double.parse(s);
                                              d = j * 2;
                                              luas = 22 / 7 * j * j;
                                              keliling = 22 / 7 * (2 * j);
                                            });
                                          },
                                        ),
                                      ),
                                      // Container(
                                      //   width:
                                      //       MediaQuery.of(context).size.width *
                                      //           0.4,
                                      //   child: TextField(
                                      //     keyboardType: TextInputType.number,
                                      //     decoration: InputDecoration(
                                      //         labelText: "diameter",
                                      //         border: OutlineInputBorder(
                                      //             borderRadius:
                                      //                 BorderRadius.circular(
                                      //                     10))),
                                      //     controller: d1,
                                      //     onChanged: (s) {
                                      //       setState(() {
                                      //         d = double.parse(s);
                                      //         luas = 22 / 7 * (d/2) * (d/2);
                                      //         keliling = 22 / 7 * (2 * j);
                                      //       });
                                      //     },
                                      //   ),
                                      // ),
                                    ],
                                  )),
                            ],
                          ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
