import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_problemsolving_test/colors/color_themes.dart';
import 'package:internship_problemsolving_test/controller/test3_controller.dart';
import 'package:internship_problemsolving_test/widgets/custom_widgets/appbar_custom.dart';
import 'package:internship_problemsolving_test/widgets/custom_widgets/button_cstm.dart';
import 'package:internship_problemsolving_test/widgets/custom_widgets/textfield_custom.dart';

//menggunakan GetX sebagai state management

class Test3Page extends StatelessWidget {
  final testController = Get.find<Test3Controller>(); //inject controller getx
  Test3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarCustom(
        title: "Test 3 Highest Palindrome",
        gradientColors: [ColorsApp.navyTerang, ColorsApp.ungu],
      ),

      body: GestureDetector(
        //ketika user tap di luar field, keyboard tertutup
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsGeometry.all(64.0),
          child: Center(
            child: Column(
              children: [
                TextfieldCustom(
                  //input string angka
                  controller: testController.stringController,
                  hintText: "Masukkan string angka",
                  height: 64,
                  width: double.infinity,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 24),
                TextfieldCustom(
                  //input jumlah k
                  controller: testController.kController,
                  hintText: "Masukkan nilai k",
                  height: 64,
                  width: double.infinity,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 48),
                //button proses
                ButtonCustom(
                  label: "Proses",
                  height: 54,
                  width: 174,
                  fontsize: 16,
                  fontWeight: FontWeight.bold,
                  textColor: ColorsApp.putih,
                  color: ColorsApp.ungu,
                  onTap: () => testController.proses(),
                ),
                SizedBox(height: 48),
                //hasil
                Obx(
                  () => Text(
                    "Hasil: ${testController.hasil.value}",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
