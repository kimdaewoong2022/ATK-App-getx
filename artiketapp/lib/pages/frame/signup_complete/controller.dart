import 'package:get/get.dart';

import 'index.dart';

class SignupCompleteController extends GetxController {
  SignupCompleteController();

  final state = SignupCompleteState();

  // 마지막 페이지로 돌아가기
  handleNavPop() {
    Get.back();
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
