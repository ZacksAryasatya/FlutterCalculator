import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final txtAngka1 = TextEditingController();
  final txtAngka2 = TextEditingController();
  var hasil = "".obs;

  void tambah() {
    int angka = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasilJumlah = angka + angka2;
    hasil.value = hasilJumlah.toString();
  }

  void kurang() {
    int angka = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasilKurang = angka - angka2;
    hasil.value = hasilKurang.toString();
  }

  void kali() {
    int angka = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    int hasilKali = angka * angka2;
    hasil.value = hasilKali.toString();
  } 

  void bagi() {
    int angka = int.parse(txtAngka1.text);
    int angka2 = int.parse(txtAngka2.text);

    if (angka2 == 0) {
      hasil.value = "Tidak bisa dibagi dengan nol";
      return;
    }
    
    double hasilBagi = angka / angka2;
    hasil.value = hasilBagi.toString();
  } 
}