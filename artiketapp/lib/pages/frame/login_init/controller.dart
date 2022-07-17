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

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }
}
