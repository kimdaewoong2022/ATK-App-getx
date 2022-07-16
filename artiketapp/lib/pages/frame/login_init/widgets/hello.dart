import 'package:artiket/common/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../index.dart';

/// hello
class LoginInitWidget extends GetView<LoginInitController> {
  const LoginInitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: 232.w,
            height: 231.h,
            child: Image.asset(
              "assets/images/login_init.png",
              fit: BoxFit.none,
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 110,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Divider(
                      thickness: 1.0,
                      color: Colors.black26,
                    )),
                SizedBox(width: 14),
                Text(
                  "로그인 하기",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xff343434),
                    fontSize: 14,
                    fontFamily: "Noto Sans",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 14),
                Container(
                    width: 110,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Divider(
                      thickness: 1.0,
                      color: Colors.black26,
                    )),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(7),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                btnFlatButtonBorderOnlyWidget(
                  onPressed: () {},
                  width: 71,
                  iconFileName: "assets/images/auth/email.png",
                ),
                const SizedBox(width: 10),
                btnFlatButtonBorderOnlyWidget(
                  onPressed: () {},
                  width: 60,
                  iconFileName: "assets/images/auth/kakao_login.png",
                ),
                const SizedBox(width: 10),
                btnFlatButtonBorderOnlyWidget(
                  onPressed: () {},
                  width: 60,
                  iconFileName: "assets/images/auth/naver_login.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
Container(
            width: double.infinity,
            padding: const EdgeInsets.all(7),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Image.asset('assets/images/auth/email.png'),
                ),
                SizedBox(width: 17),
                Container(
                  width: 48,
                  height: 48,
                  child: Image.asset('assets/images/auth/kakao.png'),
                ),
                SizedBox(width: 17),
                Container(
                  width: 48,
                  height: 48,
                  child: Image.asset('assets/images/auth/naver_login.png'),
                ),
              ],
            ),
          ),
          Spacer(),
          Spacer(),
 */