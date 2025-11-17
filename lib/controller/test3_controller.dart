import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Test3Controller extends GetxController {
  late TextEditingController stringController;
  late TextEditingController kController;

  RxString hasil = "".obs;

  @override
  void onInit() {
    stringController = TextEditingController();
    kController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    stringController.dispose();
    kController.dispose();
    super.onClose();
  }

  //fungsi rekursif utama
  String generateHighesPalindrome(String s, int k) {
    List<String> chars = s.split("");

    //buat palindrome minimal
    List<String>? minPal = makePalindrome(chars, 0, chars.length - 1, k);

    if (minPal == null) {
      //tidak bisa jadi palindrome
      return "-1";
    }

    //upgrade ke 9 sebisa mungkin
    List<String> maxPal = maximizePalindrome(minPal, 0, minPal.length - 1, k);

    return maxPal.join("");
  }

  //rekursif membuat minimal palindrome
  List<String>? makePalindrome(List<String> s, int left, int right, int k) {
    if (left >= right) return s;

    if (s[left] == s[right]) {
      return makePalindrome(s, left + 1, right - 1, k);
    }

    if (k <= 0) return null;

    //samakan jadi digit yg lebih besar
    String maxDigit = int.parse(s[left]) > int.parse(s[right])
        ? s[left]
        : s[right];

    s[left] = maxDigit;
    s[right] = maxDigit;

    return makePalindrome(s, left + 1, right - 1, k - 1);
  }

  //maksimalkan jadi 9
  List<String> maximizePalindrome(List<String> s, int left, int right, int k) {
    if (left > right || k <= 0) return s;

    if (left == right) {
      //titik tengah
      if (k > 0) s[left] = "9";
      return s;
    }

    if (s[left] != "9") {
      if (k >= 2) {
        s[left] = "9";
        s[right] = "9";
        return maximizePalindrome(s, left + 1, right - 1, k - 2);
      }
    }

    return maximizePalindrome(s, left + 1, right - 1, k);
  }

  //dipanggil dari button
  void proses() {
    try {
      String s = stringController.text.trim();
      int k = int.parse(kController.text);

      hasil.value = generateHighesPalindrome(s, k);
    } catch (e) {
      hasil.value = "-1";
    }
  }
}
