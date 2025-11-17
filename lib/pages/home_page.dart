import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_problemsolving_test/colors/color_themes.dart';
import 'package:internship_problemsolving_test/routes/route_names.dart';
import 'package:internship_problemsolving_test/widgets/custom_widgets/button_cstm.dart';

//menggunakan GetX sebagai state management

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // warna atas gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.topRight,
                colors: [
                  ColorsApp.navyTerang,
                  ColorsApp.ungu,
                ],
              ),
            ),
          ),

          ///warna bawah
          Positioned(
            top: MediaQuery.of(context).size.height * 0.47, // bagian tengah
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: ColorsApp.putih,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                ),
              ),
            ),
          ),

          //card + button
          Center(
            child: Container(
              width: 348,
              height: 386,
              decoration: BoxDecoration(
                border: Border.all(color: ColorsApp.abu.withValues(alpha: 0.4), width: 2),
                color: ColorsApp.cream,
                borderRadius: BorderRadius.circular(13.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonCustom(
                      label: "Test 1 A000124 of Sloane’s OEIS",
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                      height: 54,
                      width: double.infinity,
                      color: ColorsApp.putih,
                      onTap: () => Get.toNamed(RouteNames.test1Page),
                    ),
                    SizedBox(height: 30),
                    ButtonCustom(
                      label: "Test 2 Dense Ranking",
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                      height: 54,
                      width: double.infinity,
                      color: ColorsApp.putih,
                      onTap: () => Get.toNamed(RouteNames.test2Page),
                    ),
                    SizedBox(height: 30),
                    ButtonCustom(
                      label: "Test 3 Highest Palindrome",
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                      height: 54,
                      width: double.infinity,
                      color: ColorsApp.putih,
                      onTap: () => Get.toNamed(RouteNames.test3Page),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
