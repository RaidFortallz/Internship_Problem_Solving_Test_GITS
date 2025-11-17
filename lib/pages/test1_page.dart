import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_problemsolving_test/colors/color_themes.dart';
import 'package:internship_problemsolving_test/controller/test1_controller.dart';
import 'package:internship_problemsolving_test/widgets/custom_widgets/appbar_custom.dart';
import 'package:internship_problemsolving_test/widgets/custom_widgets/button_cstm.dart';
import 'package:internship_problemsolving_test/widgets/custom_widgets/textfield_custom.dart';

//menggunakan GetX sebagai state management

class Test1Page extends StatelessWidget {
  final testController = Get.find<Test1Controller>(); //inject controller getx
  Test1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.putih,
      appBar: AppbarCustom(
        title: "Test 1 A000124 of Sloane’s OEIS",
        gradientColors: [ColorsApp.navyTerang, ColorsApp.ungu],
      ),
      body: GestureDetector(
        //ketika user tap di luar field, keyboard tertutup
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).unfocus(),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextfieldCustom(
                //input field
                controller: testController.textAngka,
                height: 74,
                width: 272,
                hintText: "Masukkan Angka",
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 50),
              ButtonCustom(
                //button
                label: "Generate",
                fontsize: 16,
                fontWeight: FontWeight.bold,
                textColor: ColorsApp.putih,
                height: 54,
                width: 135,
                color: ColorsApp.ungu,
                onTap: () => testController.generate(
                  int.parse(testController.textAngka.text),
                ),
              ),
              SizedBox(height: 40),

              //hasil perhitungan
              Obx(
                //menggunakan Obx karena Getx reactive state
                () => Column(
                  children: [
                    Text(
                      "Hasil: ",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ColorsApp.navyGelap,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      testController.formattedResult,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: ColorsApp.navyGelap,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
