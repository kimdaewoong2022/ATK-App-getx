import 'dart:async';

import 'package:artiket/common/values/values.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:uni_links/uni_links.dart';

import 'index.dart';

class ApplicationController extends GetxController {
  ApplicationController();

  final state = ApplicationState();

  //버텀 네비게이션 탭 목록
  late final List<String> tabTitles;

  late final PageController pageController;

  late final List<DotNavigationBarItem> bottomTabs;

  // 탭바 애니메이션
  void handleNavBarTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 200), curve: Curves.ease);
  }

  // 탭바 페이지 번호 전환
  void handlePageChanged(int page) {
    state.page = page;
  }

  /// 스키마가 내부적으로 열려 있습니다.
  bool isInitialUriIsHandled = false;
  StreamSubscription? uriSub;

  // 처음 열림
  Future<void> handleInitialUri() async {
    if (!isInitialUriIsHandled) {
      isInitialUriIsHandled = true;
      try {
        final uri = await getInitialUri();
        if (uri == null) {
          print('no initial uri');
        } else {
          // 여기에서 scheme 요청을 받음
          print('got initial uri: $uri');
        }
      } on PlatformException {
        print('falied to get initial uri');
      } on FormatException catch (err) {
        print('malformed initial uri, ' + err.toString());
      }
    }
  }

  // tap
  void handleTap(int index) {
    Get.snackbar(
      "제목",
      "정보",
    );
  }

  @override
  void onInit() {
    super.onInit();

    // 정적 데이터 준비
    tabTitles = ['Home', 'Feed', 'Search', 'Favorite', 'Profile'];
    bottomTabs = <DotNavigationBarItem>[
      /// Home
      DotNavigationBarItem(
        icon: SvgPicture.asset(
          "assets/icons/ico_home.svg",
          color: state.page == 0
              ? AppColors.primaryElement
              : Color.fromARGB(255, 132, 132, 132),
        ),
        selectedColor: AppColors.primaryElement,
      ),

      /// Feed
      DotNavigationBarItem(
        icon: SvgPicture.asset(
          "assets/icons/ico_feed.svg",
          //color: _index.value == 1
          color: state.page == 1
              ? AppColors.primaryElement
              : Color.fromARGB(255, 132, 132, 132),
        ),
        selectedColor: AppColors.primaryElement,
      ),

      /// Serarch
      DotNavigationBarItem(
        icon: SvgPicture.asset(
          "assets/icons/ico_search.svg",
          color: state.page == 2
              ? AppColors.primaryElement
              : Color.fromARGB(255, 132, 132, 132),
        ),
        selectedColor: AppColors.primaryElement,
      ),

      /// Heart
      DotNavigationBarItem(
        icon: SvgPicture.asset(
          "assets/icons/ico_heart.svg",
          color: state.page == 3
              ? AppColors.primaryElement
              : Color.fromARGB(255, 132, 132, 132),
        ),
        selectedColor: AppColors.primaryElement,
      ),

      /// Profile
      DotNavigationBarItem(
        icon: SvgPicture.asset(
          "assets/icons/ico_person.svg",
          color: state.page == 4
              ? AppColors.primaryElement
              : Color.fromARGB(255, 132, 132, 132),
        ),
        selectedColor: AppColors.primaryElement,
      ),
    ];
    pageController = new PageController(initialPage: state.page);
  }

  @override
  void onReady() {
    super.onReady();
    //handlePageChanged(0);
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    uriSub?.cancel();
    pageController.dispose();
    super.dispose();
  }
}
