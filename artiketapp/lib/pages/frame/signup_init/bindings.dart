import 'package:get/get.dart';

import 'controller.dart';

class SignupInitBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupInitController>(() => SignupInitController());
  }
}
