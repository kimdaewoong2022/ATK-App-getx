import 'package:get/get.dart';

import 'controller.dart';

class SignupCompleteBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupCompleteController>(() => SignupCompleteController());
  }
}
