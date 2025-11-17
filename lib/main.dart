import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internship_problemsolving_test/routes/app_pages.dart';
import 'package:internship_problemsolving_test/routes/route_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //menggunakan GetX sebagai state management

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Internship Problem Solving Test',
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      initialRoute: RouteNames.home,
      getPages: AppPages.pages,
    );
  }
}
