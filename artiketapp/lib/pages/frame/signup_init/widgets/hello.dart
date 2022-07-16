import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../index.dart';

/// hello
class HelloWidget extends GetView<SignupInitController> {
  const HelloWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 230.w,
        height: 230.h,
        child: Image.asset(
          "assets/images/login_join.png",
          fit: BoxFit.none,
        ),
      ),
    );
  }
}
