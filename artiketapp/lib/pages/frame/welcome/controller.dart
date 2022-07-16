import 'package:artiket/common/routers/routes.dart';
import 'package:artiket/common/store/store.dart';
import 'package:get/get.dart';

import 'index.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();

  WelcomeController();

  // 등록 인터페이스로 이동
  handleNavSignIn() async {
    await ConfigStore.to.saveAlreadyOpen();
    //Get.offAndToNamed(AppRoutes.SIGN_IN);
    //Get.offAndToNamed(AppRoutes.SIGN_UP);
    //Get.to(AppRoutes.SIGN_UP);
    Get.toNamed(AppRoutes.SIGN_UP);
  }

  @override
  void onReady() {
    super.onReady();
  }
}
