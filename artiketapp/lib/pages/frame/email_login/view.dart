import 'package:artiket/common/values/values.dart';
import 'package:artiket/common/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class EmailLoginPage extends GetView<EmailLoginController> {
  const EmailLoginPage({Key? key}) : super(key: key);

  Widget _buildView() {
    return Container(
      width: 295.w,
      child: Column(
        children: [
          const Center_ImageWidget(),
          inputTextEdit_artiket(
            controller: controller.emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: "아이디",
            marginTop: 0,
            // autofocus: true,
          ),
          // password input
          inputPasswordTextEdit_artiket(
              controller: controller.passController,
              keyboardType: TextInputType.visiblePassword,
              hintText: "비밀번호",
              isPassword: true,
              marginTop: 10),

          // 로그인
          btnFlatButtonWidget(
            width: 295.w,
            onPressed: controller.handleLogIn,
            gbColor: AppColors.brackButtonBackground,
            title: "로그인",
          ),
        ],
      ),
    );
    // Column(
    //   children: [
    //     const Center_ImageWidget(),

    //     // 이메일
    //     btnFlatButtonWidget(
    //       onPressed: controller.handleNavSignUp,
    //       gbColor: AppColors.thirdElement,
    //       title: "Sign up",
    //     ),
    //     Spacer(),
    //     // 로그인
    //     btnFlatButtonWidget(
    //       onPressed: controller.handleSignIn,
    //       gbColor: AppColors.primaryElement,
    //       title: "Sign in",
    //     ),
    //   ],
    // );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EmailLoginController>(
      builder: (_) {
        return Scaffold(
          appBar: transparentAppBar(
            title: Text(
              '로그인',
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp),
            ),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.primaryText,
              ),
              onPressed: controller.handleNavPop,
            ),
            actions: <Widget>[
              const SizedBox(
                width: 50,
              ),
            ],
          ),
          body: Center(
            child: GestureDetector(
              onTap: () {
                FocusManager.instance.primaryFocus?.unfocus(); // 키보드 닫기 이벤트
              },
              child: Column(
                children: <Widget>[
                  _buildView(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
