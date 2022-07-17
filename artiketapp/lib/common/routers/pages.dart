import 'package:artiket/common/middlewares/middlewares.dart';
import 'package:artiket/pages/frame/email_login/index.dart';
import 'package:artiket/pages/frame/login_init/index.dart';
import 'package:artiket/pages/frame/sign_in/index.dart';
import 'package:artiket/pages/frame/sign_up/index.dart';
import 'package:artiket/pages/frame/signup_complete/view.dart';
import 'package:artiket/pages/frame/signup_init/index.dart';
import 'package:artiket/pages/frame/welcome/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
      middlewares: [
        RouteWelcomeMiddleware(priority: 1),
      ],
    ),
    GetPage(
      name: AppRoutes.LOGININ_INIT,
      page: () => LoginInitPage(),
      binding: LoginInitBinding(),
    ),
    GetPage(
      name: AppRoutes.EMAIL_LOGIN,
      page: () => EmailLoginPage(),
      binding: EmailLoginBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => SignInPage(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGNUP_INIT,
      page: () => SignupInitPage(),
      binding: SignupInitBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGN_UP,
      page: () => SignUpPage(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: AppRoutes.SIGNUP_COMPLETE,
      page: () => SignupCompletePage(),
      binding: SignUpBinding(),
    ),
  ];
}
