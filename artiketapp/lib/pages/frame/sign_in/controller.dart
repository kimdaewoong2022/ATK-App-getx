import 'package:artiket/common/routers/routes.dart';
import 'package:artiket/common/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SignInController extends GetxController {
  final state = SignInState();

  SignInController();

  // email 이메일 컨트롤러
  final TextEditingController emailController = TextEditingController();
  // 비밀번호 컨트롤러
  final TextEditingController passController = TextEditingController();

  // final MyRepository repository;
  // SignInController({@required this.repository}) : assert(repository != null);

  // 등록 인터페이스로 이동
  handleNavSignUp() {
    Get.toNamed(AppRoutes.SIGN_UP);
  }

  // 비밀번호를 잊으 셨나요
  handleFogotPassword() {
    toastInfo(msg: '비밀번호 찾기');
  }

  // 로그인 작업 수행
  handleSignIn() async {
    // if (!duIsEmail(_emailController.value.text)) {
    //   toastInfo(msg: '정확한 이메일을 입력하세요');
    //   return;
    // }
    // if (!duCheckStringLength(_passController.value.text, 6)) {
    //   toastInfo(msg: '비밀번호는 6자리 이상이어야 합니다');
    //   return;
    // }

    // UserLoginRequestEntity params = UserLoginRequestEntity(
    //   email: emailController.value.text,
    //   password: duSHA256(passController.value.text),
    // );

    // UserLoginResponseEntity userProfile = await UserAPI.login(
    //   params: params,
    // );
    // UserStore.to.saveProfile(userProfile);

    // Get.offAndToNamed(AppRoutes.Application);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }
}
