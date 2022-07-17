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
    //Get.toNamed(AppRoutes.SIGN_UP);
    //Get.offAndToNamed(AppRoutes.LOGININ_INIT);

    //Get.toNamed(AppRoutes.LOGININ_INIT);

    //Get.toNamed(AppRoutes.EMAIL_LOGIN);
    //Get.toNamed(AppRoutes.SIGNUP_INIT);
    //Get.toNamed(AppRoutes.SIGNUP_COMPLETE);

    Get.offAndToNamed(AppRoutes.Application);
  }

  @override
  void onReady() {
    super.onReady();
  }
}
