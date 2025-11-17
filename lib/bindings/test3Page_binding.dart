import 'package:get/get.dart';
import 'package:internship_problemsolving_test/controller/test3_controller.dart';

class Test3pageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Test3Controller());
  }
}