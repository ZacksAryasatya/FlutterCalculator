import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  TextEditingController angkaPertamaController = TextEditingController();
  TextEditingController angkaKeduaController = TextEditingController();

  String hasil = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: TextField(
                controller: angkaPertamaController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  labelText: "First Number",
                  hintText: "Input first number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: TextField(
                controller: angkaKeduaController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  labelText: "Second Number",
                  hintText: "Input second number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (angkaPertamaController.text.isEmpty ||
                        angkaKeduaController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Masukkan angka pertama dan kedua terlebih dahulu",
                          ),
                        ),
                      );
                      return;
                    }
                    int angkaPertama = int.parse(angkaPertamaController.text);
                    int angkaKedua = int.parse(angkaKeduaController.text);
                    int hasilTambah = angkaPertama + angkaKedua;
                    setState(() {
                      hasil = hasilTambah.toString();
                    });
                  },
                  child: Text("+",
                  style: TextStyle(color: Colors.black),),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (angkaPertamaController.text.isEmpty ||
                        angkaKeduaController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Masukkan angka pertama dan kedua terlebih dahulu",
                          ),
                        ),
                      );
                      return;
                    }
                    int angkaPertama = int.parse(angkaPertamaController.text);
                    int angkaKedua = int.parse(angkaKeduaController.text);
                    int hasilKurang = angkaPertama - angkaKedua;
                    setState(() {
                      hasil = hasilKurang.toString();
                    });
                  },
                  child: Text("-",
                  style: TextStyle(color: Colors.black),),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (angkaPertamaController.text.isEmpty ||
                        angkaKeduaController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Masukkan angka pertama dan kedua terlebih dahulu",
                          ),
                        ),
                      );
                      return;
                    }
                    int angkaPertama = int.parse(angkaPertamaController.text);
                    int angkaKedua = int.parse(angkaKeduaController.text);
                    int hasilKali = angkaPertama * angkaKedua;
                    setState(() {
                      hasil = hasilKali.toString();
                    });
                  },
                  child: Text("x",
                  style: TextStyle(color: Colors.black),),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (angkaPertamaController.text.isEmpty ||
                        angkaKeduaController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Masukkan angka pertama dan kedua terlebih dahulu",
                          ),
                        ),
                      );
                      return;
                    }
                    int angkaPertama = int.parse(angkaPertamaController.text);
                    int angkaKedua = int.parse(angkaKeduaController.text);
                    if (angkaKedua != 0) {
                      double hasilBagi = angkaPertama / angkaKedua;
                      setState(() {
                        hasil = hasilBagi.toString();
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Gabisa dibagi dengan 0")),
                      );
                    }
                  },
                  child: Text(":",
                  style: TextStyle(color: Colors.black),),
                ),
              ],
            ),

            Divider(thickness: 1, color: Colors.grey, height: 30),

            Center(
              child: Text(
                "Hasil: ",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Center(
              child: Text(
                hasil,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //buatkan button reset
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    if (angkaPertamaController.text.isEmpty ||
                        angkaKeduaController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Masukkan angka pertama dan kedua terlebih dahulu",
                          ),
                        ),
                      );
                      return;
                    }
                    setState(() {
                      angkaPertamaController.clear();
                      angkaKeduaController.clear();
                      hasil = "0";
                    });
                  },
                  child: Text("Reset",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
