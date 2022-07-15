import 'package:artiket/common/services/services.dart';
import 'package:artiket/common/values/values.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:package_info/package_info.dart';

class ConfigStore extends GetxController {
  static ConfigStore get to => Get.find();

  bool isFirstOpen = false;
  PackageInfo? _platform;
  String get version => _platform?.version ?? '-';
  bool get isRelease => bool.fromEnvironment("dart.vm.product");

  @override
  void onInit() {
    super.onInit();
    isFirstOpen = StorageService.to.getBool(STORAGE_DEVICE_FIRST_OPEN_KEY);
  }

  Future<void> getPlatform() async {
    _platform = await PackageInfo.fromPlatform();
  }

  //  APP 사용자가 앱을 열었음을 저장.
  Future<bool> saveAlreadyOpen() {
    return StorageService.to.setBool(STORAGE_DEVICE_FIRST_OPEN_KEY, false);
  }
}
