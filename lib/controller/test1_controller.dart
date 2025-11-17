import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test1Controller extends GetxController {
  late TextEditingController textAngka;  //controller buat manangani textfield
  var result = <int>[].obs; //menyimpan hasil perhitungan A000124 pake RxList(obs)

  @override //inialisasi controller
  void onInit() {
    textAngka = TextEditingController();
    super.onInit();
  }

  @override //buat membersihkan resource ketika controller dihapus memori
  void onClose() {
    super.onClose();
    textAngka.dispose();
  }

  //fungsi untuk menghasilkan deret A000124 sebanyak `n` elemen
  void generate(int n) {
    List<int> temp = [];
    int current = 1;

    for (int i = 0; i < n; i++) {
      temp.add(current);
      current += i + 1;
    }

    result.value = temp;

  }

  //ubah list hasil jadi string
  String get formattedResult => result.join("-");
}