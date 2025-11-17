import 'package:get/get.dart';
import 'package:internship_problemsolving_test/bindings/test1Page_binding.dart';
import 'package:internship_problemsolving_test/bindings/test2Page_binding.dart';
import 'package:internship_problemsolving_test/bindings/test3Page_binding.dart';
import 'package:internship_problemsolving_test/pages/home_page.dart';
import 'package:internship_problemsolving_test/pages/test1_page.dart';
import 'package:internship_problemsolving_test/pages/test2_page.dart';
import 'package:internship_problemsolving_test/pages/test3_page.dart';
import 'package:internship_problemsolving_test/routes/route_names.dart';

class AppPages {
  static final pages = [
    GetPage(name: RouteNames.home, page: () => HomePage()),
    GetPage(
      name: RouteNames.test1Page,
      page: () => Test1Page(),
      binding: Test1pageBinding(),
    ),
    GetPage(
      name: RouteNames.test2Page,
      page: () => Test2Page(),
      binding: Test2pageBinding(),
    ),
    GetPage(
      name: RouteNames.test3Page,
      page: () => Test3Page(),
      binding: Test3pageBinding(),
    ),
  ];
}
