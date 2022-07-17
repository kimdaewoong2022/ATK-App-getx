import 'package:artiket/common/values/values.dart';
import 'package:artiket/common/widgets/widgets.dart';
import 'package:artiket/pages/favorite/index.dart';
import 'package:artiket/pages/feed/index.dart';
import 'package:artiket/pages/home/index.dart';
import 'package:artiket/pages/profile/index.dart';
import 'package:artiket/pages/search/index.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'index.dart';

class ApplicationPage extends GetView<ApplicationController> {
  const ApplicationPage({Key? key}) : super(key: key);

  AppBar _buildAppBar() {
    return transparentAppBar(
        title: Obx(() => Text(
              controller.tabTitles[controller.state.page],
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: 'Montserrat',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            )),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: AppColors.primaryText,
            ),
            onPressed: () {},
          )
        ]);
  }

  Widget _buildPageView() {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        HomePage(),
        FeedPage(),
        SearchPage(),
        FavoritePage(),
        ProfilePage(),
        // Text('BookmarksPage'),
        // Text('AccountPage'),
      ],
      controller: controller.pageController,
      onPageChanged: controller.handlePageChanged,
    );
  }

  Widget _buildBottomNavigationBar() {
    return Obx(() => DotNavigationBar(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          enableFloatingNavBar: false,
          itemPadding: const EdgeInsets.symmetric(horizontal: 15),
          currentIndex: controller.state.page,
          duration: const Duration(milliseconds: 1200),
          //backgroundColor: Get.theme.backgroundColor,
          //backgroundColor: Color.fromARGB(180, 255, 255, 255).withOpacity(0.2),
          backgroundColor: Color.fromARGB(180, 255, 255, 255),
          // backgroundColor:
          //     Colors.black.withOpacity(0.1), //here set your transparent level
          //backgroundColor: Colors.black.withOpacity(0.2),
          //backgroundColor: Color.fromARGB(24, 52, 52, 52), //반투명 하단 네비게이션바
          // onTap: (idx) {
          //   controller.handlePageChanged(idx);
          // },
          onTap: controller.handleNavBarTap,
          items: controller.bottomTabs,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildPageView(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }
}
