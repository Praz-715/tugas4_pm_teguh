import 'package:flutter/material.dart';

class PersegiPanjang extends StatefulWidget {
  @override
  _PersegiPanjangState createState() => _PersegiPanjangState();
}

class _PersegiPanjangState extends State<PersegiPanjang> {
  TextEditingController p1 = TextEditingController();
  TextEditingController l1 = TextEditingController();
  double luas, keliling, p, l;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi Panjang"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/page/ppanjang.png"))),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Persegi Panjang",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "geforce",
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Persegi panjang adalah bangun datar 2 dimensi dengan 2 sisi sejajar yang sama panjang dan memiliki 4 titik sudut siku-siku",
                  style: TextStyle(
                    fontFamily: "geforce",
                    fontSize: 16,
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                            "Menghitung Luas dan Keliling Persegi Panjang"),
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
                                  "Rumus Luas\np × l\n" +
                                      p.toString() +
                                      " × " +
                                      l.toString() +
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
                                  "Rumus Keliling\n2 × p + 2 × l\n" +
                                      "2 × " +
                                      p.toString() +
                                      " = "
                                          "2 × " +
                                      l.toString() +
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
                                              labelText: "panjang",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: p1,
                                          onChanged: (s) {
                                            setState(() {
                                              p = double.parse(s);
                                              luas = double.parse(s) *
                                                  double.parse(s);
                                              keliling = 4 * double.parse(s);
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
                                              labelText: "lebar",
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          controller: l1,
                                          onChanged: (s) {
                                            setState(() {
                                              l = double.parse(s);
                                              luas = double.parse(s) *
                                                  double.parse(s);
                                              keliling = 4 * double.parse(s);
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
