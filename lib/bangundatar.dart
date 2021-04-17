import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PersegiPage extends StatefulWidget {
  @override
  _PersegiPageState createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {
  TextEditingController sisi = TextEditingController();
  double luas, keliling, sisinya = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/page/persegi.png"))),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Persegi",
                  style: TextStyle(
                      fontFamily: "geforce",
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Persegi merupakan bangun datar 2 dimensi yang terdiri dari 4 sisi yang sama panjang. Keempat sisi tersebut memiliki 4 titik sudut dengan jumlah 90 derajat.",
                  style: TextStyle(
                    fontFamily: "geforce",
                    fontSize: 16,
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Menghitung Luas dan Keliling Persegi"),
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
                                "Rumus Luas\ns × s = \n" +
                                    sisinya.toString() +
                                    " × " +
                                    sisinya.toString() +
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
                              child: Text(
                                "Rumus Keliling\n4 × s = \n" +
                                    "4" +
                                    " × " +
                                    sisinya.toString() +
                                    " = " +
                                    keliling.toString(),
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "sisi",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              controller: sisi,
                              onTap: () {
                                var croll = ScrollController();
                                croll.animateTo(
                                  0.0,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOutQuart,
                                );
                              },
                              onChanged: (s) {
                                setState(() {
                                  sisinya = double.parse(s);
                                  luas = double.parse(s) * double.parse(s);
                                  keliling = 4 * double.parse(s);
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
