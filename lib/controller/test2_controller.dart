import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test2Controller extends GetxController {
  late TextEditingController
  skorPemainController; //controller untuk input skor pemain
  late TextEditingController
  skorGitsController; //controller untuk input skor GITS

  RxList<int> hasilRanking = <int>[].obs; //hasil ranking GITS

  @override
  void onInit() {
    skorPemainController = TextEditingController();
    skorGitsController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    skorPemainController.dispose();
    skorGitsController.dispose();
    super.onClose();
  }

  //list ranking untuk setiap skor GITS
  List<int> denseRanking(List<int> scores, List<int> gitsScores) {
    List<int> uniqueScores = [];

    for (int score in scores) {
      if (uniqueScores.isEmpty || uniqueScores.last != score) {
        uniqueScores.add(score);
      }
    }

    List<int> result = [];

    for (int gitsScore in gitsScores) {
      int rank = 1;

      //tentukan ranking dengan membandingkan skor
      for (int i = 0; i < uniqueScores.length; i++) {
        if (gitsScore < uniqueScores[i]) {
          rank++;
        } else {
          break;
        }
      }

      result.add(rank);
    }
    return result;
  }

  //fungsi untuk memproses input dari textfield dan menyimpan ke hasilRanking
  void prosesRanking() {
    try {
      //parsing input menjadi list int
      List<int> scores = skorPemainController.text
          .split(" ")
          .map((e) => int.tryParse(e) ?? 0)
          .toList();

      List<int> gitsScores = skorGitsController.text
          .split(" ")
          .map((e) => int.tryParse(e) ?? 0)
          .toList();

      //hitung ranking
      hasilRanking.value = denseRanking(scores, gitsScores);
    } catch (e) {
      hasilRanking.value = [];
    }
  }

  //mengubah list jadi string
  String get hasilFormatted => hasilRanking.join(" ");
}
