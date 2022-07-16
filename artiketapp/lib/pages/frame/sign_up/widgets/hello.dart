import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../index.dart';

/// hello
class HelloWidget extends GetView<SignUpController> {
  const HelloWidget({Key? key}) : super(key: key);

  //@override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: Obx(() => Text(controller.state.title)),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 232.w,
        height: 231.h,
        child: Image.asset(
          "assets/images/onboarding.png",
          fit: BoxFit.none,
        ),
      ),
    );
  }
}
