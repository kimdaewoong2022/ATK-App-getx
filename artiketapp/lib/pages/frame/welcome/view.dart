import 'package:artiket/common/values/values.dart';
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

  /// 기능 설명
  /// 너비 80 + 20 + 195 = 295
  Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
    return Container(
      width: 295.w,
      height: 80.h,
      margin: EdgeInsets.only(top: marginTop.h),
      child: Row(
        children: [
          Container(
            width: 80.w,
            height: 80.w,
            child: Image.asset(
              "assets/images/$imageName.png",
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            width: 195.w,
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.normal,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOnboardingItem(
      String imageName, String intro, double marginTop) {
    return Container(
      width: 295.w,
      height: 80.h,
      margin: EdgeInsets.only(top: marginTop.h),
      child: Row(
        children: [
          Container(
            width: 80.w,
            height: 80.w,
            child: Image.asset(
              "assets/images/onboarding.png",
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            width: 195.w,
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.normal,
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 시작 버튼
  Widget _buildStartButton(BuildContext context) {
    return Container(
      width: 295.w,
      height: 42.h,
      margin: EdgeInsets.only(bottom: 30.h),
      child: TextButton(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(TextStyle(
            fontSize: 16.sp,
          )),
          foregroundColor: MaterialStateProperty.resolveWith(
            (states) {
              if (states.contains(MaterialState.focused) &&
                  !states.contains(MaterialState.pressed)) {
                return Colors.blue;
              } else if (states.contains(MaterialState.pressed)) {
                return Colors.deepPurple;
              }
              return AppColors.primaryElement;
            },
          ),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.blue[200];
            }
            return AppColors.primaryBackground;
          }),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: Radii.k6pxRadius,
          )),
        ),
        child: Text("다음"),
        onPressed: controller.handleNavSignIn,
      ),
    );
  }

  /// 헤더 설명
  Widget _buildPageHeaderDetail() {
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

  Widget _buildPageHeaderDetailkor() {
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
            _buildPageHeaderDetail(),
            _buildPageHeaderDetailkor(),
            Spacer(),
            _buildStartButton(context),
          ],
        ),
      ),

      // Center(
      //   child: Column(
      //     children: <Widget>[
      //       Spacer(),
      //       Container(
      //         width: 232.w,
      //         height: 231.h,
      //         child: Image.asset(
      //           "assets/images/onboarding.png",
      //           fit: BoxFit.none,
      //         ),
      //       ),
      //       _buildPageHeaderDetail(),
      //       Spacer(),
      //       _buildStartButton(context),
      //     ],
      //   ),
      // ),
    );
  }
}
