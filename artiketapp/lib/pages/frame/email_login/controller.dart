import 'package:artiket/common/apis/user.dart';
import 'package:artiket/common/entities/entities.dart';
import 'package:artiket/common/routers/routes.dart';
import 'package:artiket/common/services/storage.dart';
import 'package:artiket/common/store/store.dart';
import 'package:artiket/common/utils/utils.dart';
import 'package:artiket/common/values/values.dart';
import 'package:artiket/common/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class EmailLoginController extends GetxController {
  EmailLoginController();

  // email 이메일 컨트롤러
  final TextEditingController emailController = TextEditingController();
  // 비밀번호 컨트롤러
  final TextEditingController passController = TextEditingController();

  // 등록 인터페이스로 이동
  handleNavSignUp() {
    Get.toNamed(AppRoutes.SIGN_UP);
  }

  // 로그인 작업 수행
  handleLogIn() async {
    // if (!utilIsEmail(emailController.value.text)) {
    //   toastInfo(msg: '정확한 이메일을 입력하세요');
    //   return;
    // }
    if (!utilCheckStringLength(passController.value.text, 6)) {
      toastInfo(msg: '비밀번호는 6자리 이상이어야 합니다');
      return;
    }

    // UserLoginRequestEntity params = UserLoginRequestEntity(
    //   email: emailController.value.text,
    //   password: duSHA256(passController.value.text),
    // );

    UserAccountProfile? userProfile =
        await UserAPI.login(emailController.text, passController.text);

    if (userProfile != null) {
      UserStore.to.saveProfile(userProfile);

      //엑세스 토큰 저장
      StorageService.to
          .setString(STORAGE_USER_TOKEN_KEY, (userProfile.data!.accessToken)!);

      Get.offAndToNamed(AppRoutes.Application);
    } else {
      toastInfo(msg: '로그인 정보를 다시 입력해주세요.');
    }
  }

  // 비밀번호를 잊으셨나요
  handleFogotPassword() {
    toastInfo(msg: '비밀번호 찾기');
  }

  final state = EmailLoginState();

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
