import 'dart:convert';

// import 'package:artiket/common/apis/apis.dart';
import 'package:artiket/common/apis/user.dart';
import 'package:artiket/common/entities/entities.dart';
import 'package:artiket/common/services/storage.dart';
import 'package:artiket/common/values/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserStore extends GetxController {
  static UserStore get to => Get.find();

  // 로그인 여부 확인
  final _isLogin = false.obs;
  // token
  String token = '';
  // profile
  final _profile = UserAccountProfile().obs;

  bool get isLogin => _isLogin.value;
  UserAccountProfile get profile => _profile.value;
  bool get hasToken => token.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    token = StorageService.to.getString(STORAGE_USER_TOKEN_KEY);
    var profileOffline = StorageService.to.getString(STORAGE_USER_PROFILE_KEY);
    if (profileOffline.isNotEmpty) {
      _profile(UserAccountProfile.fromJson(jsonDecode(profileOffline)));
    }
  }

  // token 저장
  Future<void> setToken(String value) async {
    await StorageService.to.setString(STORAGE_USER_TOKEN_KEY, value);
    token = value;
  }

  //  profile 가져오기
  // Future<void> getProfile() async {
  //   if (token.isEmpty) return;
  //   var result = await UserAPI.profile();
  //   _profile(result);
  //   _isLogin.value = true;
  //   StorageService.to.setString(STORAGE_USER_PROFILE_KEY, jsonEncode(result));
  // }

  // // profile 저장
  Future<void> saveProfile(UserAccountProfile profile) async {
    _isLogin.value = true;
    StorageService.to.setString(STORAGE_USER_PROFILE_KEY, jsonEncode(profile));
  }

  // Future<void> saveProfile(UserLoginResponseEntity profile) async {
  //   _isLogin.value = true;
  //   StorageService.to.setString(STORAGE_USER_PROFILE_KEY, jsonEncode(profile));
  // }

  // void saveProfile(bool boll) {
  //   _isLogin.value = boll;
  //   //StorageService.to.setString(STORAGE_USER_PROFILE_KEY, jsonEncode(profile));
  // }

  // // 로그아웃
  Future<void> onLogout() async {
    if (_isLogin.value) await UserAPI.logout();
    await StorageService.to.remove(STORAGE_USER_TOKEN_KEY);
    _isLogin.value = false;
    token = '';
  }
}
