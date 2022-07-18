import 'package:artiket/common/routers/names.dart';
import 'package:get/get.dart';

import 'index.dart';

class LoginInitController extends GetxController {
  LoginInitController();

  final state = LoginInitState();

  // 마지막 페이지로 돌아가기
  handleNavPop() {
    Get.back();
  }

  // 이메일 로그인 페이지로 이동
  handleNavEmailLogIn() async {
    Get.toNamed(AppRoutes.EMAIL_LOGIN);
  }

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "제목",
      "정보",
    );
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
