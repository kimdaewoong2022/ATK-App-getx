import 'package:artiket/common/routers/routes.dart';
import 'package:artiket/common/store/config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

/// 환영페이지
class RouteWelcomeMiddleware extends GetMiddleware {
  // priority 작은 숫자가 우선 순위가 높음
  @override
  int? priority = 0;

  RouteWelcomeMiddleware({required this.priority});

  @override
  RouteSettings? redirect(String? route) {
    if (ConfigStore.to.isFirstOpen == true) {
      return null;
      // } else if (UserStore.to.isLogin == true) {
      //   return RouteSettings(name: AppRoutes.Application);
    } else {
      return RouteSettings(name: AppRoutes.SIGN_IN);
    }
  }
}
