import 'dart:convert';

import 'package:artiket/common/entities/entities.dart';
import 'package:artiket/common/http/artiket_service_json.swagger.dart';
import 'package:artiket/common/services/storage.dart';
import 'package:artiket/common/values/values.dart';

import 'package:chopper/chopper.dart' as chopper;
import 'package:flutter/material.dart';

class UserAPI {
  /// 로그인
  static Future<UserAccountProfile?> login(
      String account, String password) async {
    final client = ArtiketServiceJson.create();

    chopper.Response<BasicResult> basicResult = await client
        .v1PassportAuthUserAccountPost(account: account, password: password);

    if (basicResult.statusCode != 200) {
      ///Some network error
      debugPrint('Some network error : ${basicResult.error}');
      return null;
    } else {
      //유저정보 디코딩
      String jsonString = basicResult.body.toString();
      Map<String, dynamic> dataMap = jsonDecode(jsonString);
      var userAccountProfile = UserAccountProfile.fromJson(dataMap);

      // //엑세스 토큰 저장
      // StorageService.to.setString(
      //     STORAGE_USER_TOKEN_KEY, (userAccountProfile.data!.accessToken)!);
      return userAccountProfile;
    }
  }

  /// 로그아웃
  static Future logout() async {
    final client = ArtiketServiceJson.create();

    //인증 토큰 가져오기
    var accessToken = StorageService.to.getString(STORAGE_USER_TOKEN_KEY);

    chopper.Response<BasicResult> basicResult =
        await client.v1PassportAuthLogoutPost(xAccessToken: accessToken);

    if (basicResult.statusCode != 200) {
      ///Some network error
      debugPrint('Some network error : ${basicResult.error}');
    } else {
      //유저정보 디코딩
      String jsonString = basicResult.body.toString();
      Map<String, dynamic> dataMap = jsonDecode(jsonString);
      //return UserAccountProfile.fromJson(dataMap);
    }
  }
}
