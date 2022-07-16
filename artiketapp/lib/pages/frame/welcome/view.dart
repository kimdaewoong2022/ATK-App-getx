import 'package:artiket/common/values/values.dart';
import 'package:artiket/common/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';

class WelcomePage extends GetView<WelcomeController> {
  /// 헤더 제목
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: (60 + 44.0).h), // 상단 시스템 표시줄 44px
      child: Text(
        "Features",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: 24.sp,
          height: 1,
        ),
      ),
    );
  }

  /// 헤더 설명
  Widget _buildArtiketInfo() {
    return Container(
      width: 242.w,
      height: 130.h,
      margin: EdgeInsets.only(top: 14.h, right: 55.w),
      child: Column(
        children: [
          Text(
            "The art of art, the glory of expresssion",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: "Metropolis",
              fontWeight: FontWeight.normal,
              fontSize: 30.sp,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildArtiketInfoKor() {
    return Container(
      width: 305.w,
      height: 50.h,
      margin: EdgeInsets.only(top: 14.h),
      child: Column(
        children: [
          Text(
            "다양한 예술가들과 소통하고 작품을 즐겨보세요.",
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontFamily: "Metropolis",
              fontWeight: FontWeight.normal,
              fontSize: 15.sp,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375.w,
        height: 812.h,
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 78, 7, 176),
            Color.fromARGB(255, 131, 38, 250),
            Color.fromARGB(255, 78, 7, 176)
          ],
        )),
        child: Column(
          children: <Widget>[
            Spacer(),
            Container(
              width: 232.w,
              height: 231.h,
              child: Image.asset(
                "assets/images/onboarding.png",
                fit: BoxFit.none,
              ),
            ),
            _buildArtiketInfo(),
            _buildArtiketInfoKor(),
            Spacer(),
            btnFlatWhiteButtonWidget(
              onPressed: controller.handleNavSignIn,
              title: '다음',
              width: 295.w,
              height: 42.h,
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
