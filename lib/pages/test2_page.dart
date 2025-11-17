import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_problemsolving_test/colors/color_themes.dart';
import 'package:internship_problemsolving_test/controller/test2_controller.dart';
import 'package:internship_problemsolving_test/widgets/custom_widgets/appbar_custom.dart';
import 'package:internship_problemsolving_test/widgets/custom_widgets/button_cstm.dart';
import 'package:internship_problemsolving_test/widgets/custom_widgets/textfield_custom.dart';

//menggunakan GetX sebagai state management

class Test2Page extends StatelessWidget {
  final testController = Get.find<Test2Controller>(); //inject controller getx
  Test2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.putih,
      appBar: AppbarCustom(
        title: "Test 2 Dense Ranking",
        gradientColors: [ColorsApp.navyTerang, ColorsApp.ungu],
      ),
      body: GestureDetector(
        //ketika user tap di luar field, keyboard tertutup
        behavior: HitTestBehavior.translucent,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsGeometry.all(64),
          child: Center(
            child: Column(
              children: [
                TextfieldCustom(
                  //input skor pemain
                  controller: testController.skorPemainController,
                  height: 66,
                  width: double.infinity,
                  hintText: "Skor pemain (pisah dengan spasi)",
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 24),
                TextfieldCustom(
                  //input skor milik GITS
                  controller: testController.skorGitsController,
                  height: 66,
                  width: double.infinity,
                  hintText: "Skor GITS (pisah dengan spasi)",
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 60),
                ButtonCustom(
                  //button proses Dense Ranking
                  height: 54,
                  width: 174,
                  label: "Hitung Ranking",
                  textColor: ColorsApp.putih,
                  fontsize: 16,
                  fontWeight: FontWeight.bold,
                  color: ColorsApp.ungu,
                  onTap: () => testController.prosesRanking(),
                ),

                SizedBox(height: 60),
                Obx(
                  //menampilkan hasil Dense Ranking (reactive dengan Obx)
                  () => Text(
                    "Hasil: ${testController.hasilFormatted}",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
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
