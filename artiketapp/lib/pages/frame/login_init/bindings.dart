import 'package:get/get.dart';

import 'controller.dart';

class LoginInitBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginInitController>(() => LoginInitController());
  }
}
