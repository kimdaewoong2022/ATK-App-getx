import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

class AppPages {
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    // GetPage(
    //   name: AppRoutes.INITIAL,
    //   page: () => WelcomePage(),
    //   binding: WelcomeBinding(),
    //   middlewares: [
    //     RouteWelcomeMiddleware(priority: 1),
    //   ],
    // ),
    // GetPage(
    //   name: AppRoutes.SIGN_IN,
    //   page: () => SignInPage(),
    //   binding: SignInBinding(),
    // ),
    // GetPage(
    //   name: AppRoutes.SIGN_UP,
    //   page: () => SignUpPage(),
    //   binding: SignUpBinding(),
    // ),
  ];
}
