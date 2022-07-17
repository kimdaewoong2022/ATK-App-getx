import 'package:artiket/common/services/services.dart';
import 'package:artiket/common/store/user.dart';
import 'package:artiket/common/values/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class ProfileController extends GetxController {
  ProfileController();

  final state = ProfileState();

  var accessToken = StorageService.to.getString(STORAGE_USER_TOKEN_KEY);
  var userName = StorageService.to.getString(STORAGE_USER_NAME);
  var buyerID = StorageService.to.getString(STORAGE_USER_ID);

  void handleLogout() {
    debugPrint('handleLogout!! : 1 ');
    UserStore.to.onLogout();
    // const RouteSettings(name: AppRoutes.LOGININ_INIT);
    // update();
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
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
