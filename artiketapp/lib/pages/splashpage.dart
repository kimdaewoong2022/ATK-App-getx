import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:artiket/pages/frame/sign_in/index.dart';
import 'package:artiket/pages/frame/welcome/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double splashTextWidth = width * 0.5;

    double height = MediaQuery.of(context).size.height;
    double splashTextHeight = height * 0.036;

    Image splashImage = Image.asset(
      'assets/images/Opening_with_Logo.png',
      width: width,
      height: height,
    );

    return FutureBuilder(
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      // assert(snapshot != null);
      return Scaffold(
          body: Center(
        child: SizedBox(
          width: 375.w,
          height: 812.h,
          child: AnimatedSplashScreen(
              duration: 3000,
              splash: splashImage,
              //nextScreen: LoginInitScreen(),
              //nextScreen: SignInPage(),
              nextScreen: WelcomePage(),
              //API Test 페이지.. 임시
              // nextScreen: TestApiPage(),
              //결제 Test 페이지.. 임시
              // nextScreen: Home(),
              // nextScreen: PrivacyPolicy(), //개인정보 처리 방침
              // nextScreen: SearchDetail(itemCode: '새로이'),
              // nextScreen: PostalTestPage(), //우편번호 검색 기능 추가
              splashTransition: SplashTransition.fadeTransition,
              pageTransitionType: PageTransitionType.fade,
              backgroundColor: Colors.white),
        ),
      ));
    });
  }
}
