import 'package:artiket/common/style/style.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../index.dart';

class UserProfilePanelWidget extends GetView<ProfileController> {
  const UserProfilePanelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      //height: 178,
      height: 190.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 340.w,
            //height: 178,
            height: 190.h,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 340.w,
                      //height: 142,
                      height: 155.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x1e000000),
                            blurRadius: 15,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.only(
                        top: 83,
                        bottom: 15,
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 311,
                                  //height: 44,
                                  height: 84,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 4),
                                          InkWell(
                                            onTap: () {
                                              // Get.to(OrderDeliveryPage(),
                                              //     transition: Transition
                                              //         .leftToRight);
                                            },
                                            child: SizedBox(
                                              width: 59,
                                              child: SvgPicture.asset(
                                                "assets/icons/ico_order_delivery.svg",
                                                color: const Color.fromARGB(
                                                    255, 52, 52, 52),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 12),
                                          const Expanded(
                                            child: SizedBox(
                                              width: 59,
                                              child: Text(
                                                "주문 및 배송",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xff343434),
                                                  fontSize: 12,
                                                  fontFamily: "Noto Sans",
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          SizedBox(
                                            width: 59,
                                            child: Text(
                                              //'value.orderCount.value}/value.deliveryCount.value}',
                                              '20 / 3',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xff343434),
                                                fontSize: 20,
                                                fontFamily: "Metropolis",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 25),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 59,
                                            child: SvgPicture.asset(
                                              "assets/icons/ico_my_review.svg",
                                              color: Color.fromARGB(
                                                  255, 52, 52, 52),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Expanded(
                                            child: SizedBox(
                                              width: 59,
                                              child: Text(
                                                "리뷰",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xff343434),
                                                  fontSize: 12,
                                                  fontFamily: "Noto Sans",
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          SizedBox(
                                            width: 59,
                                            child: Text(
                                              //'value.reviewCount.value}',
                                              '5',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xff343434),
                                                fontSize: 20,
                                                fontFamily: "Metropolis",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 25),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 59,
                                            child: SvgPicture.asset(
                                              "assets/icons/ico_my_message.svg",
                                              color: Color.fromARGB(
                                                  255, 52, 52, 52),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Expanded(
                                            child: SizedBox(
                                              width: 59,
                                              child: Text(
                                                "메시지",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xff343434),
                                                  fontSize: 12,
                                                  fontFamily: "Noto Sans",
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          SizedBox(
                                            width: 59,
                                            child: Text(
                                              //'value.messageCount.value}',
                                              '23',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xff343434),
                                                fontSize: 20,
                                                fontFamily: "Metropolis",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 25),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 59,
                                            child: SvgPicture.asset(
                                              "assets/icons/ico_my_heart.svg",
                                              color: Color.fromARGB(
                                                  255, 52, 52, 52),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Expanded(
                                            child: SizedBox(
                                              width: 59,
                                              child: Text(
                                                "스크랩",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xff343434),
                                                  fontSize: 12,
                                                  fontFamily: "Noto Sans",
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          SizedBox(
                                            width: 59,
                                            child: Text(
                                              //'value.postLikeCount.value}',
                                              '52',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xff343434),
                                                fontSize: 20,
                                                fontFamily: "Metropolis",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Positioned.fill(
                          //   child: FlutterLogo(size: 142),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 375.w / 4 + 25.w,
                  top: 0,
                  child: SizedBox(
                    width: 220.w,
                    height: 120.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              width: 70,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: CircleAvatar(
                                      radius: 14,
                                      backgroundColor: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(
                                            2.0), // 아바타 테리 두께
                                        child: ClipOval(
                                          child: ExtendedImage.asset(
                                            "assets/images/profile_noimage.png",
                                            fit: BoxFit.cover,
                                            width: 70,
                                            height: 70,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "${controller.userName} (${controller.buyerID})",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 3),
                            Container(
                              width: 110,
                              height: 15,
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                      child: SvgPicture.asset(
                                        "assets/icons/ico_my_point.svg",
                                        color: AppColor.accentColor,
                                      ),
                                    ),
                                    Text(
                                      "12,800 포인트",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: AppColor.accentColor,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            // Get.to(NotificationPage(),
                            //     transition: Transition.upToDown);
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                            child: SvgPicture.asset(
                              "assets/icons/ico_noti.svg",
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Padding(
                          //padding: const EdgeInsets.fromLTRB(1, 11, 0, 0),
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: InkWell(
                            onTap: () {
                              // Get.to(const CartListPage(),
                              //     transition: Transition.upToDown);
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                              child: SvgPicture.asset(
                                "assets/icons/ico_delivery.svg",
                                color: Colors.white,
                              ),
                            ),
                          ),
                          // child: SvgPicture.asset(
                          //   "assets/icons/ico_delivery.svg",
                          //   color: Color.fromARGB(255, 52, 52, 52),
                          // ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
          //const SizedBox(height: 48),
        ],
      ),
    );
  }
}
