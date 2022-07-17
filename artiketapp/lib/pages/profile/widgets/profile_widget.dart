import 'package:artiket/common/style/color.dart';
import 'package:artiket/common/widgets/widgets.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../index.dart';
import 'userProfilePanelWidget.dart';

/// hello
class ProfileWidget extends GetView<ProfileController> {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Obx(() => Text(controller.state.title)),
    // );
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                floating: true,
                pinned: true,
                bottom: const TabBar(
                  indicator: CustomUnderlineTabIndicator(
                    borderSide: BorderSide(
                        color: Color.fromARGB(221, 0, 0, 0), width: 3.0),
                    insets: EdgeInsets.fromLTRB(35.0, 30.0, 35.0, 0.0),
                  ),
                  tabs: [
                    Tab(text: "설정"),
                    Tab(text: "고객센터"),
                  ],
                ),
                expandedHeight: 350,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        child: Container(
                          width: Get.width,
                          height: 150,
                          child: Container(
                            color: Colors.grey,
                          ),
                          // child: ExtendedImage.network(
                          //   "https://i.imgur.com/hLhKj82.jpeg",
                          //   //"https://i.imgur.com/Dmh2UDe.jpeg",
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                      ),
                      Positioned(
                        top: 50,
                        child: UserProfilePanelWidget(),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Container(
                width: Get.width,
                padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: const Text("로그인 정보",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Noto Sans",
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: const Divider(
                        thickness: 1.0,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 7,
                            child: Text(
                              "${controller.userName} 님",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "Noto Sans",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: TextButton(
                              onPressed: () {
                                controller.handleLogout();
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(10)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: const BorderSide(
                                          color: AppColor.accentColor,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                ),
                              ),
                              child: const Text(
                                '로그아웃',
                                style: TextStyle(color: AppColor.accentColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: const Divider(
                        thickness: 5.0,
                        color: Color.fromARGB(66, 171, 171, 171),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: const Text("MY 정보",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Noto Sans",
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: const Divider(
                        thickness: 1.0,
                        color: Colors.black26,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 28,
                        right: 28,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            // onTap: () => Get.to(const AddressSettingScreen(),
                            //     transition: Transition.leftToRight),
                            child: const ListTile(
                              title: Text('배송지 관리'),
                              trailing:
                                  Icon(BootstrapIcons.chevron_right, size: 18),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 16.0),
                              visualDensity:
                                  VisualDensity(vertical: -4), //얇게 처리
                            ),
                          ),
                          // const Divider(
                          //   thickness: 1.2,
                          // ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: const Divider(
                        thickness: 5.0,
                        color: Color.fromARGB(66, 171, 171, 171),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: const Text("알림 설정",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: "Noto Sans",
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: const Divider(
                        thickness: 1.0,
                        color: Colors.black26,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Expanded(
                            flex: 7,
                            child: Text(
                              "기기 알림",
                              style: TextStyle(
                                color: Color.fromARGB(255, 56, 56, 56),
                                fontSize: 16,
                                fontFamily: "Noto Sans",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: TextButton(
                              onPressed: () {
                                // confirmPushNoti();
                              },
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(10)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: const BorderSide(
                                          color: AppColor.accentColor,
                                          width: 1,
                                          style: BorderStyle.solid)),
                                ),
                              ),
                              child: const Text(
                                'on',
                                style: TextStyle(color: AppColor.accentColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: const Divider(
                        thickness: 5.0,
                        color: Color.fromARGB(66, 171, 171, 171),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: Get.width,
                height: 100,
                padding: const EdgeInsets.only(left: 5, right: 5, top: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Container(
                    //   alignment: Alignment.centerLeft,
                    //   padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    //   child: const Text("고객센터",
                    //       style: TextStyle(
                    //         color: Colors.black,
                    //         fontSize: 16,
                    //         fontFamily: "Noto Sans",
                    //         fontWeight: FontWeight.w600,
                    //       )),
                    // ),
                    // Container(
                    //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    //   child: const Divider(
                    //     thickness: 1.0,
                    //     color: Colors.black26,
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 28,
                        right: 28,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const ListTile(
                              title: Text('공지사항'),
                              trailing:
                                  Icon(BootstrapIcons.chevron_right, size: 18),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 16.0),
                              visualDensity:
                                  VisualDensity(vertical: -4), //얇게 처리
                            ),
                          ),
                          const Divider(
                            thickness: 1.2,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 28,
                        right: 28,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            // onTap: () => Get.to(InfomationPage(),
                            //     transition: Transition.leftToRight),
                            child: const ListTile(
                              title: Text('앱문의'),
                              trailing:
                                  Icon(BootstrapIcons.chevron_right, size: 18),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 16.0),
                              visualDensity:
                                  VisualDensity(vertical: -4), //얇게 처리
                            ),
                          ),
                          const Divider(
                            thickness: 1.2,
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    //   child: const Divider(
                    //     thickness: 5.0,
                    //     color: Color.fromARGB(66, 171, 171, 171),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
