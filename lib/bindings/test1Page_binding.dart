import 'package:get/get.dart';
import 'package:internship_problemsolving_test/controller/test1_controller.dart';

class Test1pageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Test1Controller());
  }
}