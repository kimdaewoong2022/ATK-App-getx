import 'package:artiket/common/values/values.dart';
import 'package:artiket/common/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class SignupInitPage extends GetView<SignupInitController> {
  const SignupInitPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupInitController>(
      builder: (_) {
        return Scaffold(
          appBar: transparentAppBar(
            title: Text(
              '회원가입',
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
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
