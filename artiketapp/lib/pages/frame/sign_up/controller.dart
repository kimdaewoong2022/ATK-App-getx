import 'package:artiket/common/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SignUpController extends GetxController {
  SignUpController();

  final state = SignUpState();

  /// 비즈니스 이벤트

  // 마지막 페이지로 돌아가기
  handleNavPop() {
    Get.back();
    debugPrint('back!!');
  }

  // 프롬프트 메시지
  handleTip() {
    toastInfo(msg: '등록 인터페이스입니다');
  }

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
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
