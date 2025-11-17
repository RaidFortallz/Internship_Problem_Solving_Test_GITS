import 'package:get/get.dart';
import 'package:internship_problemsolving_test/controller/test2_controller.dart';

class Test2pageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(Test2Controller());
  }
}