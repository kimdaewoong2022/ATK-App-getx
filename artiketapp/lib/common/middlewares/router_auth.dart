import 'package:artiket/common/routers/routes.dart';
import 'package:artiket/common/store/user.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

/// 인증확인
class RouteAuthMiddleware extends GetMiddleware {
  // priority 작은 숫자가 우선 순위가 높음
  @override
  int? priority = 0;

  RouteAuthMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (UserStore.to.isLogin ||
        route == AppRoutes.SIGN_IN ||
        route == AppRoutes.SIGN_UP ||
        route == AppRoutes.INITIAL) {
      return null;
    } else {
      Future.delayed(Duration(seconds: 1),
          () => Get.snackbar("인증 만료", "로그인이 만료되었습니다. 다시 로그인하십시오."));
      return RouteSettings(name: AppRoutes.SIGN_IN);
    }
  }
}
