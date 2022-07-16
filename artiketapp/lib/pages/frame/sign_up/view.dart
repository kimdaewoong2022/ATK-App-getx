import 'package:artiket/common/values/values.dart';
import 'package:artiket/common/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({Key? key}) : super(key: key);

  Widget _buildView() {
    return Column(
      children: [
        const HelloWidget(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
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
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.primaryText,
              ),
              onPressed: controller.handleNavPop,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.info_outline,
                  color: AppColors.primaryText,
                ),
                onPressed: controller.handleTip,
              )
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
