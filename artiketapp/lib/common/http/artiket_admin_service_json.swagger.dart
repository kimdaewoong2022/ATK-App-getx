// ignore_for_file: type=lint

import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;

part 'artiket_admin_service_json.swagger.chopper.dart';
part 'artiket_admin_service_json.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class ArtiketAdminServiceJson extends ChopperService {
  static ArtiketAdminServiceJson create(
      {ChopperClient? client,
      Authenticator? authenticator,
      String? baseUrl,
      Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$ArtiketAdminServiceJson(client);
    }

    final newClient = ChopperClient(
        services: [_$ArtiketAdminServiceJson()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'https://devapi.artiket.io');
    return _$ArtiketAdminServiceJson(newClient);
  }

  ///
  ///@param admin_id 관리자 ID
  ///@param admin_password 관리자 password
  Future<chopper.Response<BasicResult>> v1AdminLoginPost(
      {required String? adminId,
      required String? adminPassword,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminLoginPost(
        adminId: adminId,
        adminPassword: adminPassword,
        cacheControl: cacheControl);
  }

  ///
  ///@param admin_id 관리자 ID
  ///@param admin_password 관리자 password
  @Post(path: '/v1/admin/login', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminLoginPost(
      {@Field('admin_id') required String? adminId,
      @Field('admin_password') required String? adminPassword,
      @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminVerifyPut(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminVerifyPut(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Put(path: '/v1/admin/verify', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminVerifyPut(
      {@Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param admin_id 관리자가 로그인시 사용할 ID
  ///@param admin_password 관리자가 로그인시 사용할 password
  ///@param admin_type 관리자 타입
  ///@param admin_name 관리자 이름
  ///@param admin_position 관리자 직급
  ///@param admin_department 관리자 부서
  Future<chopper.Response<BasicResult>> v1AdminManagersPost(
      {required String? adminId,
      required String? adminPassword,
      required String? adminType,
      required String? adminName,
      String? adminPosition,
      String? adminDepartment,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminManagersPost(
        adminId: adminId,
        adminPassword: adminPassword,
        adminType: adminType,
        adminName: adminName,
        adminPosition: adminPosition,
        adminDepartment: adminDepartment,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param admin_id 관리자가 로그인시 사용할 ID
  ///@param admin_password 관리자가 로그인시 사용할 password
  ///@param admin_type 관리자 타입
  ///@param admin_name 관리자 이름
  ///@param admin_position 관리자 직급
  ///@param admin_department 관리자 부서
  @Post(path: '/v1/admin/managers', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminManagersPost(
      {@Field('admin_id') required String? adminId,
      @Field('admin_password') required String? adminPassword,
      @Field('admin_type') required String? adminType,
      @Field('admin_name') required String? adminName,
      @Field('admin_position') String? adminPosition,
      @Field('admin_department') String? adminDepartment,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param group 관리자의 타입
  Future<chopper.Response<BasicResult>> v1AdminManagersGet(
      {required String? page,
      required String? size,
      String? group,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminManagersGet(
        page: page,
        size: size,
        group: group,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param group 관리자의 타입
  @Get(path: '/v1/admin/managers')
  Future<chopper.Response<BasicResult>> _v1AdminManagersGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('group') String? group,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid 관리자의 ID
  Future<chopper.Response<BasicResult>> v1AdminManagersUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminManagersUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid 관리자의 ID
  @Delete(path: '/v1/admin/managers/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminManagersUidDelete(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid 관리자의 ID
  Future<chopper.Response<BasicResult>> v1AdminManagersUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminManagersUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid 관리자의 ID
  @Get(path: '/v1/admin/managers/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminManagersUidGet(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid 관리자의 ID
  ///@param admin_type 관리자의 타입
  ///@param admin_name 관리자의 이름
  ///@param admin_password 관리자의 password
  ///@param admin_position 관리자의 지급
  ///@param admin_department 관리자의 부서
  Future<chopper.Response<BasicResult>> v1AdminManagersUidPut(
      {required String? uid,
      String? adminType,
      required String? adminName,
      String? adminPassword,
      String? adminPosition,
      String? adminDepartment,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminManagersUidPut(
        uid: uid,
        adminType: adminType,
        adminName: adminName,
        adminPassword: adminPassword,
        adminPosition: adminPosition,
        adminDepartment: adminDepartment,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid 관리자의 ID
  ///@param admin_type 관리자의 타입
  ///@param admin_name 관리자의 이름
  ///@param admin_password 관리자의 password
  ///@param admin_position 관리자의 지급
  ///@param admin_department 관리자의 부서
  @Put(path: '/v1/admin/managers/{uid}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminManagersUidPut(
      {@Path('uid') required String? uid,
      @Field('admin_type') String? adminType,
      @Field('admin_name') required String? adminName,
      @Field('admin_password') String? adminPassword,
      @Field('admin_position') String? adminPosition,
      @Field('admin_department') String? adminDepartment,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param start_date Start Date(KST), default: '2021-04-01'
  ///@param end_date End Date(KST), default: now
  ///@param date_type Type of Data: [D(day),W(week)], default: D(day)
  Future<chopper.Response<BasicResult>> v1AdminAnalyticsOverviewGet(
      {required String? page,
      required String? size,
      String? startDate,
      String? endDate,
      String? dateType,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminAnalyticsOverviewGet(
        page: page,
        size: size,
        startDate: startDate,
        endDate: endDate,
        dateType: dateType,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param start_date Start Date(KST), default: '2021-04-01'
  ///@param end_date End Date(KST), default: now
  ///@param date_type Type of Data: [D(day),W(week)], default: D(day)
  @Get(path: '/v1/admin/analytics/overview')
  Future<chopper.Response<BasicResult>> _v1AdminAnalyticsOverviewGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('start_date') String? startDate,
      @Query('end_date') String? endDate,
      @Query('date_type') String? dateType,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminAnalyticsOverviewTotalGet(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminAnalyticsOverviewTotalGet(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/admin/analytics/overview/total')
  Future<chopper.Response<BasicResult>> _v1AdminAnalyticsOverviewTotalGet(
      {@Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param start_date Start Date(UDT), default: '2021-04-01'
  ///@param end_date End Date(UDT), default: now
  ///@param date_type Type of Data: [D(day),W(week)], default: D(day)
  Future<chopper.Response<BasicResult>> v1AdminReportCommentGet(
      {required String? page,
      required String? size,
      String? startDate,
      String? endDate,
      String? dateType,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReportCommentGet(
        page: page,
        size: size,
        startDate: startDate,
        endDate: endDate,
        dateType: dateType,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param start_date Start Date(UDT), default: '2021-04-01'
  ///@param end_date End Date(UDT), default: now
  ///@param date_type Type of Data: [D(day),W(week)], default: D(day)
  @Get(path: '/v1/admin/report/comment')
  Future<chopper.Response<BasicResult>> _v1AdminReportCommentGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('start_date') String? startDate,
      @Query('end_date') String? endDate,
      @Query('date_type') String? dateType,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param report_date 한국시간 기준 날짜(0000-00-00, 연월일)
  Future<chopper.Response<BasicResult>> v1AdminReportPointGet(
      {String? reportDate, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReportPointGet(
        reportDate: reportDate,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param report_date 한국시간 기준 날짜(0000-00-00, 연월일)
  @Get(path: '/v1/admin/report/point')
  Future<chopper.Response<BasicResult>> _v1AdminReportPointGet(
      {@Query('report_date') String? reportDate,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param report_date 한국시간 기준 날짜(0000-00-00, 연월일)
  Future<chopper.Response<BasicResult>> v1AdminReportPostGet(
      {String? reportDate, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReportPostGet(
        reportDate: reportDate,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param report_date 한국시간 기준 날짜(0000-00-00, 연월일)
  @Get(path: '/v1/admin/report/post')
  Future<chopper.Response<BasicResult>> _v1AdminReportPostGet(
      {@Query('report_date') String? reportDate,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param start_date Start Date(UDT), default: '2021-04-01'
  ///@param end_date End Date(UDT), default: now
  ///@param date_type Type of Data: [D(day),W(week)], default: D(day)
  Future<chopper.Response<BasicResult>> v1AdminReportVoteGet(
      {required String? page,
      required String? size,
      String? startDate,
      String? endDate,
      String? dateType,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReportVoteGet(
        page: page,
        size: size,
        startDate: startDate,
        endDate: endDate,
        dateType: dateType,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param start_date Start Date(UDT), default: '2021-04-01'
  ///@param end_date End Date(UDT), default: now
  ///@param date_type Type of Data: [D(day),W(week)], default: D(day)
  @Get(path: '/v1/admin/report/vote')
  Future<chopper.Response<BasicResult>> _v1AdminReportVoteGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('start_date') String? startDate,
      @Query('end_date') String? endDate,
      @Query('date_type') String? dateType,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param app_id App 고유ID (Android: Package Name, iOS: Bundle ID)
  ///@param app_name App Name
  ///@param app_os App OS
  ///@param app_version App Version (마지막으로 배포된 앱 버전)
  ///@param app_version_minimum App Minimum Version (최소로 업데이트해야할 버전)
  ///@param app_version_review App Review Version (현재 리뷰중인 버전)
  ///@param app_update_link 업데이트할 앱 경로
  ///@param extras 앱 기타 정보
  ///@param resource_key 리소스 저장을 위한 키
  ///@param resources 리소스 데이타
  Future<chopper.Response<BasicResult>> v1AdminAppsPost(
      {required String? appId,
      required String? appName,
      required String? appOs,
      required String? appVersion,
      required String? appVersionMinimum,
      String? appVersionReview,
      required String? appUpdateLink,
      String? extras,
      String? resourceKey,
      String? resources,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminAppsPost(
        appId: appId,
        appName: appName,
        appOs: appOs,
        appVersion: appVersion,
        appVersionMinimum: appVersionMinimum,
        appVersionReview: appVersionReview,
        appUpdateLink: appUpdateLink,
        extras: extras,
        resourceKey: resourceKey,
        resources: resources,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param app_id App 고유ID (Android: Package Name, iOS: Bundle ID)
  ///@param app_name App Name
  ///@param app_os App OS
  ///@param app_version App Version (마지막으로 배포된 앱 버전)
  ///@param app_version_minimum App Minimum Version (최소로 업데이트해야할 버전)
  ///@param app_version_review App Review Version (현재 리뷰중인 버전)
  ///@param app_update_link 업데이트할 앱 경로
  ///@param extras 앱 기타 정보
  ///@param resource_key 리소스 저장을 위한 키
  ///@param resources 리소스 데이타
  @Post(path: '/v1/admin/apps', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminAppsPost(
      {@Field('app_id') required String? appId,
      @Field('app_name') required String? appName,
      @Field('app_os') required String? appOs,
      @Field('app_version') required String? appVersion,
      @Field('app_version_minimum') required String? appVersionMinimum,
      @Field('app_version_review') String? appVersionReview,
      @Field('app_update_link') required String? appUpdateLink,
      @Field('extras') String? extras,
      @Field('resource_key') String? resourceKey,
      @Field('resources') String? resources,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1AdminAppsGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminAppsGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/admin/apps')
  Future<chopper.Response<BasicResult>> _v1AdminAppsGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid App ID
  Future<chopper.Response<BasicResult>> v1AdminAppsUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminAppsUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid App ID
  @Delete(path: '/v1/admin/apps/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminAppsUidDelete(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid App ID
  Future<chopper.Response<BasicResult>> v1AdminAppsUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminAppsUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid App ID
  @Get(path: '/v1/admin/apps/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminAppsUidGet(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid App Index ID
  ///@param app_name App Name
  ///@param app_version App Version (마지막으로 배포된 앱 버전)
  ///@param app_version_minimum App Minimum Version (최소로 업데이트해야할 버전)
  ///@param app_version_review App Review Version (현재 리뷰중인 버전)
  ///@param extras 앱 기타 정보
  ///@param resources 리소스 데이타
  Future<chopper.Response<BasicResult>> v1AdminAppsUidPut(
      {required String? uid,
      required String? appName,
      required String? appVersion,
      required String? appVersionMinimum,
      String? appVersionReview,
      String? extras,
      String? resources,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminAppsUidPut(
        uid: uid,
        appName: appName,
        appVersion: appVersion,
        appVersionMinimum: appVersionMinimum,
        appVersionReview: appVersionReview,
        extras: extras,
        resources: resources,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid App Index ID
  ///@param app_name App Name
  ///@param app_version App Version (마지막으로 배포된 앱 버전)
  ///@param app_version_minimum App Minimum Version (최소로 업데이트해야할 버전)
  ///@param app_version_review App Review Version (현재 리뷰중인 버전)
  ///@param extras 앱 기타 정보
  ///@param resources 리소스 데이타
  @Put(path: '/v1/admin/apps/{uid}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminAppsUidPut(
      {@Path('uid') required String? uid,
      @Field('app_name') required String? appName,
      @Field('app_version') required String? appVersion,
      @Field('app_version_minimum') required String? appVersionMinimum,
      @Field('app_version_review') String? appVersionReview,
      @Field('extras') String? extras,
      @Field('resources') String? resources,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param name channel name, ex) news
  ///@param type Typeof channel: user, press, default: user
  ///@param logo_image logo image path
  ///@param cover_image path image path
  ///@param user_id default: 0
  ///@param rules rule 설정 값, default: {}
  ///@param sort_order default: 0
  ///@param hidden hidden 처리, default: false
  ///@param blocked block 처리, default: false
  ///@param extras extra data, {"tags": ["tag1","tag2"]}
  Future<chopper.Response<BasicResult>> v1AdminChannelsPost(
      {required String? name,
      required String? type,
      required String? logoImage,
      required String? coverImage,
      String? userId,
      Object? rules,
      String? sortOrder,
      num? hidden,
      num? blocked,
      Object? extras,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminChannelsPost(
        name: name,
        type: type,
        logoImage: logoImage,
        coverImage: coverImage,
        userId: userId,
        rules: rules,
        sortOrder: sortOrder,
        hidden: hidden,
        blocked: blocked,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param name channel name, ex) news
  ///@param type Typeof channel: user, press, default: user
  ///@param logo_image logo image path
  ///@param cover_image path image path
  ///@param user_id default: 0
  ///@param rules rule 설정 값, default: {}
  ///@param sort_order default: 0
  ///@param hidden hidden 처리, default: false
  ///@param blocked block 처리, default: false
  ///@param extras extra data, {"tags": ["tag1","tag2"]}
  @Post(path: '/v1/admin/channels', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminChannelsPost(
      {@Field('name') required String? name,
      @Field('type') required String? type,
      @Field('logo_image') required String? logoImage,
      @Field('cover_image') required String? coverImage,
      @Field('user_id') String? userId,
      @Field('rules') Object? rules,
      @Field('sort_order') String? sortOrder,
      @Field('hidden') num? hidden,
      @Field('blocked') num? blocked,
      @Field('extras') Object? extras,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1AdminChannelsGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminChannelsGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/admin/channels')
  Future<chopper.Response<BasicResult>> _v1AdminChannelsGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Channel ID
  Future<chopper.Response<BasicResult>> v1AdminChannelsUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminChannelsUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Channel ID
  @Delete(path: '/v1/admin/channels/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminChannelsUidDelete(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Channel UID
  Future<chopper.Response<BasicResult>> v1AdminChannelsUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminChannelsUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Channel UID
  @Get(path: '/v1/admin/channels/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminChannelsUidGet(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid channel UID
  ///@param user_id No description
  ///@param rules rule 설정 값
  ///@param name channel name, ex) news
  ///@param type Typeof channel: user, press
  ///@param logo_image logo image path
  ///@param cover_image path image path
  ///@param sort_order No description
  ///@param hidden hidden 처리
  ///@param blocked block 처리
  ///@param extras extra data, {"tags": ["tag1","tag2"]}
  Future<chopper.Response<BasicResult>> v1AdminChannelsUidPut(
      {required String? uid,
      String? userId,
      Object? rules,
      String? name,
      String? type,
      String? logoImage,
      String? coverImage,
      String? sortOrder,
      num? hidden,
      num? blocked,
      Object? extras,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminChannelsUidPut(
        uid: uid,
        userId: userId,
        rules: rules,
        name: name,
        type: type,
        logoImage: logoImage,
        coverImage: coverImage,
        sortOrder: sortOrder,
        hidden: hidden,
        blocked: blocked,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid channel UID
  ///@param user_id No description
  ///@param rules rule 설정 값
  ///@param name channel name, ex) news
  ///@param type Typeof channel: user, press
  ///@param logo_image logo image path
  ///@param cover_image path image path
  ///@param sort_order No description
  ///@param hidden hidden 처리
  ///@param blocked block 처리
  ///@param extras extra data, {"tags": ["tag1","tag2"]}
  @Put(path: '/v1/admin/channels/{uid}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminChannelsUidPut(
      {@Path('uid') required String? uid,
      @Field('user_id') String? userId,
      @Field('rules') Object? rules,
      @Field('name') String? name,
      @Field('type') String? type,
      @Field('logo_image') String? logoImage,
      @Field('cover_image') String? coverImage,
      @Field('sort_order') String? sortOrder,
      @Field('hidden') num? hidden,
      @Field('blocked') num? blocked,
      @Field('extras') Object? extras,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Comment Id
  Future<chopper.Response<BasicResult>> v1AdminCommentUidBlockPut(
      {required Object? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminCommentUidBlockPut(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Comment Id
  @Put(path: '/v1/admin/comment/{uid}/block', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminCommentUidBlockPut(
      {@Path('uid') required Object? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param comment_provider Content Provider
  ///@param comment_target Target
  ///@param comment_target_id Target Id
  ///@param comment_title Comment Title
  ///@param comment_content Comment Content
  ///@param user_id Writer Id
  ///@param user_name Writer Name
  ///@param user_password Writer Password
  ///@param extras No description
  Future<chopper.Response<BasicResult>> v1AdminCommentPost(
      {required String? commentProvider,
      required String? commentTarget,
      required String? commentTargetId,
      String? commentTitle,
      required String? commentContent,
      String? userId,
      String? userName,
      String? userPassword,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminCommentPost(
        commentProvider: commentProvider,
        commentTarget: commentTarget,
        commentTargetId: commentTargetId,
        commentTitle: commentTitle,
        commentContent: commentContent,
        userId: userId,
        userName: userName,
        userPassword: userPassword,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param comment_provider Content Provider
  ///@param comment_target Target
  ///@param comment_target_id Target Id
  ///@param comment_title Comment Title
  ///@param comment_content Comment Content
  ///@param user_id Writer Id
  ///@param user_name Writer Name
  ///@param user_password Writer Password
  ///@param extras No description
  @Post(path: '/v1/admin/comment', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminCommentPost(
      {@Field('comment_provider') required String? commentProvider,
      @Field('comment_target') required String? commentTarget,
      @Field('comment_target_id') required String? commentTargetId,
      @Field('comment_title') String? commentTitle,
      @Field('comment_content') required String? commentContent,
      @Field('user_id') String? userId,
      @Field('user_name') String? userName,
      @Field('user_password') String? userPassword,
      @Field('extras') String? extras,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param start_date Start Datetime Of Search
  ///@param end_date End Datetime Of Search
  ///@param filter Search Filter [all / user_name / comment_content / user_id / _id / comment_target_id]
  ///@param keyword Search Keyword
  ///@param comment_provider Comment Provider [all / artiket/ newming / naver / daum / nate ]
  ///@param comment_target Comment Target [all / article / channel / post / comment ]
  ///@param comment_type Comment Type [all / reaction / comment]
  ///@param blocked Including Deleted
  ///@param archived Including Archived
  Future<chopper.Response<BasicResult>> v1AdminCommentGet(
      {required String? page,
      required String? size,
      String? startDate,
      String? endDate,
      String? filter,
      String? keyword,
      String? commentProvider,
      String? commentTarget,
      String? commentType,
      String? blocked,
      String? archived,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminCommentGet(
        page: page,
        size: size,
        startDate: startDate,
        endDate: endDate,
        filter: filter,
        keyword: keyword,
        commentProvider: commentProvider,
        commentTarget: commentTarget,
        commentType: commentType,
        blocked: blocked,
        archived: archived,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param start_date Start Datetime Of Search
  ///@param end_date End Datetime Of Search
  ///@param filter Search Filter [all / user_name / comment_content / user_id / _id / comment_target_id]
  ///@param keyword Search Keyword
  ///@param comment_provider Comment Provider [all / artiket/ newming / naver / daum / nate ]
  ///@param comment_target Comment Target [all / article / channel / post / comment ]
  ///@param comment_type Comment Type [all / reaction / comment]
  ///@param blocked Including Deleted
  ///@param archived Including Archived
  @Get(path: '/v1/admin/comment')
  Future<chopper.Response<BasicResult>> _v1AdminCommentGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('start_date') String? startDate,
      @Query('end_date') String? endDate,
      @Query('filter') String? filter,
      @Query('keyword') String? keyword,
      @Query('comment_provider') String? commentProvider,
      @Query('comment_target') String? commentTarget,
      @Query('comment_type') String? commentType,
      @Query('blocked') String? blocked,
      @Query('archived') String? archived,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  Future<chopper.Response<BasicResult>> v1AdminCommentUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminCommentUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  @Delete(path: '/v1/admin/comment/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminCommentUidDelete(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  Future<chopper.Response<BasicResult>> v1AdminCommentUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminCommentUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  @Get(path: '/v1/admin/comment/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminCommentUidGet(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Comment Id
  Future<chopper.Response<BasicResult>> v1AdminCommentUidPickPut(
      {required Object? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminCommentUidPickPut(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Comment Id
  @Put(path: '/v1/admin/comment/{uid}/pick', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminCommentUidPickPut(
      {@Path('uid') required Object? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Comment Id
  Future<chopper.Response<BasicResult>> v1AdminCommentUidUnblockPut(
      {required Object? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminCommentUidUnblockPut(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Comment Id
  @Put(path: '/v1/admin/comment/{uid}/unblock', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminCommentUidUnblockPut(
      {@Path('uid') required Object? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Comment Id
  Future<chopper.Response<BasicResult>> v1AdminCommentUidUnpickPut(
      {required Object? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminCommentUidUnpickPut(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Comment Id
  @Put(path: '/v1/admin/comment/{uid}/unpick', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminCommentUidUnpickPut(
      {@Path('uid') required Object? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Comment Id
  ///@param comment_target Target
  ///@param comment_target_id Target Id
  ///@param comment_title Comment Title
  ///@param comment_content Comment Content
  ///@param user_id Writer Id
  ///@param extras No description
  Future<chopper.Response<BasicResult>> v1AdminCommentsUidPut(
      {required Object? uid,
      required String? commentTarget,
      required Object? commentTargetId,
      String? commentTitle,
      required String? commentContent,
      String? userId,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminCommentsUidPut(
        uid: uid,
        commentTarget: commentTarget,
        commentTargetId: commentTargetId,
        commentTitle: commentTitle,
        commentContent: commentContent,
        userId: userId,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid Comment Id
  ///@param comment_target Target
  ///@param comment_target_id Target Id
  ///@param comment_title Comment Title
  ///@param comment_content Comment Content
  ///@param user_id Writer Id
  ///@param extras No description
  @Put(path: '/v1/admin/comments/{uid}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminCommentsUidPut(
      {@Path('uid') required Object? uid,
      @Field('comment_target') required String? commentTarget,
      @Field('comment_target_id') required Object? commentTargetId,
      @Field('comment_title') String? commentTitle,
      @Field('comment_content') required String? commentContent,
      @Field('user_id') String? userId,
      @Field('extras') String? extras,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param content_type Content Type
  ///@param content_group Content Group
  ///@param content_key Content Key
  ///@param content_language Content Language
  ///@param content_title Content Title
  ///@param content_html Content HTML ** Unsafe **
  ///@param resource_key Resource Key
  ///@param resources Resource Data (JSON)
  ///@param extras Extra Data (JSON)
  Future<chopper.Response<BasicResult>> v1AdminContentContentsContentTypePost(
      {required String? contentType,
      required String? contentGroup,
      required String? contentKey,
      required String? contentLanguage,
      required String? contentTitle,
      required String? contentHtml,
      String? resourceKey,
      String? resources,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminContentContentsContentTypePost(
        contentType: contentType,
        contentGroup: contentGroup,
        contentKey: contentKey,
        contentLanguage: contentLanguage,
        contentTitle: contentTitle,
        contentHtml: contentHtml,
        resourceKey: resourceKey,
        resources: resources,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param content_type Content Type
  ///@param content_group Content Group
  ///@param content_key Content Key
  ///@param content_language Content Language
  ///@param content_title Content Title
  ///@param content_html Content HTML ** Unsafe **
  ///@param resource_key Resource Key
  ///@param resources Resource Data (JSON)
  ///@param extras Extra Data (JSON)
  @Post(path: '/v1/admin/content/contents/{content_type}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminContentContentsContentTypePost(
      {@Path('content_type') required String? contentType,
      @Field('content_group') required String? contentGroup,
      @Field('content_key') required String? contentKey,
      @Field('content_language') required String? contentLanguage,
      @Field('content_title') required String? contentTitle,
      @Field('content_html') required String? contentHtml,
      @Field('resource_key') String? resourceKey,
      @Field('resources') String? resources,
      @Field('extras') String? extras,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param content_type Content Type
  ///@param content_group Content Group
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1AdminContentContentsContentTypeGet(
      {required String? contentType,
      String? contentGroup,
      required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminContentContentsContentTypeGet(
        contentType: contentType,
        contentGroup: contentGroup,
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param content_type Content Type
  ///@param content_group Content Group
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/admin/content/contents/{content_type}')
  Future<chopper.Response<BasicResult>> _v1AdminContentContentsContentTypeGet(
      {@Path('content_type') required String? contentType,
      @Query('content_group') String? contentGroup,
      @Query('page') required String? page,
      @Query('size') required String? size,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param content_type No description
  ///@param uid No description
  Future<chopper.Response<BasicResult>>
      v1AdminContentContentsContentTypeUidDelete(
          {required String? contentType,
          required String? uid,
          String? xAccessToken,
          String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminContentContentsContentTypeUidDelete(
        contentType: contentType,
        uid: uid,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param content_type No description
  ///@param uid No description
  @Delete(path: '/v1/admin/content/contents/{content_type}/{uid}')
  Future<chopper.Response<BasicResult>>
      _v1AdminContentContentsContentTypeUidDelete(
          {@Path('content_type') required String? contentType,
          @Path('uid') required String? uid,
          @Header('x-access-token') String? xAccessToken,
          @Header('Cache-Control') String? cacheControl});

  ///
  ///@param content_type No description
  ///@param uid No description
  Future<chopper.Response<BasicResult>> v1AdminContentContentsContentTypeUidGet(
      {required String? contentType,
      required String? uid,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminContentContentsContentTypeUidGet(
        contentType: contentType,
        uid: uid,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param content_type No description
  ///@param uid No description
  @Get(path: '/v1/admin/content/contents/{content_type}/{uid}')
  Future<chopper.Response<BasicResult>>
      _v1AdminContentContentsContentTypeUidGet(
          {@Path('content_type') required String? contentType,
          @Path('uid') required String? uid,
          @Header('x-access-token') String? xAccessToken,
          @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Content ID
  ///@param content_type Content Type
  ///@param content_group Content Group
  ///@param content_key Content Key
  ///@param content_language Content Language
  ///@param content_title Content Title
  ///@param content_html Content HTML ** Unsafe **
  ///@param resources Resource Data (JSON)
  ///@param extras Extra Data (JSON)
  Future<chopper.Response<BasicResult>> v1AdminContentContentsContentTypeUidPut(
      {required String? uid,
      required String? contentType,
      required String? contentGroup,
      required String? contentKey,
      required String? contentLanguage,
      required String? contentTitle,
      required String? contentHtml,
      String? resources,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminContentContentsContentTypeUidPut(
        uid: uid,
        contentType: contentType,
        contentGroup: contentGroup,
        contentKey: contentKey,
        contentLanguage: contentLanguage,
        contentTitle: contentTitle,
        contentHtml: contentHtml,
        resources: resources,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid Content ID
  ///@param content_type Content Type
  ///@param content_group Content Group
  ///@param content_key Content Key
  ///@param content_language Content Language
  ///@param content_title Content Title
  ///@param content_html Content HTML ** Unsafe **
  ///@param resources Resource Data (JSON)
  ///@param extras Extra Data (JSON)
  @Put(
      path: '/v1/admin/content/contents/{content_type}/{uid}',
      optionalBody: true)
  Future<chopper.Response<BasicResult>>
      _v1AdminContentContentsContentTypeUidPut(
          {@Path('uid') required String? uid,
          @Path('content_type') required String? contentType,
          @Field('content_group') required String? contentGroup,
          @Field('content_key') required String? contentKey,
          @Field('content_language') required String? contentLanguage,
          @Field('content_title') required String? contentTitle,
          @Field('content_html') required String? contentHtml,
          @Field('resources') String? resources,
          @Field('extras') String? extras,
          @Header('x-access-token') String? xAccessToken,
          @Header('Cache-Control') String? cacheControl});

  ///
  ///@param content_group Content Group
  ///@param content_type Content Type
  ///@param content_language Content Language
  ///@param content_title Content Title
  ///@param content_html Content HTML
  ///@param resource_key Resource Key
  ///@param resources Resource Data (JSON)
  ///@param extras Extra Data (JSON)
  Future<chopper.Response<BasicResult>> v1AdminContentTemplatesPost(
      {required String? contentGroup,
      required String? contentType,
      required String? contentLanguage,
      required String? contentTitle,
      required String? contentHtml,
      String? resourceKey,
      String? resources,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminContentTemplatesPost(
        contentGroup: contentGroup,
        contentType: contentType,
        contentLanguage: contentLanguage,
        contentTitle: contentTitle,
        contentHtml: contentHtml,
        resourceKey: resourceKey,
        resources: resources,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param content_group Content Group
  ///@param content_type Content Type
  ///@param content_language Content Language
  ///@param content_title Content Title
  ///@param content_html Content HTML
  ///@param resource_key Resource Key
  ///@param resources Resource Data (JSON)
  ///@param extras Extra Data (JSON)
  @Post(path: '/v1/admin/content/templates', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminContentTemplatesPost(
      {@Field('content_group') required String? contentGroup,
      @Field('content_type') required String? contentType,
      @Field('content_language') required String? contentLanguage,
      @Field('content_title') required String? contentTitle,
      @Field('content_html') required String? contentHtml,
      @Field('resource_key') String? resourceKey,
      @Field('resources') String? resources,
      @Field('extras') String? extras,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param content_group Content Group
  ///@param content_type Content Type
  ///@param page Page
  ///@param size Size of page
  ///@param keyword Keyword
  Future<chopper.Response<BasicResult>> v1AdminContentTemplatesGet(
      {String? contentGroup,
      String? contentType,
      required String? page,
      required String? size,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminContentTemplatesGet(
        contentGroup: contentGroup,
        contentType: contentType,
        page: page,
        size: size,
        keyword: keyword,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param content_group Content Group
  ///@param content_type Content Type
  ///@param page Page
  ///@param size Size of page
  ///@param keyword Keyword
  @Get(path: '/v1/admin/content/templates')
  Future<chopper.Response<BasicResult>> _v1AdminContentTemplatesGet(
      {@Query('content_group') String? contentGroup,
      @Query('content_type') String? contentType,
      @Query('page') required String? page,
      @Query('size') required String? size,
      @Query('keyword') String? keyword,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  Future<chopper.Response<BasicResult>> v1AdminContentTemplatesUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminContentTemplatesUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  @Delete(path: '/v1/admin/content/templates/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminContentTemplatesUidDelete(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  Future<chopper.Response<BasicResult>> v1AdminContentTemplatesUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminContentTemplatesUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  @Get(path: '/v1/admin/content/templates/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminContentTemplatesUidGet(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Content ID
  ///@param content_group Content Group
  ///@param content_type Content Type
  ///@param content_language Content Language
  ///@param content_title Content Title
  ///@param content_html Content HTML
  ///@param resources Resource Data (JSON)
  ///@param extras Extra Data (JSON)
  Future<chopper.Response<BasicResult>> v1AdminContentTemplatesUidPut(
      {required String? uid,
      required String? contentGroup,
      required String? contentType,
      required String? contentLanguage,
      required String? contentTitle,
      required String? contentHtml,
      String? resources,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminContentTemplatesUidPut(
        uid: uid,
        contentGroup: contentGroup,
        contentType: contentType,
        contentLanguage: contentLanguage,
        contentTitle: contentTitle,
        contentHtml: contentHtml,
        resources: resources,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid Content ID
  ///@param content_group Content Group
  ///@param content_type Content Type
  ///@param content_language Content Language
  ///@param content_title Content Title
  ///@param content_html Content HTML
  ///@param resources Resource Data (JSON)
  ///@param extras Extra Data (JSON)
  @Put(path: '/v1/admin/content/templates/{uid}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminContentTemplatesUidPut(
      {@Path('uid') required String? uid,
      @Field('content_group') required String? contentGroup,
      @Field('content_type') required String? contentType,
      @Field('content_language') required String? contentLanguage,
      @Field('content_title') required String? contentTitle,
      @Field('content_html') required String? contentHtml,
      @Field('resources') String? resources,
      @Field('extras') String? extras,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param group Group
  ///@param child Child
  ///@param filter Filter
  ///@param keyword Keyword
  ///@param start_date Start Date YYYY-MM-DD
  ///@param end_date End Date YYYY-MM-DD
  Future<chopper.Response<BasicResult>> v1AdminUserRelationsGet(
      {required String? page,
      required String? size,
      String? group,
      String? child,
      String? filter,
      String? keyword,
      String? startDate,
      String? endDate,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUserRelationsGet(
        page: page,
        size: size,
        group: group,
        child: child,
        filter: filter,
        keyword: keyword,
        startDate: startDate,
        endDate: endDate,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param group Group
  ///@param child Child
  ///@param filter Filter
  ///@param keyword Keyword
  ///@param start_date Start Date YYYY-MM-DD
  ///@param end_date End Date YYYY-MM-DD
  @Get(path: '/v1/admin/user/relations')
  Future<chopper.Response<BasicResult>> _v1AdminUserRelationsGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('group') String? group,
      @Query('child') String? child,
      @Query('filter') String? filter,
      @Query('keyword') String? keyword,
      @Query('start_date') String? startDate,
      @Query('end_date') String? endDate,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  Future<chopper.Response<BasicResult>> v1AdminUserAuthUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUserAuthUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  @Get(path: '/v1/admin/user/auth/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminUserAuthUidGet(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Paging Size
  ///@param group Auth Type
  ///@param filter Filter of search
  ///@param keyword search keyword
  Future<chopper.Response<BasicResult>> v1AdminUserAuthGet(
      {required String? page,
      required String? size,
      String? group,
      String? filter,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUserAuthGet(
        page: page,
        size: size,
        group: group,
        filter: filter,
        keyword: keyword,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Paging Size
  ///@param group Auth Type
  ///@param filter Filter of search
  ///@param keyword search keyword
  @Get(path: '/v1/admin/user/auth')
  Future<chopper.Response<BasicResult>> _v1AdminUserAuthGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('group') String? group,
      @Query('filter') String? filter,
      @Query('keyword') String? keyword,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param user_id_original 기존 유저ID
  ///@param user_id_change 변경할 유저ID
  Future<chopper.Response<BasicResult>> v1AdminUserDevicesChangePut(
      {required String? userIdOriginal,
      required String? userIdChange,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUserDevicesChangePut(
        userIdOriginal: userIdOriginal,
        userIdChange: userIdChange,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param user_id_original 기존 유저ID
  ///@param user_id_change 변경할 유저ID
  @Put(path: '/v1/admin/user/devices/change', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminUserDevicesChangePut(
      {@Field('user_id_original') required String? userIdOriginal,
      @Field('user_id_change') required String? userIdChange,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param user_id No description
  ///@param device_id No description
  ///@param device_type No description
  ///@param device_name No description
  ///@param device_locale No description
  ///@param device_model No description
  ///@param device_deny No description
  ///@param device_user_agent No description
  ///@param os_type No description
  ///@param os_version No description
  ///@param app_version No description
  ///@param app_push_token No description
  Future<chopper.Response<BasicResult>> v1AdminUserDevicesPost(
      {required String? userId,
      required String? deviceId,
      String? deviceType,
      String? deviceName,
      String? deviceLocale,
      String? deviceModel,
      String? deviceDeny,
      String? deviceUserAgent,
      String? osType,
      String? osVersion,
      String? appVersion,
      String? appPushToken,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUserDevicesPost(
        userId: userId,
        deviceId: deviceId,
        deviceType: deviceType,
        deviceName: deviceName,
        deviceLocale: deviceLocale,
        deviceModel: deviceModel,
        deviceDeny: deviceDeny,
        deviceUserAgent: deviceUserAgent,
        osType: osType,
        osVersion: osVersion,
        appVersion: appVersion,
        appPushToken: appPushToken,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param user_id No description
  ///@param device_id No description
  ///@param device_type No description
  ///@param device_name No description
  ///@param device_locale No description
  ///@param device_model No description
  ///@param device_deny No description
  ///@param device_user_agent No description
  ///@param os_type No description
  ///@param os_version No description
  ///@param app_version No description
  ///@param app_push_token No description
  @Post(path: '/v1/admin/user/devices', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminUserDevicesPost(
      {@Field('user_id') required String? userId,
      @Field('device_id') required String? deviceId,
      @Field('device_type') String? deviceType,
      @Field('device_name') String? deviceName,
      @Field('device_locale') String? deviceLocale,
      @Field('device_model') String? deviceModel,
      @Field('device_deny') String? deviceDeny,
      @Field('device_user_agent') String? deviceUserAgent,
      @Field('os_type') String? osType,
      @Field('os_version') String? osVersion,
      @Field('app_version') String? appVersion,
      @Field('app_push_token') String? appPushToken,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Paging Size
  ///@param keyword keyword(user_id)
  Future<chopper.Response<BasicResult>> v1AdminUserDevicesGet(
      {required String? page,
      required String? size,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUserDevicesGet(
        page: page,
        size: size,
        keyword: keyword,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Paging Size
  ///@param keyword keyword(user_id)
  @Get(path: '/v1/admin/user/devices')
  Future<chopper.Response<BasicResult>> _v1AdminUserDevicesGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('keyword') String? keyword,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  ///@param user_id No description
  Future<chopper.Response<BasicResult>> v1AdminUserDevicesUidUserIdDelete(
      {required String? uid,
      required String? userId,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUserDevicesUidUserIdDelete(
        uid: uid,
        userId: userId,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  ///@param user_id No description
  @Delete(path: '/v1/admin/user/devices/{uid}/{user_id}')
  Future<chopper.Response<BasicResult>> _v1AdminUserDevicesUidUserIdDelete(
      {@Path('uid') required String? uid,
      @Path('user_id') required String? userId,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  ///@param user_id No description
  Future<chopper.Response<BasicResult>> v1AdminUserDevicesUidUserIdGet(
      {required String? uid,
      required String? userId,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUserDevicesUidUserIdGet(
        uid: uid,
        userId: userId,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  ///@param user_id No description
  @Get(path: '/v1/admin/user/devices/{uid}/{user_id}')
  Future<chopper.Response<BasicResult>> _v1AdminUserDevicesUidUserIdGet(
      {@Path('uid') required String? uid,
      @Path('user_id') required String? userId,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  ///@param user_id No description
  ///@param device_id No description
  ///@param device_type No description
  ///@param device_name No description
  ///@param device_locale No description
  ///@param device_model No description
  ///@param device_deny No description
  ///@param device_user_agent No description
  ///@param os_type No description
  ///@param os_version No description
  ///@param app_version No description
  ///@param app_push_token No description
  Future<chopper.Response<BasicResult>> v1AdminUserDevicesUidPut(
      {required String? uid,
      required num? userId,
      required String? deviceId,
      String? deviceType,
      String? deviceName,
      String? deviceLocale,
      String? deviceModel,
      String? deviceDeny,
      String? deviceUserAgent,
      String? osType,
      String? osVersion,
      String? appVersion,
      String? appPushToken,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUserDevicesUidPut(
        uid: uid,
        userId: userId,
        deviceId: deviceId,
        deviceType: deviceType,
        deviceName: deviceName,
        deviceLocale: deviceLocale,
        deviceModel: deviceModel,
        deviceDeny: deviceDeny,
        deviceUserAgent: deviceUserAgent,
        osType: osType,
        osVersion: osVersion,
        appVersion: appVersion,
        appPushToken: appPushToken,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  ///@param user_id No description
  ///@param device_id No description
  ///@param device_type No description
  ///@param device_name No description
  ///@param device_locale No description
  ///@param device_model No description
  ///@param device_deny No description
  ///@param device_user_agent No description
  ///@param os_type No description
  ///@param os_version No description
  ///@param app_version No description
  ///@param app_push_token No description
  @Put(path: '/v1/admin/user/devices/{uid}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminUserDevicesUidPut(
      {@Path('uid') required String? uid,
      @Field('user_id') required num? userId,
      @Field('device_id') required String? deviceId,
      @Field('device_type') String? deviceType,
      @Field('device_name') String? deviceName,
      @Field('device_locale') String? deviceLocale,
      @Field('device_model') String? deviceModel,
      @Field('device_deny') String? deviceDeny,
      @Field('device_user_agent') String? deviceUserAgent,
      @Field('os_type') String? osType,
      @Field('os_version') String? osVersion,
      @Field('app_version') String? appVersion,
      @Field('app_push_token') String? appPushToken,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1AdminUsersExportsGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUsersExportsGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/admin/users/exports')
  Future<chopper.Response<BasicResult>> _v1AdminUsersExportsGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  Future<chopper.Response<BasicResult>> v1AdminUsersUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUsersUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  @Get(path: '/v1/admin/users/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminUsersUidGet(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param filter Filter 타입 값
  ///@param keyword Filter 키워드 값
  Future<chopper.Response<BasicResult>> v1AdminUsersGet(
      {required String? page,
      required String? size,
      String? filter,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUsersGet(
        page: page,
        size: size,
        filter: filter,
        keyword: keyword,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param filter Filter 타입 값
  ///@param keyword Filter 키워드 값
  @Get(path: '/v1/admin/users')
  Future<chopper.Response<BasicResult>> _v1AdminUsersGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('filter') String? filter,
      @Query('keyword') String? keyword,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param account account
  ///@param password password
  ///@param username_used username_used
  ///@param email email
  ///@param email_valid email_valid
  ///@param phone phone
  ///@param phone_valid phone_valid
  ///@param user_name user_name
  ///@param user_email user_email
  ///@param user_phone user_phone
  ///@param user_first_name user_first_name
  ///@param user_last_name user_last_name
  ///@param user_nickname user_nickname
  ///@param user_birth user_birth
  ///@param user_gender user_gender
  ///@param user_dial_code user_dial_code
  ///@param user_iso_code user_iso_code
  ///@param profile_image profile_image
  ///@param profile_bio profile_bio
  ///@param role_type role_type
  ///@param role_level role_level
  ///@param timezone timezone
  ///@param blocked_issue blocked_issue
  ///@param blocked blocked
  ///@param agreed agreed
  ///@param memo memo
  ///@param extras extras
  ///@param resource_key resource_key
  ///@param resources resources
  ///@param archived archived
  Future<chopper.Response<BasicResult>> v1AdminUsersProfilePost(
      {required String? account,
      required String? password,
      required bool? usernameUsed,
      String? email,
      String? emailValid,
      String? phone,
      String? phoneValid,
      String? userName,
      String? userEmail,
      String? userPhone,
      String? userFirstName,
      String? userLastName,
      String? userNickname,
      String? userBirth,
      String? userGender,
      String? userDialCode,
      String? userIsoCode,
      String? profileImage,
      String? profileBio,
      String? roleType,
      String? roleLevel,
      String? timezone,
      String? blockedIssue,
      String? blocked,
      String? agreed,
      String? memo,
      String? extras,
      String? resourceKey,
      String? resources,
      String? archived,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUsersProfilePost(
        account: account,
        password: password,
        usernameUsed: usernameUsed,
        email: email,
        emailValid: emailValid,
        phone: phone,
        phoneValid: phoneValid,
        userName: userName,
        userEmail: userEmail,
        userPhone: userPhone,
        userFirstName: userFirstName,
        userLastName: userLastName,
        userNickname: userNickname,
        userBirth: userBirth,
        userGender: userGender,
        userDialCode: userDialCode,
        userIsoCode: userIsoCode,
        profileImage: profileImage,
        profileBio: profileBio,
        roleType: roleType,
        roleLevel: roleLevel,
        timezone: timezone,
        blockedIssue: blockedIssue,
        blocked: blocked,
        agreed: agreed,
        memo: memo,
        extras: extras,
        resourceKey: resourceKey,
        resources: resources,
        archived: archived,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param account account
  ///@param password password
  ///@param username_used username_used
  ///@param email email
  ///@param email_valid email_valid
  ///@param phone phone
  ///@param phone_valid phone_valid
  ///@param user_name user_name
  ///@param user_email user_email
  ///@param user_phone user_phone
  ///@param user_first_name user_first_name
  ///@param user_last_name user_last_name
  ///@param user_nickname user_nickname
  ///@param user_birth user_birth
  ///@param user_gender user_gender
  ///@param user_dial_code user_dial_code
  ///@param user_iso_code user_iso_code
  ///@param profile_image profile_image
  ///@param profile_bio profile_bio
  ///@param role_type role_type
  ///@param role_level role_level
  ///@param timezone timezone
  ///@param blocked_issue blocked_issue
  ///@param blocked blocked
  ///@param agreed agreed
  ///@param memo memo
  ///@param extras extras
  ///@param resource_key resource_key
  ///@param resources resources
  ///@param archived archived
  @Post(path: '/v1/admin/users/profile', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminUsersProfilePost(
      {@Field('account') required String? account,
      @Field('password') required String? password,
      @Field('username_used') required bool? usernameUsed,
      @Field('email') String? email,
      @Field('email_valid') String? emailValid,
      @Field('phone') String? phone,
      @Field('phone_valid') String? phoneValid,
      @Field('user_name') String? userName,
      @Field('user_email') String? userEmail,
      @Field('user_phone') String? userPhone,
      @Field('user_first_name') String? userFirstName,
      @Field('user_last_name') String? userLastName,
      @Field('user_nickname') String? userNickname,
      @Field('user_birth') String? userBirth,
      @Field('user_gender') String? userGender,
      @Field('user_dial_code') String? userDialCode,
      @Field('user_iso_code') String? userIsoCode,
      @Field('profile_image') String? profileImage,
      @Field('profile_bio') String? profileBio,
      @Field('role_type') String? roleType,
      @Field('role_level') String? roleLevel,
      @Field('timezone') String? timezone,
      @Field('blocked_issue') String? blockedIssue,
      @Field('blocked') String? blocked,
      @Field('agreed') String? agreed,
      @Field('memo') String? memo,
      @Field('extras') String? extras,
      @Field('resource_key') String? resourceKey,
      @Field('resources') String? resources,
      @Field('archived') String? archived,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param gid gid
  Future<chopper.Response<BasicResult>> v1AdminUsersProfileGidDelete(
      {required String? gid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUsersProfileGidDelete(
        gid: gid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param gid gid
  @Delete(path: '/v1/admin/users/profile/{gid}')
  Future<chopper.Response<BasicResult>> _v1AdminUsersProfileGidDelete(
      {@Path('gid') required String? gid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  ///@param account account
  ///@param username_used username_used
  ///@param email email
  ///@param email_valid email_valid
  ///@param phone phone
  ///@param phone_valid phone_valid
  ///@param user_name user_name
  ///@param user_email user_email
  ///@param user_phone user_phone
  ///@param user_first_name user_first_name
  ///@param user_last_name user_last_name
  ///@param user_nickname user_nickname
  ///@param user_birth user_birth
  ///@param user_gender user_gender
  ///@param user_dial_code user_dial_code
  ///@param user_iso_code user_iso_code
  ///@param profile_image profile_image
  ///@param profile_bio profile_bio
  ///@param user_type user_type
  ///@param role_type role_type
  ///@param role_level role_level
  ///@param timezone timezone
  ///@param blocked_issue blocked_issue
  ///@param blocked blocked
  ///@param agreed agreed
  ///@param memo memo
  ///@param extras extras
  ///@param resource_key resource_key
  ///@param resources resources
  ///@param archived archived
  Future<chopper.Response<BasicResult>> v1AdminUsersProfileUidPut(
      {required String? uid,
      required String? account,
      String? usernameUsed,
      String? email,
      String? emailValid,
      String? phone,
      String? phoneValid,
      String? userName,
      String? userEmail,
      String? userPhone,
      String? userFirstName,
      String? userLastName,
      String? userNickname,
      String? userBirth,
      String? userGender,
      String? userDialCode,
      String? userIsoCode,
      String? profileImage,
      String? profileBio,
      String? userType,
      String? roleType,
      String? roleLevel,
      String? timezone,
      String? blockedIssue,
      String? blocked,
      String? agreed,
      String? memo,
      String? extras,
      String? resourceKey,
      String? resources,
      String? archived,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUsersProfileUidPut(
        uid: uid,
        account: account,
        usernameUsed: usernameUsed,
        email: email,
        emailValid: emailValid,
        phone: phone,
        phoneValid: phoneValid,
        userName: userName,
        userEmail: userEmail,
        userPhone: userPhone,
        userFirstName: userFirstName,
        userLastName: userLastName,
        userNickname: userNickname,
        userBirth: userBirth,
        userGender: userGender,
        userDialCode: userDialCode,
        userIsoCode: userIsoCode,
        profileImage: profileImage,
        profileBio: profileBio,
        userType: userType,
        roleType: roleType,
        roleLevel: roleLevel,
        timezone: timezone,
        blockedIssue: blockedIssue,
        blocked: blocked,
        agreed: agreed,
        memo: memo,
        extras: extras,
        resourceKey: resourceKey,
        resources: resources,
        archived: archived,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  ///@param account account
  ///@param username_used username_used
  ///@param email email
  ///@param email_valid email_valid
  ///@param phone phone
  ///@param phone_valid phone_valid
  ///@param user_name user_name
  ///@param user_email user_email
  ///@param user_phone user_phone
  ///@param user_first_name user_first_name
  ///@param user_last_name user_last_name
  ///@param user_nickname user_nickname
  ///@param user_birth user_birth
  ///@param user_gender user_gender
  ///@param user_dial_code user_dial_code
  ///@param user_iso_code user_iso_code
  ///@param profile_image profile_image
  ///@param profile_bio profile_bio
  ///@param user_type user_type
  ///@param role_type role_type
  ///@param role_level role_level
  ///@param timezone timezone
  ///@param blocked_issue blocked_issue
  ///@param blocked blocked
  ///@param agreed agreed
  ///@param memo memo
  ///@param extras extras
  ///@param resource_key resource_key
  ///@param resources resources
  ///@param archived archived
  @Put(path: '/v1/admin/users/profile/{uid}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminUsersProfileUidPut(
      {@Path('uid') required String? uid,
      @Field('account') required String? account,
      @Field('username_used') String? usernameUsed,
      @Field('email') String? email,
      @Field('email_valid') String? emailValid,
      @Field('phone') String? phone,
      @Field('phone_valid') String? phoneValid,
      @Field('user_name') String? userName,
      @Field('user_email') String? userEmail,
      @Field('user_phone') String? userPhone,
      @Field('user_first_name') String? userFirstName,
      @Field('user_last_name') String? userLastName,
      @Field('user_nickname') String? userNickname,
      @Field('user_birth') String? userBirth,
      @Field('user_gender') String? userGender,
      @Field('user_dial_code') String? userDialCode,
      @Field('user_iso_code') String? userIsoCode,
      @Field('profile_image') String? profileImage,
      @Field('profile_bio') String? profileBio,
      @Field('user_type') String? userType,
      @Field('role_type') String? roleType,
      @Field('role_level') String? roleLevel,
      @Field('timezone') String? timezone,
      @Field('blocked_issue') String? blockedIssue,
      @Field('blocked') String? blocked,
      @Field('agreed') String? agreed,
      @Field('memo') String? memo,
      @Field('extras') String? extras,
      @Field('resource_key') String? resourceKey,
      @Field('resources') String? resources,
      @Field('archived') String? archived,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param query 유저ID or 유저이름
  Future<chopper.Response<BasicResult>> v1AdminUsersSearchGet(
      {String? query, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUsersSearchGet(
        query: query, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param query 유저ID or 유저이름
  @Get(path: '/v1/admin/users/search')
  Future<chopper.Response<BasicResult>> _v1AdminUsersSearchGet(
      {@Query('query') String? query,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id id
  Future<chopper.Response<BasicResult>> v1AdminUsersIdTokenPost(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminUsersIdTokenPost(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id id
  @Post(path: '/v1/admin/users/{id}/token', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminUsersIdTokenPost(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param payment_type 결제 타입
  ///@param payment_method android, ios, card, ...
  ///@param payment_area ALL, US, KR, JP, CN, ...
  ///@param payment_client_id Client ID
  ///@param payment_client_secret Client Secret Key
  Future<chopper.Response<BasicResult>> v1AdminPaymentsPost(
      {required String? paymentType,
      required String? paymentMethod,
      required String? paymentArea,
      String? paymentClientId,
      String? paymentClientSecret,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPaymentsPost(
        paymentType: paymentType,
        paymentMethod: paymentMethod,
        paymentArea: paymentArea,
        paymentClientId: paymentClientId,
        paymentClientSecret: paymentClientSecret,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param payment_type 결제 타입
  ///@param payment_method android, ios, card, ...
  ///@param payment_area ALL, US, KR, JP, CN, ...
  ///@param payment_client_id Client ID
  ///@param payment_client_secret Client Secret Key
  @Post(path: '/v1/admin/payments', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPaymentsPost(
      {@Field('payment_type') required String? paymentType,
      @Field('payment_method') required String? paymentMethod,
      @Field('payment_area') required String? paymentArea,
      @Field('payment_client_id') String? paymentClientId,
      @Field('payment_client_secret') String? paymentClientSecret,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1AdminPaymentsGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPaymentsGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/admin/payments')
  Future<chopper.Response<BasicResult>> _v1AdminPaymentsGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Payment ID
  Future<chopper.Response<BasicResult>> v1AdminPaymentsIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPaymentsIdDelete(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id Payment ID
  @Delete(path: '/v1/admin/payments/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminPaymentsIdDelete(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Payment ID
  Future<chopper.Response<BasicResult>> v1AdminPaymentsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPaymentsIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id Payment ID
  @Get(path: '/v1/admin/payments/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminPaymentsIdGet(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Payment ID
  ///@param payment_fee Payment Fee
  ///@param payment_client_id Client ID
  ///@param payment_client_secret Client Secret
  Future<chopper.Response<BasicResult>> v1AdminPaymentsIdPut(
      {required String? id,
      required String? paymentFee,
      String? paymentClientId,
      String? paymentClientSecret,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPaymentsIdPut(
        id: id,
        paymentFee: paymentFee,
        paymentClientId: paymentClientId,
        paymentClientSecret: paymentClientSecret,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param id Payment ID
  ///@param payment_fee Payment Fee
  ///@param payment_client_id Client ID
  ///@param payment_client_secret Client Secret
  @Put(path: '/v1/admin/payments/{id}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPaymentsIdPut(
      {@Path('id') required String? id,
      @Field('payment_fee') required String? paymentFee,
      @Field('payment_client_id') String? paymentClientId,
      @Field('payment_client_secret') String? paymentClientSecret,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminPaymentEximbayWebhookStatusPost(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPaymentEximbayWebhookStatusPost(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Post(path: '/v1/admin/payment/eximbay/webhook/status', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPaymentEximbayWebhookStatusPost(
      {@Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminPaymentEximbayWebhookSuccessPost(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPaymentEximbayWebhookSuccessPost(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Post(path: '/v1/admin/payment/eximbay/webhook/success', optionalBody: true)
  Future<chopper.Response<BasicResult>>
      _v1AdminPaymentEximbayWebhookSuccessPost(
          {@Header('x-access-token') String? xAccessToken,
          @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminPaymentIamportWebhookArtiketPost(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPaymentIamportWebhookArtiketPost(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Post(path: '/v1/admin/payment/iamport/webhook/artiket', optionalBody: true)
  Future<chopper.Response<BasicResult>>
      _v1AdminPaymentIamportWebhookArtiketPost(
          {@Header('x-access-token') String? xAccessToken,
          @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminPaymentIamportWebhookPost(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPaymentIamportWebhookPost(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Post(path: '/v1/admin/payment/iamport/webhook', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPaymentIamportWebhookPost(
      {@Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminPaymentIamportWebhookReservePost(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPaymentIamportWebhookReservePost(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Post(path: '/v1/admin/payment/iamport/webhook/reserve', optionalBody: true)
  Future<chopper.Response<BasicResult>>
      _v1AdminPaymentIamportWebhookReservePost(
          {@Header('x-access-token') String? xAccessToken,
          @Header('Cache-Control') String? cacheControl});

  ///
  ///@param card_code No description
  ///@param card_name No description
  ///@param amount No description
  ///@param selling_price No description
  ///@param extras No description
  Future<chopper.Response<BasicResult>> v1AdminPrepaidcardsPost(
      {required String? cardCode,
      required String? cardName,
      required String? amount,
      required String? sellingPrice,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPrepaidcardsPost(
        cardCode: cardCode,
        cardName: cardName,
        amount: amount,
        sellingPrice: sellingPrice,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param card_code No description
  ///@param card_name No description
  ///@param amount No description
  ///@param selling_price No description
  ///@param extras No description
  @Post(path: '/v1/admin/prepaidcards', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPrepaidcardsPost(
      {@Field('card_code') required String? cardCode,
      @Field('card_name') required String? cardName,
      @Field('amount') required String? amount,
      @Field('selling_price') required String? sellingPrice,
      @Field('extras') String? extras,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param keyword Keyword
  ///@param filter Filter
  Future<chopper.Response<BasicResult>> v1AdminPrepaidcardsGet(
      {required String? page,
      required String? size,
      String? keyword,
      String? filter,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPrepaidcardsGet(
        page: page,
        size: size,
        keyword: keyword,
        filter: filter,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param keyword Keyword
  ///@param filter Filter
  @Get(path: '/v1/admin/prepaidcards')
  Future<chopper.Response<BasicResult>> _v1AdminPrepaidcardsGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('keyword') String? keyword,
      @Query('filter') String? filter,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1AdminPrepaidcardsIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPrepaidcardsIdDelete(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Delete(path: '/v1/admin/prepaidcards/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminPrepaidcardsIdDelete(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1AdminPrepaidcardsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPrepaidcardsIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Get(path: '/v1/admin/prepaidcards/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminPrepaidcardsIdGet(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param card_code No description
  ///@param card_name No description
  ///@param amount No description
  ///@param selling_price No description
  ///@param extras No description
  Future<chopper.Response<BasicResult>> v1AdminPrepaidcardsIdPut(
      {required String? cardCode,
      required String? cardName,
      required String? amount,
      required String? sellingPrice,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPrepaidcardsIdPut(
        cardCode: cardCode,
        cardName: cardName,
        amount: amount,
        sellingPrice: sellingPrice,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param card_code No description
  ///@param card_name No description
  ///@param amount No description
  ///@param selling_price No description
  ///@param extras No description
  @Put(path: '/v1/admin/prepaidcards/:id', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPrepaidcardsIdPut(
      {@Field('card_code') required String? cardCode,
      @Field('card_name') required String? cardName,
      @Field('amount') required String? amount,
      @Field('selling_price') required String? sellingPrice,
      @Field('extras') String? extras,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminTransactionsIdDCancelPut(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminTransactionsIdDCancelPut(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Put(path: '/v1/admin/transactions/:id(\d+)/cancel', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminTransactionsIdDCancelPut(
      {@Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id 트랜잭션 ID
  Future<chopper.Response<BasicResult>> v1AdminTransactionsIdCompletedPost(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminTransactionsIdCompletedPost(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id 트랜잭션 ID
  @Post(path: '/v1/admin/transactions/{id}/completed', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminTransactionsIdCompletedPost(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param user_id 결제할 사용자 id
  ///@param store_id 상점 id
  ///@param amount 결제할 금액(원)
  ///@param reason 결제 사유
  Future<chopper.Response<BasicResult>> v1AdminTransactionsPost(
      {required String? userId,
      String? storeId,
      required String? amount,
      required String? reason,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminTransactionsPost(
        userId: userId,
        storeId: storeId,
        amount: amount,
        reason: reason,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param user_id 결제할 사용자 id
  ///@param store_id 상점 id
  ///@param amount 결제할 금액(원)
  ///@param reason 결제 사유
  @Post(path: '/v1/admin/transactions', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminTransactionsPost(
      {@Field('user_id') required String? userId,
      @Field('store_id') String? storeId,
      @Field('amount') required String? amount,
      @Field('reason') required String? reason,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param group 트랜잭션 상태 ['paid', 'cancelled', 'completed']
  ///@param keyword Keyword
  ///@param filter Filter
  Future<chopper.Response<BasicResult>> v1AdminTransactionsGet(
      {required String? page,
      required String? size,
      String? group,
      String? keyword,
      String? filter,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminTransactionsGet(
        page: page,
        size: size,
        group: group,
        keyword: keyword,
        filter: filter,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param group 트랜잭션 상태 ['paid', 'cancelled', 'completed']
  ///@param keyword Keyword
  ///@param filter Filter
  @Get(path: '/v1/admin/transactions')
  Future<chopper.Response<BasicResult>> _v1AdminTransactionsGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('group') String? group,
      @Query('keyword') String? keyword,
      @Query('filter') String? filter,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Transaction Id
  Future<chopper.Response<BasicResult>> v1AdminTransactionsIdRepaymentPost(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminTransactionsIdRepaymentPost(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id Transaction Id
  @Post(path: '/v1/admin/transactions/{id}/repayment', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminTransactionsIdRepaymentPost(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param post_group Post Group
  ///@param post_title Post Title ** Unsafe **
  ///@param post_summary Post Summary ** Unsafe **
  ///@param post_type Post Type ['post', 'vote.ox', 'vote', 'post.photo', 'post.video', 'post.youtube', 'post.news', 'post.link']
  ///@param post_content Post Content(필수) ** Unsafe **
  ///@param post_markdown_used Post Markdown Used
  ///@param post_markdown Post Markdown ** Unsafe **
  ///@param user_name Writer Name
  ///@param resource_key Resource Key
  ///@param resources Resource Data
  ///@param extras Extra Data
  ///@param tags Tags / 구분자=쉼표(,)
  ///@param campaign_id 캠페인 ID
  Future<chopper.Response<BasicResult>> v1AdminPostsPost(
      {required String? postGroup,
      required String? postTitle,
      String? postSummary,
      required String? postType,
      String? postContent,
      String? postMarkdownUsed,
      String? postMarkdown,
      String? userName,
      String? resourceKey,
      String? resources,
      String? extras,
      String? tags,
      String? campaignId,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPostsPost(
        postGroup: postGroup,
        postTitle: postTitle,
        postSummary: postSummary,
        postType: postType,
        postContent: postContent,
        postMarkdownUsed: postMarkdownUsed,
        postMarkdown: postMarkdown,
        userName: userName,
        resourceKey: resourceKey,
        resources: resources,
        extras: extras,
        tags: tags,
        campaignId: campaignId,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param post_group Post Group
  ///@param post_title Post Title ** Unsafe **
  ///@param post_summary Post Summary ** Unsafe **
  ///@param post_type Post Type ['post', 'vote.ox', 'vote', 'post.photo', 'post.video', 'post.youtube', 'post.news', 'post.link']
  ///@param post_content Post Content(필수) ** Unsafe **
  ///@param post_markdown_used Post Markdown Used
  ///@param post_markdown Post Markdown ** Unsafe **
  ///@param user_name Writer Name
  ///@param resource_key Resource Key
  ///@param resources Resource Data
  ///@param extras Extra Data
  ///@param tags Tags / 구분자=쉼표(,)
  ///@param campaign_id 캠페인 ID
  @Post(path: '/v1/admin/posts', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPostsPost(
      {@Field('post_group') required String? postGroup,
      @Field('post_title') required String? postTitle,
      @Field('post_summary') String? postSummary,
      @Field('post_type') required String? postType,
      @Field('post_content') String? postContent,
      @Field('post_markdown_used') String? postMarkdownUsed,
      @Field('post_markdown') String? postMarkdown,
      @Field('user_name') String? userName,
      @Field('resource_key') String? resourceKey,
      @Field('resources') String? resources,
      @Field('extras') String? extras,
      @Field('tags') String? tags,
      @Field('campaign_id') String? campaignId,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param post_group Post Group
  ///@param post_type Post 타입 [post, video, ox, news, photo]
  Future<chopper.Response<BasicResult>> v1AdminPostsGet(
      {required String? page,
      required String? size,
      String? postGroup,
      String? postType,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPostsGet(
        page: page,
        size: size,
        postGroup: postGroup,
        postType: postType,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param post_group Post Group
  ///@param post_type Post 타입 [post, video, ox, news, photo]
  @Get(path: '/v1/admin/posts')
  Future<chopper.Response<BasicResult>> _v1AdminPostsGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('post_group') String? postGroup,
      @Query('post_type') String? postType,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  Future<chopper.Response<BasicResult>> v1AdminPostsUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPostsUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  @Delete(path: '/v1/admin/posts/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminPostsUidDelete(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  ///@param post_group Post Group
  Future<chopper.Response<BasicResult>> v1AdminPostsUidGet(
      {required String? uid, String? postGroup, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPostsUidGet(
        uid: uid, postGroup: postGroup, cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  ///@param post_group Post Group
  @Get(path: '/v1/admin/posts/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminPostsUidGet(
      {@Path('uid') required String? uid,
      @Query('post_group') String? postGroup,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  ///@param post_group Post Group
  ///@param post_title Post Title ** Unsafe **
  ///@param post_type Post Type ['post', 'magazine']
  ///@param post_content Post Content(필수) ** Unsafe **
  ///@param post_markdown_used Post Markdown Used
  ///@param post_markdown Post Markdown ** Unsafe **
  ///@param post_summary Post Summary ** Unsafe **
  ///@param user_name Writer Name
  ///@param resource_key Resource Key
  ///@param resources Resource Data
  ///@param extras Extra Data
  ///@param tags Tags / 구분자=쉼표(,)
  ///@param campaign_id 캠페인 ID 정보
  Future<chopper.Response<BasicResult>> v1AdminPostsUidPut(
      {required String? uid,
      required String? postGroup,
      String? postTitle,
      required String? postType,
      String? postContent,
      String? postMarkdownUsed,
      String? postMarkdown,
      String? postSummary,
      String? userName,
      String? resourceKey,
      String? resources,
      String? extras,
      String? tags,
      String? campaignId,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPostsUidPut(
        uid: uid,
        postGroup: postGroup,
        postTitle: postTitle,
        postType: postType,
        postContent: postContent,
        postMarkdownUsed: postMarkdownUsed,
        postMarkdown: postMarkdown,
        postSummary: postSummary,
        userName: userName,
        resourceKey: resourceKey,
        resources: resources,
        extras: extras,
        tags: tags,
        campaignId: campaignId,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  ///@param post_group Post Group
  ///@param post_title Post Title ** Unsafe **
  ///@param post_type Post Type ['post', 'magazine']
  ///@param post_content Post Content(필수) ** Unsafe **
  ///@param post_markdown_used Post Markdown Used
  ///@param post_markdown Post Markdown ** Unsafe **
  ///@param post_summary Post Summary ** Unsafe **
  ///@param user_name Writer Name
  ///@param resource_key Resource Key
  ///@param resources Resource Data
  ///@param extras Extra Data
  ///@param tags Tags / 구분자=쉼표(,)
  ///@param campaign_id 캠페인 ID 정보
  @Put(path: '/v1/admin/posts/{uid}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPostsUidPut(
      {@Path('uid') required String? uid,
      @Field('post_group') required String? postGroup,
      @Field('post_title') String? postTitle,
      @Field('post_type') required String? postType,
      @Field('post_content') String? postContent,
      @Field('post_markdown_used') String? postMarkdownUsed,
      @Field('post_markdown') String? postMarkdown,
      @Field('post_summary') String? postSummary,
      @Field('user_name') String? userName,
      @Field('resource_key') String? resourceKey,
      @Field('resources') String? resources,
      @Field('extras') String? extras,
      @Field('tags') String? tags,
      @Field('campaign_id') String? campaignId,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminProductsPost(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminProductsPost(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Post(path: '/v1/admin/products/', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminProductsPost(
      {@Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Product Id
  Future<chopper.Response<BasicResult>> v1AdminProductsProductsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminProductsProductsIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id Product Id
  @Get(path: '/v1/admin/products/products/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminProductsProductsIdGet(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Product Id
  ///@param user_id User Id
  ///@param quantity 수량
  Future<chopper.Response<BasicResult>> v1AdminProductsIdPurchasePost(
      {required String? id,
      required String? userId,
      required String? quantity,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminProductsIdPurchasePost(
        id: id,
        userId: userId,
        quantity: quantity,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param id Product Id
  ///@param user_id User Id
  ///@param quantity 수량
  @Post(path: '/v1/admin/products/{id}/purchase', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminProductsIdPurchasePost(
      {@Path('id') required String? id,
      @Field('user_id') required String? userId,
      @Field('quantity') required String? quantity,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Message Id
  Future<chopper.Response<BasicResult>> v1AdminNotifyNotificationsUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminNotifyNotificationsUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Message Id
  @Get(path: '/v1/admin/notify/notifications/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminNotifyNotificationsUidGet(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param group Group Type
  ///@param user_id User Id
  Future<chopper.Response<BasicResult>> v1AdminNotifyNotificationsGet(
      {required String? page,
      required String? size,
      String? group,
      String? userId,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminNotifyNotificationsGet(
        page: page,
        size: size,
        group: group,
        userId: userId,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param group Group Type
  ///@param user_id User Id
  @Get(path: '/v1/admin/notify/notifications')
  Future<chopper.Response<BasicResult>> _v1AdminNotifyNotificationsGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('group') String? group,
      @Query('user_id') String? userId,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param title Push Title
  ///@param message Push Message
  ///@param unable_topic Topic을 사용하여 발송할지, 1:1메세지를 다량으로 발생할지 선택(true: 1, false: 0), default: false
  Future<chopper.Response<BasicResult>> v1AdminPushSendAllPost(
      {String? title,
      required String? message,
      String? unableTopic,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPushSendAllPost(
        title: title,
        message: message,
        unableTopic: unableTopic,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param title Push Title
  ///@param message Push Message
  ///@param unable_topic Topic을 사용하여 발송할지, 1:1메세지를 다량으로 발생할지 선택(true: 1, false: 0), default: false
  @Post(path: '/v1/admin/push/send/all', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPushSendAllPost(
      {@Field('title') String? title,
      @Field('message') required String? message,
      @Field('unable_topic') String? unableTopic,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param title Push Title
  ///@param message Push Message
  ///@param extras Extra Data
  ///@param user_ids user_id (복수의 경우 콤마로 구분 추가)
  Future<chopper.Response<BasicResult>> v1AdminPushSendPost(
      {String? title,
      required String? message,
      String? extras,
      required String? userIds,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPushSendPost(
        title: title,
        message: message,
        extras: extras,
        userIds: userIds,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param title Push Title
  ///@param message Push Message
  ///@param extras Extra Data
  ///@param user_ids user_id (복수의 경우 콤마로 구분 추가)
  @Post(path: '/v1/admin/push/send', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPushSendPost(
      {@Field('title') String? title,
      @Field('message') required String? message,
      @Field('extras') String? extras,
      @Field('user_ids') required String? userIds,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param push_token FCM Token
  ///@param message Message
  ///@param extras Extra Data
  Future<chopper.Response<BasicResult>> v1AdminPushSendTokenPost(
      {required String? pushToken,
      required String? message,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPushSendTokenPost(
        pushToken: pushToken,
        message: message,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param push_token FCM Token
  ///@param message Message
  ///@param extras Extra Data
  @Post(path: '/v1/admin/push/send/token', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPushSendTokenPost(
      {@Field('push_token') required String? pushToken,
      @Field('message') required String? message,
      @Field('extras') String? extras,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminPushSubscribeAllPost(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPushSubscribeAllPost(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Post(path: '/v1/admin/push/subscribe/all', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPushSubscribeAllPost(
      {@Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminPushUnsubscribeAllPost(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminPushUnsubscribeAllPost(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Post(path: '/v1/admin/push/unsubscribe/all', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminPushUnsubscribeAllPost(
      {@Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Resource ID
  Future<chopper.Response<BasicResult>> v1AdminResourcesUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminResourcesUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Resource ID
  @Delete(path: '/v1/admin/resources/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminResourcesUidDelete(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Resource ID
  Future<chopper.Response<BasicResult>> v1AdminResourcesUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminResourcesUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Resource ID
  @Get(path: '/v1/admin/resources/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminResourcesUidGet(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Paging Size
  Future<chopper.Response<BasicResult>> v1AdminResourcesGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminResourcesGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Paging Size
  @Get(path: '/v1/admin/resources')
  Future<chopper.Response<BasicResult>> _v1AdminResourcesGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param key Resource Key
  ///@param tag Resource Tag
  ///@param file Upload File
  ///@param is_private 프라이빗 설정: true = private
  Future<chopper.Response<BasicResult>> v1AdminResourcesUploadPost(
      {required String? key,
      required String? tag,
      required List<String>? file,
      String? isPrivate,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminResourcesUploadPost(
        key: key,
        tag: tag,
        file: file,
        isPrivate: isPrivate,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param key Resource Key
  ///@param tag Resource Tag
  ///@param file Upload File
  ///@param is_private 프라이빗 설정: true = private
  @Post(path: '/v1/admin/resources/upload', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminResourcesUploadPost(
      {@Field('key') required String? key,
      @Field('tag') required String? tag,
      @Field('file') required List<String>? file,
      @Field('is_private') String? isPrivate,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param code No description
  ///@param type No description
  ///@param desc No description
  Future<chopper.Response<BasicResult>> v1AdminReviewsCodePost(
      {required String? code,
      required String? type,
      required String? desc,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReviewsCodePost(
        code: code,
        type: type,
        desc: desc,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param code No description
  ///@param type No description
  ///@param desc No description
  @Post(path: '/v1/admin/reviews/code', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminReviewsCodePost(
      {@Field('code') required String? code,
      @Field('type') required String? type,
      @Field('desc') required String? desc,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1AdminReviewsCodeGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReviewsCodeGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/admin/reviews/code')
  Future<chopper.Response<BasicResult>> _v1AdminReviewsCodeGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid _id
  Future<chopper.Response<BasicResult>> v1AdminReviewsCodeUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReviewsCodeUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid _id
  @Delete(path: '/v1/admin/reviews/code/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminReviewsCodeUidDelete(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid 카테고리 _id value
  Future<chopper.Response<BasicResult>> v1AdminReviewsCodeUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReviewsCodeUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid 카테고리 _id value
  @Get(path: '/v1/admin/reviews/code/{uid}')
  Future<chopper.Response<BasicResult>> _v1AdminReviewsCodeUidGet(
      {@Path('uid') required String? uid,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid 관리 아이디 _id
  ///@param code No description
  ///@param type No description
  ///@param desc No description
  Future<chopper.Response<BasicResult>> v1AdminReviewsCodeUidPut(
      {required String? uid,
      required String? code,
      required String? type,
      required String? desc,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReviewsCodeUidPut(
        uid: uid,
        code: code,
        type: type,
        desc: desc,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid 관리 아이디 _id
  ///@param code No description
  ///@param type No description
  ///@param desc No description
  @Put(path: '/v1/admin/reviews/code/{uid}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminReviewsCodeUidPut(
      {@Path('uid') required String? uid,
      @Field('code') required String? code,
      @Field('type') required String? type,
      @Field('desc') required String? desc,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1AdminReviewsIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReviewsIdDelete(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Delete(path: '/v1/admin/reviews/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminReviewsIdDelete(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1AdminReviewsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReviewsIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Get(path: '/v1/admin/reviews/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminReviewsIdGet(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  ///@param rates extra data {"rates": [{"001":5},{"002":5} ]}
  ///@param image_url No description
  ///@param message No description
  Future<chopper.Response<BasicResult>> v1AdminReviewsIdPut(
      {required String? id,
      Object? rates,
      String? imageUrl,
      String? message,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReviewsIdPut(
        id: id,
        rates: rates,
        imageUrl: imageUrl,
        message: message,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  ///@param rates extra data {"rates": [{"001":5},{"002":5} ]}
  ///@param image_url No description
  ///@param message No description
  @Put(path: '/v1/admin/reviews/{id}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminReviewsIdPut(
      {@Path('id') required String? id,
      @Field('rates') Object? rates,
      @Field('image_url') String? imageUrl,
      @Field('message') String? message,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param target_id No description
  ///@param target_type No description
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1AdminReviewsGet(
      {required Object? targetId,
      required String? targetType,
      required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReviewsGet(
        targetId: targetId,
        targetType: targetType,
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param target_id No description
  ///@param target_type No description
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/admin/reviews')
  Future<chopper.Response<BasicResult>> _v1AdminReviewsGet(
      {@Query('target_id') required Object? targetId,
      @Query('target_type') required String? targetType,
      @Query('page') required String? page,
      @Query('size') required String? size,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param review_code 리뷰 코드
  Future<chopper.Response<BasicResult>> v1AdminSellerReviewReviewCodeGet(
      {required Object? reviewCode,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSellerReviewReviewCodeGet(
        reviewCode: reviewCode,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param review_code 리뷰 코드
  @Get(path: '/v1/admin/seller/review/{review_code}')
  Future<chopper.Response<BasicResult>> _v1AdminSellerReviewReviewCodeGet(
      {@Path('review_code') required Object? reviewCode,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param review_code 리뷰 코드
  ///@param review_status 리뷰 상태
  ///@param review_description 리뷰 맨트
  Future<chopper.Response<BasicResult>> v1AdminSellerReviewReviewCodePut(
      {required Object? reviewCode,
      required Object? reviewStatus,
      Object? reviewDescription,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSellerReviewReviewCodePut(
        reviewCode: reviewCode,
        reviewStatus: reviewStatus,
        reviewDescription: reviewDescription,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param review_code 리뷰 코드
  ///@param review_status 리뷰 상태
  ///@param review_description 리뷰 맨트
  @Put(path: '/v1/admin/seller/review/{review_code}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminSellerReviewReviewCodePut(
      {@Path('review_code') required Object? reviewCode,
      @Field('review_status') required Object? reviewStatus,
      @Field('review_description') Object? reviewDescription,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param review_states 리뷰 상태
  ///@param search_key 검색 조건 (리뷰 코드, 판매자 id, 관리자 id) 값
  ///@param search_option 검색 조건 (리뷰 코드, 판매자 id, 관리자 id)
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1AdminSellerReviewGet(
      {required Object? reviewStates,
      Object? searchKey,
      Object? searchOption,
      required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSellerReviewGet(
        reviewStates: reviewStates,
        searchKey: searchKey,
        searchOption: searchOption,
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param review_states 리뷰 상태
  ///@param search_key 검색 조건 (리뷰 코드, 판매자 id, 관리자 id) 값
  ///@param search_option 검색 조건 (리뷰 코드, 판매자 id, 관리자 id)
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/admin/seller/review')
  Future<chopper.Response<BasicResult>> _v1AdminSellerReviewGet(
      {@Query('review_states') required Object? reviewStates,
      @Query('search_key') Object? searchKey,
      @Query('search_option') Object? searchOption,
      @Query('page') required String? page,
      @Query('size') required String? size,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param keyword Keyword
  Future<chopper.Response<BasicResult>> v1AdminBankCodesGet(
      {required String? page,
      required String? size,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminBankCodesGet(
        page: page,
        size: size,
        keyword: keyword,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param keyword Keyword
  @Get(path: '/v1/admin/bank/codes')
  Future<chopper.Response<BasicResult>> _v1AdminBankCodesGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('keyword') String? keyword,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param store_id Store ID
  Future<chopper.Response<BasicResult>> v1AdminSettlementsLatestGet(
      {String? storeId, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsLatestGet(
        storeId: storeId,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param store_id Store ID
  @Get(path: '/v1/admin/settlements/latest')
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsLatestGet(
      {@Query('store_id') String? storeId,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param user_id No description
  ///@param bank_owner_name No description
  ///@param bank_owner_address No description
  ///@param bank_country No description
  ///@param bank_name No description
  ///@param bank_code No description
  ///@param bank_account No description
  ///@param bank_routing No description
  ///@param bank_swift_code No description
  ///@param is_primary No description
  Future<chopper.Response<BasicResult>> v1AdminBankAccountPost(
      {required Object? userId,
      required String? bankOwnerName,
      String? bankOwnerAddress,
      required String? bankCountry,
      required String? bankName,
      required String? bankCode,
      required String? bankAccount,
      String? bankRouting,
      String? bankSwiftCode,
      String? isPrimary,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminBankAccountPost(
        userId: userId,
        bankOwnerName: bankOwnerName,
        bankOwnerAddress: bankOwnerAddress,
        bankCountry: bankCountry,
        bankName: bankName,
        bankCode: bankCode,
        bankAccount: bankAccount,
        bankRouting: bankRouting,
        bankSwiftCode: bankSwiftCode,
        isPrimary: isPrimary,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param user_id No description
  ///@param bank_owner_name No description
  ///@param bank_owner_address No description
  ///@param bank_country No description
  ///@param bank_name No description
  ///@param bank_code No description
  ///@param bank_account No description
  ///@param bank_routing No description
  ///@param bank_swift_code No description
  ///@param is_primary No description
  @Post(path: '/v1/admin/bank/account', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminBankAccountPost(
      {@Field('user_id') required Object? userId,
      @Field('bank_owner_name') required String? bankOwnerName,
      @Field('bank_owner_address') String? bankOwnerAddress,
      @Field('bank_country') required String? bankCountry,
      @Field('bank_name') required String? bankName,
      @Field('bank_code') required String? bankCode,
      @Field('bank_account') required String? bankAccount,
      @Field('bank_routing') String? bankRouting,
      @Field('bank_swift_code') String? bankSwiftCode,
      @Field('is_primary') String? isPrimary,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param user_id User Id
  Future<chopper.Response<BasicResult>> v1AdminBankAccountGet(
      {required String? page,
      required String? size,
      String? userId,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminBankAccountGet(
        page: page,
        size: size,
        userId: userId,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param user_id User Id
  @Get(path: '/v1/admin/bank/account')
  Future<chopper.Response<BasicResult>> _v1AdminBankAccountGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('user_id') String? userId,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1AdminBankAccountIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminBankAccountIdDelete(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Delete(path: '/v1/admin/bank/account/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminBankAccountIdDelete(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1AdminBankAccountIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminBankAccountIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Get(path: '/v1/admin/bank/account/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminBankAccountIdGet(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  ///@param bank_owner_name No description
  ///@param bank_owner_address No description
  ///@param bank_country No description
  ///@param bank_name No description
  ///@param bank_code No description
  ///@param bank_account No description
  ///@param bank_routing No description
  ///@param bank_swift_code No description
  ///@param is_primary No description
  Future<chopper.Response<BasicResult>> v1AdminBankAccountIdPut(
      {required String? id,
      required String? bankOwnerName,
      String? bankOwnerAddress,
      required String? bankCountry,
      required String? bankName,
      required String? bankCode,
      required String? bankAccount,
      String? bankRouting,
      String? bankSwiftCode,
      String? isPrimary,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminBankAccountIdPut(
        id: id,
        bankOwnerName: bankOwnerName,
        bankOwnerAddress: bankOwnerAddress,
        bankCountry: bankCountry,
        bankName: bankName,
        bankCode: bankCode,
        bankAccount: bankAccount,
        bankRouting: bankRouting,
        bankSwiftCode: bankSwiftCode,
        isPrimary: isPrimary,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  ///@param bank_owner_name No description
  ///@param bank_owner_address No description
  ///@param bank_country No description
  ///@param bank_name No description
  ///@param bank_code No description
  ///@param bank_account No description
  ///@param bank_routing No description
  ///@param bank_swift_code No description
  ///@param is_primary No description
  @Put(path: '/v1/admin/bank/account/{id}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminBankAccountIdPut(
      {@Path('id') required String? id,
      @Field('bank_owner_name') required String? bankOwnerName,
      @Field('bank_owner_address') String? bankOwnerAddress,
      @Field('bank_country') required String? bankCountry,
      @Field('bank_name') required String? bankName,
      @Field('bank_code') required String? bankCode,
      @Field('bank_account') required String? bankAccount,
      @Field('bank_routing') String? bankRouting,
      @Field('bank_swift_code') String? bankSwiftCode,
      @Field('is_primary') String? isPrimary,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param code No description
  Future<chopper.Response<BasicResult>> v1AdminBankCodeGet(
      {required String? code, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminBankCodeGet(
        code: code, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param code No description
  @Get(path: '/v1/admin/bank/{code}')
  Future<chopper.Response<BasicResult>> _v1AdminBankCodeGet(
      {@Path('code') required String? code,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param ids Settlement Ids
  Future<chopper.Response<BasicResult>> v1AdminSettlementsBatchCancelPut(
      {required Array? ids, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsBatchCancelPut(
        ids: ids, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param ids Settlement Ids
  @Put(path: '/v1/admin/settlements/batch/cancel', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsBatchCancelPut(
      {@Field('ids') required Array? ids,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param ids Settlement Ids
  Future<chopper.Response<BasicResult>> v1AdminSettlementsBatchCompletePut(
      {required Array? ids, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsBatchCompletePut(
        ids: ids, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param ids Settlement Ids
  @Put(path: '/v1/admin/settlements/batch/complete', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsBatchCompletePut(
      {@Field('ids') required Array? ids,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param ids Settlement Ids
  Future<chopper.Response<BasicResult>> v1AdminSettlementsBatchDeleteDelete(
      {required Array? ids, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsBatchDeleteDelete(
        ids: ids, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param ids Settlement Ids
  @Delete(path: '/v1/admin/settlements/batch/delete')
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsBatchDeleteDelete(
      {@Query('ids') required Array? ids,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param store_ids Store Ids
  ///@param date_start Date Start
  ///@param date_end Date End
  ///@param exchange_rate Exchange Rate
  ///@param profit_rate Profit Rate
  ///@param expenses_etc Etc Expenses
  ///@param expenses_etc_comment Etc Expenses Comment
  Future<chopper.Response<BasicResult>> v1AdminProfitsBatchNewPost(
      {required Array? storeIds,
      required String? dateStart,
      required String? dateEnd,
      String? exchangeRate,
      String? profitRate,
      String? expensesEtc,
      String? expensesEtcComment,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminProfitsBatchNewPost(
        storeIds: storeIds,
        dateStart: dateStart,
        dateEnd: dateEnd,
        exchangeRate: exchangeRate,
        profitRate: profitRate,
        expensesEtc: expensesEtc,
        expensesEtcComment: expensesEtcComment,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param store_ids Store Ids
  ///@param date_start Date Start
  ///@param date_end Date End
  ///@param exchange_rate Exchange Rate
  ///@param profit_rate Profit Rate
  ///@param expenses_etc Etc Expenses
  ///@param expenses_etc_comment Etc Expenses Comment
  @Post(path: '/v1/admin/profits/batch/new', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminProfitsBatchNewPost(
      {@Field('store_ids') required Array? storeIds,
      @Field('date_start') required String? dateStart,
      @Field('date_end') required String? dateEnd,
      @Field('exchange_rate') String? exchangeRate,
      @Field('profit_rate') String? profitRate,
      @Field('expenses_etc') String? expensesEtc,
      @Field('expenses_etc_comment') String? expensesEtcComment,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param store_ids Store Ids
  ///@param date_start Date Start
  ///@param date_end Date End
  ///@param exchange_rate Exchange Rate
  ///@param profit_rate Profit Rate
  ///@param expenses_per_order Expenses Per Order
  ///@param expenses_per_order_comment Expenses Per Order Comment
  ///@param expenses_per_cancel Expenses Per Cancel
  ///@param expenses_per_cancel_comment Expenses Per Cancel Comment
  ///@param expenses_etc Etc Expenses
  ///@param expenses_etc_comment Etc Expenses Comment
  Future<chopper.Response<BasicResult>> v1AdminSettlementsBatchNewPost(
      {required Array? storeIds,
      required String? dateStart,
      required String? dateEnd,
      String? exchangeRate,
      String? profitRate,
      String? expensesPerOrder,
      String? expensesPerOrderComment,
      String? expensesPerCancel,
      String? expensesPerCancelComment,
      String? expensesEtc,
      String? expensesEtcComment,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsBatchNewPost(
        storeIds: storeIds,
        dateStart: dateStart,
        dateEnd: dateEnd,
        exchangeRate: exchangeRate,
        profitRate: profitRate,
        expensesPerOrder: expensesPerOrder,
        expensesPerOrderComment: expensesPerOrderComment,
        expensesPerCancel: expensesPerCancel,
        expensesPerCancelComment: expensesPerCancelComment,
        expensesEtc: expensesEtc,
        expensesEtcComment: expensesEtcComment,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param store_ids Store Ids
  ///@param date_start Date Start
  ///@param date_end Date End
  ///@param exchange_rate Exchange Rate
  ///@param profit_rate Profit Rate
  ///@param expenses_per_order Expenses Per Order
  ///@param expenses_per_order_comment Expenses Per Order Comment
  ///@param expenses_per_cancel Expenses Per Cancel
  ///@param expenses_per_cancel_comment Expenses Per Cancel Comment
  ///@param expenses_etc Etc Expenses
  ///@param expenses_etc_comment Etc Expenses Comment
  @Post(path: '/v1/admin/settlements/batch/new', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsBatchNewPost(
      {@Field('store_ids') required Array? storeIds,
      @Field('date_start') required String? dateStart,
      @Field('date_end') required String? dateEnd,
      @Field('exchange_rate') String? exchangeRate,
      @Field('profit_rate') String? profitRate,
      @Field('expenses_per_order') String? expensesPerOrder,
      @Field('expenses_per_order_comment') String? expensesPerOrderComment,
      @Field('expenses_per_cancel') String? expensesPerCancel,
      @Field('expenses_per_cancel_comment') String? expensesPerCancelComment,
      @Field('expenses_etc') String? expensesEtc,
      @Field('expenses_etc_comment') String? expensesEtcComment,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param ids Settlement Ids
  Future<chopper.Response<BasicResult>> v1AdminSettlementsBatchRequestPut(
      {required Array? ids, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsBatchRequestPut(
        ids: ids, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param ids Settlement Ids
  @Put(path: '/v1/admin/settlements/batch/request', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsBatchRequestPut(
      {@Field('ids') required Array? ids,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param ids No description
  Future<chopper.Response<BasicResult>> v1AdminSettlementsBatchSendPost(
      {required Array? ids, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsBatchSendPost(
        ids: ids, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param ids No description
  @Post(path: '/v1/admin/settlements/batch/send', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsBatchSendPost(
      {@Field('ids') required Array? ids,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1AdminSettlementsIdCancelPut(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsIdCancelPut(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Put(path: '/v1/admin/settlements/{id}/cancel', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsIdCancelPut(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1AdminSettlementsIdCompletePut(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsIdCompletePut(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Put(path: '/v1/admin/settlements/{id}/complete', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsIdCompletePut(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1AdminSettlementsIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsIdDelete(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Delete(path: '/v1/admin/settlements/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsIdDelete(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1AdminSettlementsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Get(path: '/v1/admin/settlements/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsIdGet(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param date_start Date Start
  ///@param date_end Date End
  ///@param group group
  Future<chopper.Response<BasicResult>> v1AdminSettlementsExportGet(
      {String? dateStart,
      String? dateEnd,
      String? group,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsExportGet(
        dateStart: dateStart,
        dateEnd: dateEnd,
        group: group,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param date_start Date Start
  ///@param date_end Date End
  ///@param group group
  @Get(path: '/v1/admin/settlements/export')
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsExportGet(
      {@Query('date_start') String? dateStart,
      @Query('date_end') String? dateEnd,
      @Query('group') String? group,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param group Group
  ///@param keyword No description
  Future<chopper.Response<BasicResult>> v1AdminSettlementsGet(
      {required String? page,
      required String? size,
      String? group,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsGet(
        page: page,
        size: size,
        group: group,
        keyword: keyword,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param group Group
  ///@param keyword No description
  @Get(path: '/v1/admin/settlements')
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Query('group') String? group,
      @Query('keyword') String? keyword,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param store_id Store ID
  ///@param date_start Date Start
  ///@param date_end Date End
  ///@param exchange_rate Exchange Rate
  ///@param profit_rate Profit Rate
  ///@param expenses_etc Etc Expenses
  ///@param expenses_etc_comment Etc Expenses Comment
  Future<chopper.Response<BasicResult>> v1AdminProfitsNewPost(
      {required Object? storeId,
      required String? dateStart,
      required String? dateEnd,
      String? exchangeRate,
      String? profitRate,
      String? expensesEtc,
      String? expensesEtcComment,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminProfitsNewPost(
        storeId: storeId,
        dateStart: dateStart,
        dateEnd: dateEnd,
        exchangeRate: exchangeRate,
        profitRate: profitRate,
        expensesEtc: expensesEtc,
        expensesEtcComment: expensesEtcComment,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param store_id Store ID
  ///@param date_start Date Start
  ///@param date_end Date End
  ///@param exchange_rate Exchange Rate
  ///@param profit_rate Profit Rate
  ///@param expenses_etc Etc Expenses
  ///@param expenses_etc_comment Etc Expenses Comment
  @Post(path: '/v1/admin/profits/new', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminProfitsNewPost(
      {@Field('store_id') required Object? storeId,
      @Field('date_start') required String? dateStart,
      @Field('date_end') required String? dateEnd,
      @Field('exchange_rate') String? exchangeRate,
      @Field('profit_rate') String? profitRate,
      @Field('expenses_etc') String? expensesEtc,
      @Field('expenses_etc_comment') String? expensesEtcComment,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param store_id Store ID
  ///@param date_start Date Start
  ///@param date_end Date End
  ///@param exchange_rate Exchange Rate
  ///@param profit_rate Profit Rate
  ///@param expenses_per_order Expenses Per Order
  ///@param expenses_per_order_comment Expenses Per Order Comment
  ///@param expenses_per_cancel Expenses Per Cancel
  ///@param expenses_per_cancel_comment Expenses Per Cancel Comment
  ///@param expenses_etc Etc Expenses
  ///@param expenses_etc_comment Etc Expenses Comment
  Future<chopper.Response<BasicResult>> v1AdminSettlementsNewPost(
      {required Object? storeId,
      required String? dateStart,
      required String? dateEnd,
      String? exchangeRate,
      String? profitRate,
      String? expensesPerOrder,
      String? expensesPerOrderComment,
      String? expensesPerCancel,
      String? expensesPerCancelComment,
      String? expensesEtc,
      String? expensesEtcComment,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsNewPost(
        storeId: storeId,
        dateStart: dateStart,
        dateEnd: dateEnd,
        exchangeRate: exchangeRate,
        profitRate: profitRate,
        expensesPerOrder: expensesPerOrder,
        expensesPerOrderComment: expensesPerOrderComment,
        expensesPerCancel: expensesPerCancel,
        expensesPerCancelComment: expensesPerCancelComment,
        expensesEtc: expensesEtc,
        expensesEtcComment: expensesEtcComment,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param store_id Store ID
  ///@param date_start Date Start
  ///@param date_end Date End
  ///@param exchange_rate Exchange Rate
  ///@param profit_rate Profit Rate
  ///@param expenses_per_order Expenses Per Order
  ///@param expenses_per_order_comment Expenses Per Order Comment
  ///@param expenses_per_cancel Expenses Per Cancel
  ///@param expenses_per_cancel_comment Expenses Per Cancel Comment
  ///@param expenses_etc Etc Expenses
  ///@param expenses_etc_comment Etc Expenses Comment
  @Post(path: '/v1/admin/settlements/new', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsNewPost(
      {@Field('store_id') required Object? storeId,
      @Field('date_start') required String? dateStart,
      @Field('date_end') required String? dateEnd,
      @Field('exchange_rate') String? exchangeRate,
      @Field('profit_rate') String? profitRate,
      @Field('expenses_per_order') String? expensesPerOrder,
      @Field('expenses_per_order_comment') String? expensesPerOrderComment,
      @Field('expenses_per_cancel') String? expensesPerCancel,
      @Field('expenses_per_cancel_comment') String? expensesPerCancelComment,
      @Field('expenses_etc') String? expensesEtc,
      @Field('expenses_etc_comment') String? expensesEtcComment,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param date_start Date Start
  ///@param date_end Date End
  ///@param store_id Store ID
  Future<chopper.Response<BasicResult>> v1AdminReceiptsGet(
      {required String? dateStart,
      required String? dateEnd,
      String? storeId,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminReceiptsGet(
        dateStart: dateStart,
        dateEnd: dateEnd,
        storeId: storeId,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param date_start Date Start
  ///@param date_end Date End
  ///@param store_id Store ID
  @Get(path: '/v1/admin/receipts')
  Future<chopper.Response<BasicResult>> _v1AdminReceiptsGet(
      {@Query('date_start') required String? dateStart,
      @Query('date_end') required String? dateEnd,
      @Query('store_id') String? storeId,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminSettlementsRequestBulkGet(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsRequestBulkGet(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/admin/settlements/request/bulk')
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsRequestBulkGet(
      {@Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  ///@param bank_owner_name No description
  ///@param bank_name No description
  ///@param bank_code No description
  ///@param bank_account No description
  ///@param settled_unit No description
  ///@param settled_total No description
  Future<chopper.Response<BasicResult>> v1AdminSettlementsIdRequestPut(
      {required String? id,
      required String? bankOwnerName,
      required String? bankName,
      required String? bankCode,
      required String? bankAccount,
      required String? settledUnit,
      required Object? settledTotal,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsIdRequestPut(
        id: id,
        bankOwnerName: bankOwnerName,
        bankName: bankName,
        bankCode: bankCode,
        bankAccount: bankAccount,
        settledUnit: settledUnit,
        settledTotal: settledTotal,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  ///@param bank_owner_name No description
  ///@param bank_name No description
  ///@param bank_code No description
  ///@param bank_account No description
  ///@param settled_unit No description
  ///@param settled_total No description
  @Put(path: '/v1/admin/settlements/{id}/request', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsIdRequestPut(
      {@Path('id') required String? id,
      @Field('bank_owner_name') required String? bankOwnerName,
      @Field('bank_name') required String? bankName,
      @Field('bank_code') required String? bankCode,
      @Field('bank_account') required String? bankAccount,
      @Field('settled_unit') required String? settledUnit,
      @Field('settled_total') required Object? settledTotal,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AdminSettlementsIdDSendPost(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSettlementsIdDSendPost(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Post(path: '/v1/admin/settlements/:id(\d+)/send', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminSettlementsIdDSendPost(
      {@Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1AdminSmsMessagesIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSmsMessagesIdDelete(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Delete(path: '/v1/admin/sms/messages/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminSmsMessagesIdDelete(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1AdminSmsMessagesIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSmsMessagesIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Get(path: '/v1/admin/sms/messages/{id}')
  Future<chopper.Response<BasicResult>> _v1AdminSmsMessagesIdGet(
      {@Path('id') required String? id,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1AdminSmsMessagesGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSmsMessagesGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/admin/sms/messages')
  Future<chopper.Response<BasicResult>> _v1AdminSmsMessagesGet(
      {@Query('page') required String? page,
      @Query('size') required String? size,
      @Header('x-access-token') String? xAccessToken,
      @Header('Cache-Control') String? cacheControl});

  ///
  ///@param phone Phone Number
  ///@param message Message
  ///@param extras Extras
  ///@param test Test Mode
  Future<chopper.Response<BasicResult>> v1AdminSmsSendPost(
      {required String? phone,
      required String? message,
      Object? extras,
      bool? test,
      String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AdminSmsSendPost(
        phone: phone,
        message: message,
        extras: extras,
        test: test,
        cacheControl: cacheControl);
  }

  ///
  ///@param phone Phone Number
  ///@param message Message
  ///@param extras Extras
  ///@param test Test Mode
  @Post(path: '/v1/admin/sms/send', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AdminSmsSendPost(
      {@Field('phone') required String? phone,
      @Field('message') required String? message,
      @Field('extras') Object? extras,
      @Field('test') bool? test,
      @Header('Cache-Control') String? cacheControl});
}

@JsonSerializable(explicitToJson: true)
class BasicResult {
  BasicResult({
    this.error,
    this.status,
    this.data,
  });

  factory BasicResult.fromJson(Map<String, dynamic> json) =>
      _$BasicResultFromJson(json);

  @JsonKey(name: 'error', includeIfNull: false)
  final CommonError? error;
  @JsonKey(name: 'status', includeIfNull: false, defaultValue: '')
  final String? status;
  @JsonKey(name: 'data', includeIfNull: false)
  final Object? data;
  static const fromJsonFactory = _$BasicResultFromJson;
  static const toJsonFactory = _$BasicResultToJson;
  Map<String, dynamic> toJson() => _$BasicResultToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BasicResult &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(data) ^
      runtimeType.hashCode;
}

extension $BasicResultExtension on BasicResult {
  BasicResult copyWith({CommonError? error, String? status, Object? data}) {
    return BasicResult(
        error: error ?? this.error,
        status: status ?? this.status,
        data: data ?? this.data);
  }
}

@JsonSerializable(explicitToJson: true)
class CommonError {
  CommonError();

  factory CommonError.fromJson(Map<String, dynamic> json) =>
      _$CommonErrorFromJson(json);

  static const fromJsonFactory = _$CommonErrorFromJson;
  static const toJsonFactory = _$CommonErrorToJson;
  Map<String, dynamic> toJson() => _$CommonErrorToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class AddressBook {
  AddressBook({
    required this.uid,
    required this.account,
    required this.addressType,
    this.name,
    this.phone,
    this.country,
    this.states,
    this.city,
    required this.address1,
    this.address2,
    this.zipcode,
    required this.actived,
    required this.activedAt,
    this.extras,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory AddressBook.fromJson(Map<String, dynamic> json) =>
      _$AddressBookFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'account', includeIfNull: false, defaultValue: '')
  final String account;
  @JsonKey(name: 'address_type', includeIfNull: false, defaultValue: '')
  final String addressType;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'country', includeIfNull: false, defaultValue: '')
  final String? country;
  @JsonKey(name: 'states', includeIfNull: false, defaultValue: '')
  final String? states;
  @JsonKey(name: 'city', includeIfNull: false, defaultValue: '')
  final String? city;
  @JsonKey(name: 'address1', includeIfNull: false, defaultValue: '')
  final String address1;
  @JsonKey(name: 'address2', includeIfNull: false, defaultValue: '')
  final String? address2;
  @JsonKey(name: 'zipcode', includeIfNull: false, defaultValue: '')
  final String? zipcode;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$AddressBookFromJson;
  static const toJsonFactory = _$AddressBookToJson;
  Map<String, dynamic> toJson() => _$AddressBookToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressBook &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.addressType, addressType) ||
                const DeepCollectionEquality()
                    .equals(other.addressType, addressType)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address1, address1) ||
                const DeepCollectionEquality()
                    .equals(other.address1, address1)) &&
            (identical(other.address2, address2) ||
                const DeepCollectionEquality()
                    .equals(other.address2, address2)) &&
            (identical(other.zipcode, zipcode) ||
                const DeepCollectionEquality()
                    .equals(other.zipcode, zipcode)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(addressType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address1) ^
      const DeepCollectionEquality().hash(address2) ^
      const DeepCollectionEquality().hash(zipcode) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $AddressBookExtension on AddressBook {
  AddressBook copyWith(
      {int? uid,
      String? account,
      String? addressType,
      String? name,
      String? phone,
      String? country,
      String? states,
      String? city,
      String? address1,
      String? address2,
      String? zipcode,
      bool? actived,
      DateTime? activedAt,
      Object? extras,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return AddressBook(
        uid: uid ?? this.uid,
        account: account ?? this.account,
        addressType: addressType ?? this.addressType,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        country: country ?? this.country,
        states: states ?? this.states,
        city: city ?? this.city,
        address1: address1 ?? this.address1,
        address2: address2 ?? this.address2,
        zipcode: zipcode ?? this.zipcode,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        extras: extras ?? this.extras,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Admin {
  Admin({
    required this.uid,
    this.adminId,
    this.adminPassword,
    this.adminType,
    this.adminName,
    this.adminPosition,
    this.adminDepartment,
    this.createdAt,
    this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Admin.fromJson(Map<String, dynamic> json) => _$AdminFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'admin_id', includeIfNull: false, defaultValue: '')
  final String? adminId;
  @JsonKey(name: 'admin_password', includeIfNull: false, defaultValue: '')
  final String? adminPassword;
  @JsonKey(name: 'admin_type', includeIfNull: false, defaultValue: '')
  final String? adminType;
  @JsonKey(name: 'admin_name', includeIfNull: false, defaultValue: '')
  final String? adminName;
  @JsonKey(name: 'admin_position', includeIfNull: false, defaultValue: '')
  final String? adminPosition;
  @JsonKey(name: 'admin_department', includeIfNull: false, defaultValue: '')
  final String? adminDepartment;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$AdminFromJson;
  static const toJsonFactory = _$AdminToJson;
  Map<String, dynamic> toJson() => _$AdminToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Admin &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.adminId, adminId) ||
                const DeepCollectionEquality()
                    .equals(other.adminId, adminId)) &&
            (identical(other.adminPassword, adminPassword) ||
                const DeepCollectionEquality()
                    .equals(other.adminPassword, adminPassword)) &&
            (identical(other.adminType, adminType) ||
                const DeepCollectionEquality()
                    .equals(other.adminType, adminType)) &&
            (identical(other.adminName, adminName) ||
                const DeepCollectionEquality()
                    .equals(other.adminName, adminName)) &&
            (identical(other.adminPosition, adminPosition) ||
                const DeepCollectionEquality()
                    .equals(other.adminPosition, adminPosition)) &&
            (identical(other.adminDepartment, adminDepartment) ||
                const DeepCollectionEquality()
                    .equals(other.adminDepartment, adminDepartment)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(adminId) ^
      const DeepCollectionEquality().hash(adminPassword) ^
      const DeepCollectionEquality().hash(adminType) ^
      const DeepCollectionEquality().hash(adminName) ^
      const DeepCollectionEquality().hash(adminPosition) ^
      const DeepCollectionEquality().hash(adminDepartment) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $AdminExtension on Admin {
  Admin copyWith(
      {int? uid,
      String? adminId,
      String? adminPassword,
      String? adminType,
      String? adminName,
      String? adminPosition,
      String? adminDepartment,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Admin(
        uid: uid ?? this.uid,
        adminId: adminId ?? this.adminId,
        adminPassword: adminPassword ?? this.adminPassword,
        adminType: adminType ?? this.adminType,
        adminName: adminName ?? this.adminName,
        adminPosition: adminPosition ?? this.adminPosition,
        adminDepartment: adminDepartment ?? this.adminDepartment,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Analytics {
  Analytics({
    required this.uid,
    this.hashKey,
    this.inflowUser,
    this.authorizedUser,
    this.bouncedUser,
    this.dau,
    this.wau,
    this.guestUser,
    this.authorizedRate,
    this.bouncedRate,
    this.retention,
    this.dateGroup,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Analytics.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'hash_key', includeIfNull: false, defaultValue: '')
  final String? hashKey;
  @JsonKey(name: 'inflow_user', includeIfNull: false)
  final int? inflowUser;
  @JsonKey(name: 'authorized_user', includeIfNull: false)
  final int? authorizedUser;
  @JsonKey(name: 'bounced_user', includeIfNull: false)
  final int? bouncedUser;
  @JsonKey(name: 'dau', includeIfNull: false)
  final int? dau;
  @JsonKey(name: 'wau', includeIfNull: false)
  final int? wau;
  @JsonKey(name: 'guest_user', includeIfNull: false)
  final int? guestUser;
  @JsonKey(name: 'authorized_rate', includeIfNull: false)
  final double? authorizedRate;
  @JsonKey(name: 'bounced_rate', includeIfNull: false)
  final double? bouncedRate;
  @JsonKey(name: 'retention', includeIfNull: false)
  final double? retention;
  @JsonKey(name: 'date_group', includeIfNull: false, defaultValue: '')
  final String? dateGroup;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  static const fromJsonFactory = _$AnalyticsFromJson;
  static const toJsonFactory = _$AnalyticsToJson;
  Map<String, dynamic> toJson() => _$AnalyticsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Analytics &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.hashKey, hashKey) ||
                const DeepCollectionEquality()
                    .equals(other.hashKey, hashKey)) &&
            (identical(other.inflowUser, inflowUser) ||
                const DeepCollectionEquality()
                    .equals(other.inflowUser, inflowUser)) &&
            (identical(other.authorizedUser, authorizedUser) ||
                const DeepCollectionEquality()
                    .equals(other.authorizedUser, authorizedUser)) &&
            (identical(other.bouncedUser, bouncedUser) ||
                const DeepCollectionEquality()
                    .equals(other.bouncedUser, bouncedUser)) &&
            (identical(other.dau, dau) ||
                const DeepCollectionEquality().equals(other.dau, dau)) &&
            (identical(other.wau, wau) ||
                const DeepCollectionEquality().equals(other.wau, wau)) &&
            (identical(other.guestUser, guestUser) ||
                const DeepCollectionEquality()
                    .equals(other.guestUser, guestUser)) &&
            (identical(other.authorizedRate, authorizedRate) ||
                const DeepCollectionEquality()
                    .equals(other.authorizedRate, authorizedRate)) &&
            (identical(other.bouncedRate, bouncedRate) ||
                const DeepCollectionEquality()
                    .equals(other.bouncedRate, bouncedRate)) &&
            (identical(other.retention, retention) ||
                const DeepCollectionEquality()
                    .equals(other.retention, retention)) &&
            (identical(other.dateGroup, dateGroup) ||
                const DeepCollectionEquality()
                    .equals(other.dateGroup, dateGroup)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(hashKey) ^
      const DeepCollectionEquality().hash(inflowUser) ^
      const DeepCollectionEquality().hash(authorizedUser) ^
      const DeepCollectionEquality().hash(bouncedUser) ^
      const DeepCollectionEquality().hash(dau) ^
      const DeepCollectionEquality().hash(wau) ^
      const DeepCollectionEquality().hash(guestUser) ^
      const DeepCollectionEquality().hash(authorizedRate) ^
      const DeepCollectionEquality().hash(bouncedRate) ^
      const DeepCollectionEquality().hash(retention) ^
      const DeepCollectionEquality().hash(dateGroup) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $AnalyticsExtension on Analytics {
  Analytics copyWith(
      {int? uid,
      String? hashKey,
      int? inflowUser,
      int? authorizedUser,
      int? bouncedUser,
      int? dau,
      int? wau,
      int? guestUser,
      double? authorizedRate,
      double? bouncedRate,
      double? retention,
      String? dateGroup,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return Analytics(
        uid: uid ?? this.uid,
        hashKey: hashKey ?? this.hashKey,
        inflowUser: inflowUser ?? this.inflowUser,
        authorizedUser: authorizedUser ?? this.authorizedUser,
        bouncedUser: bouncedUser ?? this.bouncedUser,
        dau: dau ?? this.dau,
        wau: wau ?? this.wau,
        guestUser: guestUser ?? this.guestUser,
        authorizedRate: authorizedRate ?? this.authorizedRate,
        bouncedRate: bouncedRate ?? this.bouncedRate,
        retention: retention ?? this.retention,
        dateGroup: dateGroup ?? this.dateGroup,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Log {
  Log({
    required this.uid,
    this.hashKey,
    this.logType,
    required this.timestamp,
    this.provider,
    this.contentId,
    this.contentParentId,
    this.parentUserId,
    this.contentType,
    this.action,
    this.actionContent,
    this.extras,
    this.type,
    this.userId,
    this.groupId,
    this.username,
    this.userName,
    this.userType,
    this.roleType,
    this.roleLevel,
    this.appId,
    this.appVersion,
    this.osType,
    this.osVersion,
    this.deviceId,
    this.deviceType,
    this.deviceName,
    this.deviceLocale,
    this.deviceModel,
    this.deviceUserAgent,
    this.pushToken,
    this.inviteCode,
    this.rewardUserId,
    this.rewardCode,
    this.rewardValue,
    this.bonusValue,
    this.bonusReason,
    this.value,
    this.votingCode,
    this.votingPower,
    this.reqIp,
    this.reqAgent,
    this.reqPath,
    this.reqMethod,
    this.reqParams,
    this.reqBody,
    this.resStatusCode,
    this.resContentType,
    this.resAccessControlAllowOrigin,
    this.resError,
    this.dateGroup,
    this.status,
    required this.createdAt,
  });

  factory Log.fromJson(Map<String, dynamic> json) => _$LogFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'hash_key', includeIfNull: false, defaultValue: '')
  final String? hashKey;
  @JsonKey(name: 'log_type', includeIfNull: false, defaultValue: '')
  final String? logType;
  @JsonKey(name: 'timestamp', includeIfNull: false)
  final DateTime timestamp;
  @JsonKey(name: 'provider', includeIfNull: false, defaultValue: '')
  final String? provider;
  @JsonKey(name: 'content_id', includeIfNull: false, defaultValue: '')
  final String? contentId;
  @JsonKey(name: 'content_parent_id', includeIfNull: false, defaultValue: '')
  final String? contentParentId;
  @JsonKey(name: 'parent_user_id', includeIfNull: false)
  final int? parentUserId;
  @JsonKey(name: 'content_type', includeIfNull: false, defaultValue: '')
  final String? contentType;
  @JsonKey(name: 'action', includeIfNull: false, defaultValue: '')
  final String? action;
  @JsonKey(name: 'action_content', includeIfNull: false, defaultValue: '')
  final String? actionContent;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  final String? type;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int? userId;
  @JsonKey(name: 'group_id', includeIfNull: false, defaultValue: '')
  final String? groupId;
  @JsonKey(name: 'username', includeIfNull: false, defaultValue: '')
  final String? username;
  @JsonKey(name: 'user_name', includeIfNull: false, defaultValue: '')
  final String? userName;
  @JsonKey(name: 'user_type', includeIfNull: false, defaultValue: '')
  final String? userType;
  @JsonKey(name: 'role_type', includeIfNull: false, defaultValue: '')
  final String? roleType;
  @JsonKey(name: 'role_level', includeIfNull: false)
  final int? roleLevel;
  @JsonKey(name: 'app_id', includeIfNull: false, defaultValue: '')
  final String? appId;
  @JsonKey(name: 'app_version', includeIfNull: false, defaultValue: '')
  final String? appVersion;
  @JsonKey(name: 'os_type', includeIfNull: false, defaultValue: '')
  final String? osType;
  @JsonKey(name: 'os_version', includeIfNull: false, defaultValue: '')
  final String? osVersion;
  @JsonKey(name: 'device_id', includeIfNull: false, defaultValue: '')
  final String? deviceId;
  @JsonKey(name: 'device_type', includeIfNull: false, defaultValue: '')
  final String? deviceType;
  @JsonKey(name: 'device_name', includeIfNull: false, defaultValue: '')
  final String? deviceName;
  @JsonKey(name: 'device_locale', includeIfNull: false, defaultValue: '')
  final String? deviceLocale;
  @JsonKey(name: 'device_model', includeIfNull: false, defaultValue: '')
  final String? deviceModel;
  @JsonKey(name: 'device_user_agent', includeIfNull: false, defaultValue: '')
  final String? deviceUserAgent;
  @JsonKey(name: 'push_token', includeIfNull: false, defaultValue: '')
  final String? pushToken;
  @JsonKey(name: 'invite_code', includeIfNull: false, defaultValue: '')
  final String? inviteCode;
  @JsonKey(name: 'reward_user_id', includeIfNull: false, defaultValue: '')
  final String? rewardUserId;
  @JsonKey(name: 'reward_code', includeIfNull: false, defaultValue: '')
  final String? rewardCode;
  @JsonKey(name: 'reward_value', includeIfNull: false, defaultValue: '')
  final String? rewardValue;
  @JsonKey(name: 'bonus_value', includeIfNull: false, defaultValue: '')
  final String? bonusValue;
  @JsonKey(name: 'bonus_reason', includeIfNull: false, defaultValue: '')
  final String? bonusReason;
  @JsonKey(name: 'value', includeIfNull: false, defaultValue: '')
  final String? value;
  @JsonKey(name: 'voting_code', includeIfNull: false, defaultValue: '')
  final String? votingCode;
  @JsonKey(name: 'voting_power', includeIfNull: false, defaultValue: '')
  final String? votingPower;
  @JsonKey(name: 'req_ip', includeIfNull: false, defaultValue: '')
  final String? reqIp;
  @JsonKey(name: 'req_agent', includeIfNull: false, defaultValue: '')
  final String? reqAgent;
  @JsonKey(name: 'req_path', includeIfNull: false, defaultValue: '')
  final String? reqPath;
  @JsonKey(name: 'req_method', includeIfNull: false, defaultValue: '')
  final String? reqMethod;
  @JsonKey(name: 'req_params', includeIfNull: false, defaultValue: '')
  final String? reqParams;
  @JsonKey(name: 'req_body', includeIfNull: false, defaultValue: '')
  final String? reqBody;
  @JsonKey(name: 'res_status_code', includeIfNull: false, defaultValue: '')
  final String? resStatusCode;
  @JsonKey(name: 'res_content_type', includeIfNull: false, defaultValue: '')
  final String? resContentType;
  @JsonKey(
      name: 'res_access_control_allow_origin',
      includeIfNull: false,
      defaultValue: '')
  final String? resAccessControlAllowOrigin;
  @JsonKey(name: 'res_error', includeIfNull: false, defaultValue: '')
  final String? resError;
  @JsonKey(name: 'date_group', includeIfNull: false, defaultValue: '')
  final String? dateGroup;
  @JsonKey(name: 'status', includeIfNull: false, defaultValue: '')
  final String? status;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  static const fromJsonFactory = _$LogFromJson;
  static const toJsonFactory = _$LogToJson;
  Map<String, dynamic> toJson() => _$LogToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Log &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.hashKey, hashKey) ||
                const DeepCollectionEquality()
                    .equals(other.hashKey, hashKey)) &&
            (identical(other.logType, logType) ||
                const DeepCollectionEquality()
                    .equals(other.logType, logType)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.contentId, contentId) ||
                const DeepCollectionEquality()
                    .equals(other.contentId, contentId)) &&
            (identical(other.contentParentId, contentParentId) ||
                const DeepCollectionEquality()
                    .equals(other.contentParentId, contentParentId)) &&
            (identical(other.parentUserId, parentUserId) ||
                const DeepCollectionEquality()
                    .equals(other.parentUserId, parentUserId)) &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality()
                    .equals(other.contentType, contentType)) &&
            (identical(other.action, action) ||
                const DeepCollectionEquality().equals(other.action, action)) &&
            (identical(other.actionContent, actionContent) ||
                const DeepCollectionEquality()
                    .equals(other.actionContent, actionContent)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.groupId, groupId) ||
                const DeepCollectionEquality()
                    .equals(other.groupId, groupId)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userType, userType) ||
                const DeepCollectionEquality()
                    .equals(other.userType, userType)) &&
            (identical(other.roleType, roleType) ||
                const DeepCollectionEquality()
                    .equals(other.roleType, roleType)) &&
            (identical(other.roleLevel, roleLevel) ||
                const DeepCollectionEquality()
                    .equals(other.roleLevel, roleLevel)) &&
            (identical(other.appId, appId) ||
                const DeepCollectionEquality().equals(other.appId, appId)) &&
            (identical(other.appVersion, appVersion) ||
                const DeepCollectionEquality()
                    .equals(other.appVersion, appVersion)) &&
            (identical(other.osType, osType) ||
                const DeepCollectionEquality().equals(other.osType, osType)) &&
            (identical(other.osVersion, osVersion) ||
                const DeepCollectionEquality()
                    .equals(other.osVersion, osVersion)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.deviceType, deviceType) || const DeepCollectionEquality().equals(other.deviceType, deviceType)) &&
            (identical(other.deviceName, deviceName) || const DeepCollectionEquality().equals(other.deviceName, deviceName)) &&
            (identical(other.deviceLocale, deviceLocale) || const DeepCollectionEquality().equals(other.deviceLocale, deviceLocale)) &&
            (identical(other.deviceModel, deviceModel) || const DeepCollectionEquality().equals(other.deviceModel, deviceModel)) &&
            (identical(other.deviceUserAgent, deviceUserAgent) || const DeepCollectionEquality().equals(other.deviceUserAgent, deviceUserAgent)) &&
            (identical(other.pushToken, pushToken) || const DeepCollectionEquality().equals(other.pushToken, pushToken)) &&
            (identical(other.inviteCode, inviteCode) || const DeepCollectionEquality().equals(other.inviteCode, inviteCode)) &&
            (identical(other.rewardUserId, rewardUserId) || const DeepCollectionEquality().equals(other.rewardUserId, rewardUserId)) &&
            (identical(other.rewardCode, rewardCode) || const DeepCollectionEquality().equals(other.rewardCode, rewardCode)) &&
            (identical(other.rewardValue, rewardValue) || const DeepCollectionEquality().equals(other.rewardValue, rewardValue)) &&
            (identical(other.bonusValue, bonusValue) || const DeepCollectionEquality().equals(other.bonusValue, bonusValue)) &&
            (identical(other.bonusReason, bonusReason) || const DeepCollectionEquality().equals(other.bonusReason, bonusReason)) &&
            (identical(other.value, value) || const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.votingCode, votingCode) || const DeepCollectionEquality().equals(other.votingCode, votingCode)) &&
            (identical(other.votingPower, votingPower) || const DeepCollectionEquality().equals(other.votingPower, votingPower)) &&
            (identical(other.reqIp, reqIp) || const DeepCollectionEquality().equals(other.reqIp, reqIp)) &&
            (identical(other.reqAgent, reqAgent) || const DeepCollectionEquality().equals(other.reqAgent, reqAgent)) &&
            (identical(other.reqPath, reqPath) || const DeepCollectionEquality().equals(other.reqPath, reqPath)) &&
            (identical(other.reqMethod, reqMethod) || const DeepCollectionEquality().equals(other.reqMethod, reqMethod)) &&
            (identical(other.reqParams, reqParams) || const DeepCollectionEquality().equals(other.reqParams, reqParams)) &&
            (identical(other.reqBody, reqBody) || const DeepCollectionEquality().equals(other.reqBody, reqBody)) &&
            (identical(other.resStatusCode, resStatusCode) || const DeepCollectionEquality().equals(other.resStatusCode, resStatusCode)) &&
            (identical(other.resContentType, resContentType) || const DeepCollectionEquality().equals(other.resContentType, resContentType)) &&
            (identical(other.resAccessControlAllowOrigin, resAccessControlAllowOrigin) || const DeepCollectionEquality().equals(other.resAccessControlAllowOrigin, resAccessControlAllowOrigin)) &&
            (identical(other.resError, resError) || const DeepCollectionEquality().equals(other.resError, resError)) &&
            (identical(other.dateGroup, dateGroup) || const DeepCollectionEquality().equals(other.dateGroup, dateGroup)) &&
            (identical(other.status, status) || const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(hashKey) ^
      const DeepCollectionEquality().hash(logType) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(contentId) ^
      const DeepCollectionEquality().hash(contentParentId) ^
      const DeepCollectionEquality().hash(parentUserId) ^
      const DeepCollectionEquality().hash(contentType) ^
      const DeepCollectionEquality().hash(action) ^
      const DeepCollectionEquality().hash(actionContent) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(groupId) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userType) ^
      const DeepCollectionEquality().hash(roleType) ^
      const DeepCollectionEquality().hash(roleLevel) ^
      const DeepCollectionEquality().hash(appId) ^
      const DeepCollectionEquality().hash(appVersion) ^
      const DeepCollectionEquality().hash(osType) ^
      const DeepCollectionEquality().hash(osVersion) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(deviceType) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(deviceLocale) ^
      const DeepCollectionEquality().hash(deviceModel) ^
      const DeepCollectionEquality().hash(deviceUserAgent) ^
      const DeepCollectionEquality().hash(pushToken) ^
      const DeepCollectionEquality().hash(inviteCode) ^
      const DeepCollectionEquality().hash(rewardUserId) ^
      const DeepCollectionEquality().hash(rewardCode) ^
      const DeepCollectionEquality().hash(rewardValue) ^
      const DeepCollectionEquality().hash(bonusValue) ^
      const DeepCollectionEquality().hash(bonusReason) ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(votingCode) ^
      const DeepCollectionEquality().hash(votingPower) ^
      const DeepCollectionEquality().hash(reqIp) ^
      const DeepCollectionEquality().hash(reqAgent) ^
      const DeepCollectionEquality().hash(reqPath) ^
      const DeepCollectionEquality().hash(reqMethod) ^
      const DeepCollectionEquality().hash(reqParams) ^
      const DeepCollectionEquality().hash(reqBody) ^
      const DeepCollectionEquality().hash(resStatusCode) ^
      const DeepCollectionEquality().hash(resContentType) ^
      const DeepCollectionEquality().hash(resAccessControlAllowOrigin) ^
      const DeepCollectionEquality().hash(resError) ^
      const DeepCollectionEquality().hash(dateGroup) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      runtimeType.hashCode;
}

extension $LogExtension on Log {
  Log copyWith(
      {int? uid,
      String? hashKey,
      String? logType,
      DateTime? timestamp,
      String? provider,
      String? contentId,
      String? contentParentId,
      int? parentUserId,
      String? contentType,
      String? action,
      String? actionContent,
      Object? extras,
      String? type,
      int? userId,
      String? groupId,
      String? username,
      String? userName,
      String? userType,
      String? roleType,
      int? roleLevel,
      String? appId,
      String? appVersion,
      String? osType,
      String? osVersion,
      String? deviceId,
      String? deviceType,
      String? deviceName,
      String? deviceLocale,
      String? deviceModel,
      String? deviceUserAgent,
      String? pushToken,
      String? inviteCode,
      String? rewardUserId,
      String? rewardCode,
      String? rewardValue,
      String? bonusValue,
      String? bonusReason,
      String? value,
      String? votingCode,
      String? votingPower,
      String? reqIp,
      String? reqAgent,
      String? reqPath,
      String? reqMethod,
      String? reqParams,
      String? reqBody,
      String? resStatusCode,
      String? resContentType,
      String? resAccessControlAllowOrigin,
      String? resError,
      String? dateGroup,
      String? status,
      DateTime? createdAt}) {
    return Log(
        uid: uid ?? this.uid,
        hashKey: hashKey ?? this.hashKey,
        logType: logType ?? this.logType,
        timestamp: timestamp ?? this.timestamp,
        provider: provider ?? this.provider,
        contentId: contentId ?? this.contentId,
        contentParentId: contentParentId ?? this.contentParentId,
        parentUserId: parentUserId ?? this.parentUserId,
        contentType: contentType ?? this.contentType,
        action: action ?? this.action,
        actionContent: actionContent ?? this.actionContent,
        extras: extras ?? this.extras,
        type: type ?? this.type,
        userId: userId ?? this.userId,
        groupId: groupId ?? this.groupId,
        username: username ?? this.username,
        userName: userName ?? this.userName,
        userType: userType ?? this.userType,
        roleType: roleType ?? this.roleType,
        roleLevel: roleLevel ?? this.roleLevel,
        appId: appId ?? this.appId,
        appVersion: appVersion ?? this.appVersion,
        osType: osType ?? this.osType,
        osVersion: osVersion ?? this.osVersion,
        deviceId: deviceId ?? this.deviceId,
        deviceType: deviceType ?? this.deviceType,
        deviceName: deviceName ?? this.deviceName,
        deviceLocale: deviceLocale ?? this.deviceLocale,
        deviceModel: deviceModel ?? this.deviceModel,
        deviceUserAgent: deviceUserAgent ?? this.deviceUserAgent,
        pushToken: pushToken ?? this.pushToken,
        inviteCode: inviteCode ?? this.inviteCode,
        rewardUserId: rewardUserId ?? this.rewardUserId,
        rewardCode: rewardCode ?? this.rewardCode,
        rewardValue: rewardValue ?? this.rewardValue,
        bonusValue: bonusValue ?? this.bonusValue,
        bonusReason: bonusReason ?? this.bonusReason,
        value: value ?? this.value,
        votingCode: votingCode ?? this.votingCode,
        votingPower: votingPower ?? this.votingPower,
        reqIp: reqIp ?? this.reqIp,
        reqAgent: reqAgent ?? this.reqAgent,
        reqPath: reqPath ?? this.reqPath,
        reqMethod: reqMethod ?? this.reqMethod,
        reqParams: reqParams ?? this.reqParams,
        reqBody: reqBody ?? this.reqBody,
        resStatusCode: resStatusCode ?? this.resStatusCode,
        resContentType: resContentType ?? this.resContentType,
        resAccessControlAllowOrigin:
            resAccessControlAllowOrigin ?? this.resAccessControlAllowOrigin,
        resError: resError ?? this.resError,
        dateGroup: dateGroup ?? this.dateGroup,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt);
  }
}

@JsonSerializable(explicitToJson: true)
class App {
  App({
    required this.uid,
    required this.appId,
    this.appName,
    required this.appOs,
    this.appVersion,
    this.appVersionMinimum,
    this.appVersionReview,
    this.appUpdateLink,
    required this.actived,
    required this.activedAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory App.fromJson(Map<String, dynamic> json) => _$AppFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'app_id', includeIfNull: false, defaultValue: '')
  final String appId;
  @JsonKey(name: 'app_name', includeIfNull: false, defaultValue: '')
  final String? appName;
  @JsonKey(name: 'app_os', includeIfNull: false, defaultValue: '')
  final String appOs;
  @JsonKey(name: 'app_version', includeIfNull: false, defaultValue: '')
  final String? appVersion;
  @JsonKey(name: 'app_version_minimum', includeIfNull: false, defaultValue: '')
  final String? appVersionMinimum;
  @JsonKey(name: 'app_version_review', includeIfNull: false, defaultValue: '')
  final String? appVersionReview;
  @JsonKey(name: 'app_update_link', includeIfNull: false, defaultValue: '')
  final String? appUpdateLink;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$AppFromJson;
  static const toJsonFactory = _$AppToJson;
  Map<String, dynamic> toJson() => _$AppToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is App &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.appId, appId) ||
                const DeepCollectionEquality().equals(other.appId, appId)) &&
            (identical(other.appName, appName) ||
                const DeepCollectionEquality()
                    .equals(other.appName, appName)) &&
            (identical(other.appOs, appOs) ||
                const DeepCollectionEquality().equals(other.appOs, appOs)) &&
            (identical(other.appVersion, appVersion) ||
                const DeepCollectionEquality()
                    .equals(other.appVersion, appVersion)) &&
            (identical(other.appVersionMinimum, appVersionMinimum) ||
                const DeepCollectionEquality()
                    .equals(other.appVersionMinimum, appVersionMinimum)) &&
            (identical(other.appVersionReview, appVersionReview) ||
                const DeepCollectionEquality()
                    .equals(other.appVersionReview, appVersionReview)) &&
            (identical(other.appUpdateLink, appUpdateLink) ||
                const DeepCollectionEquality()
                    .equals(other.appUpdateLink, appUpdateLink)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(appId) ^
      const DeepCollectionEquality().hash(appName) ^
      const DeepCollectionEquality().hash(appOs) ^
      const DeepCollectionEquality().hash(appVersion) ^
      const DeepCollectionEquality().hash(appVersionMinimum) ^
      const DeepCollectionEquality().hash(appVersionReview) ^
      const DeepCollectionEquality().hash(appUpdateLink) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $AppExtension on App {
  App copyWith(
      {int? uid,
      String? appId,
      String? appName,
      String? appOs,
      String? appVersion,
      String? appVersionMinimum,
      String? appVersionReview,
      String? appUpdateLink,
      bool? actived,
      DateTime? activedAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return App(
        uid: uid ?? this.uid,
        appId: appId ?? this.appId,
        appName: appName ?? this.appName,
        appOs: appOs ?? this.appOs,
        appVersion: appVersion ?? this.appVersion,
        appVersionMinimum: appVersionMinimum ?? this.appVersionMinimum,
        appVersionReview: appVersionReview ?? this.appVersionReview,
        appUpdateLink: appUpdateLink ?? this.appUpdateLink,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Channel {
  Channel({
    required this.uid,
    this.storeId,
    this.userId,
    this.rules,
    required this.name,
    this.type,
    this.logoImage,
    this.coverImage,
    this.description,
    required this.sortOrder,
    required this.hidden,
    this.hiddenAt,
    required this.blocked,
    this.blockedAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'store_id', includeIfNull: false)
  final int? storeId;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int? userId;
  @JsonKey(name: 'rules', includeIfNull: false)
  final Object? rules;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String name;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  final String? type;
  @JsonKey(name: 'logo_image', includeIfNull: false, defaultValue: '')
  final String? logoImage;
  @JsonKey(name: 'cover_image', includeIfNull: false, defaultValue: '')
  final String? coverImage;
  @JsonKey(name: 'description', includeIfNull: false, defaultValue: '')
  final String? description;
  @JsonKey(name: 'sort_order', includeIfNull: false)
  final int sortOrder;
  @JsonKey(name: 'hidden', includeIfNull: false)
  final bool hidden;
  @JsonKey(name: 'hidden_at', includeIfNull: false)
  final DateTime? hiddenAt;
  @JsonKey(name: 'blocked', includeIfNull: false)
  final bool blocked;
  @JsonKey(name: 'blocked_at', includeIfNull: false)
  final DateTime? blockedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$ChannelFromJson;
  static const toJsonFactory = _$ChannelToJson;
  Map<String, dynamic> toJson() => _$ChannelToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Channel &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality()
                    .equals(other.storeId, storeId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.rules, rules) ||
                const DeepCollectionEquality().equals(other.rules, rules)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.logoImage, logoImage) ||
                const DeepCollectionEquality()
                    .equals(other.logoImage, logoImage)) &&
            (identical(other.coverImage, coverImage) ||
                const DeepCollectionEquality()
                    .equals(other.coverImage, coverImage)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.sortOrder, sortOrder) ||
                const DeepCollectionEquality()
                    .equals(other.sortOrder, sortOrder)) &&
            (identical(other.hidden, hidden) ||
                const DeepCollectionEquality().equals(other.hidden, hidden)) &&
            (identical(other.hiddenAt, hiddenAt) ||
                const DeepCollectionEquality()
                    .equals(other.hiddenAt, hiddenAt)) &&
            (identical(other.blocked, blocked) ||
                const DeepCollectionEquality()
                    .equals(other.blocked, blocked)) &&
            (identical(other.blockedAt, blockedAt) ||
                const DeepCollectionEquality()
                    .equals(other.blockedAt, blockedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(storeId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(rules) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(logoImage) ^
      const DeepCollectionEquality().hash(coverImage) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(sortOrder) ^
      const DeepCollectionEquality().hash(hidden) ^
      const DeepCollectionEquality().hash(hiddenAt) ^
      const DeepCollectionEquality().hash(blocked) ^
      const DeepCollectionEquality().hash(blockedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $ChannelExtension on Channel {
  Channel copyWith(
      {int? uid,
      int? storeId,
      int? userId,
      Object? rules,
      String? name,
      String? type,
      String? logoImage,
      String? coverImage,
      String? description,
      int? sortOrder,
      bool? hidden,
      DateTime? hiddenAt,
      bool? blocked,
      DateTime? blockedAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Channel(
        uid: uid ?? this.uid,
        storeId: storeId ?? this.storeId,
        userId: userId ?? this.userId,
        rules: rules ?? this.rules,
        name: name ?? this.name,
        type: type ?? this.type,
        logoImage: logoImage ?? this.logoImage,
        coverImage: coverImage ?? this.coverImage,
        description: description ?? this.description,
        sortOrder: sortOrder ?? this.sortOrder,
        hidden: hidden ?? this.hidden,
        hiddenAt: hiddenAt ?? this.hiddenAt,
        blocked: blocked ?? this.blocked,
        blockedAt: blockedAt ?? this.blockedAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Comment {
  Comment({
    required this.uid,
    this.itemCode,
    this.orderNumber,
    required this.commentKey,
    required this.commentProvider,
    this.commentTarget,
    this.commentTargetId,
    this.commentType,
    this.commentParentTarget,
    this.commentParentId,
    this.commentDepth,
    this.commentOrder,
    this.commentTitle,
    required this.commentContent,
    required this.commentEmotion,
    required this.commentImageUrl,
    this.linkedTarget,
    this.linkedTargetId,
    this.userId,
    this.userName,
    this.userPassword,
    this.extras,
    required this.hidden,
    this.hiddenAt,
    required this.blocked,
    this.blockedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.replied,
    this.repliedAt,
    this.archived,
    this.archivedAt,
  });

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'item_code', includeIfNull: false, defaultValue: '')
  final String? itemCode;
  @JsonKey(name: 'order_number', includeIfNull: false, defaultValue: '')
  final String? orderNumber;
  @JsonKey(name: 'comment_key', includeIfNull: false, defaultValue: '')
  final String commentKey;
  @JsonKey(name: 'comment_provider', includeIfNull: false, defaultValue: '')
  final String commentProvider;
  @JsonKey(name: 'comment_target', includeIfNull: false, defaultValue: '')
  final String? commentTarget;
  @JsonKey(name: 'comment_target_id', includeIfNull: false, defaultValue: '')
  final String? commentTargetId;
  @JsonKey(name: 'comment_type', includeIfNull: false, defaultValue: '')
  final String? commentType;
  @JsonKey(
      name: 'comment_parent_target', includeIfNull: false, defaultValue: '')
  final String? commentParentTarget;
  @JsonKey(name: 'comment_parent_id', includeIfNull: false)
  final int? commentParentId;
  @JsonKey(name: 'comment_depth', includeIfNull: false)
  final int? commentDepth;
  @JsonKey(name: 'comment_order', includeIfNull: false)
  final int? commentOrder;
  @JsonKey(name: 'comment_title', includeIfNull: false, defaultValue: '')
  final String? commentTitle;
  @JsonKey(name: 'comment_content', includeIfNull: false, defaultValue: '')
  final String commentContent;
  @JsonKey(name: 'comment_emotion', includeIfNull: false, defaultValue: '')
  final String commentEmotion;
  @JsonKey(name: 'comment_image_url', includeIfNull: false, defaultValue: '')
  final String commentImageUrl;
  @JsonKey(name: 'linked_target', includeIfNull: false, defaultValue: '')
  final String? linkedTarget;
  @JsonKey(name: 'linked_target_id', includeIfNull: false, defaultValue: '')
  final String? linkedTargetId;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int? userId;
  @JsonKey(name: 'user_name', includeIfNull: false, defaultValue: '')
  final String? userName;
  @JsonKey(name: 'user_password', includeIfNull: false, defaultValue: '')
  final String? userPassword;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'hidden', includeIfNull: false)
  final bool hidden;
  @JsonKey(name: 'hidden_at', includeIfNull: false)
  final DateTime? hiddenAt;
  @JsonKey(name: 'blocked', includeIfNull: false)
  final bool blocked;
  @JsonKey(name: 'blocked_at', includeIfNull: false)
  final DateTime? blockedAt;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'replied', includeIfNull: false)
  final bool replied;
  @JsonKey(name: 'replied_at', includeIfNull: false)
  final DateTime? repliedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$CommentFromJson;
  static const toJsonFactory = _$CommentToJson;
  Map<String, dynamic> toJson() => _$CommentToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Comment &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.itemCode, itemCode) ||
                const DeepCollectionEquality()
                    .equals(other.itemCode, itemCode)) &&
            (identical(other.orderNumber, orderNumber) ||
                const DeepCollectionEquality()
                    .equals(other.orderNumber, orderNumber)) &&
            (identical(other.commentKey, commentKey) ||
                const DeepCollectionEquality()
                    .equals(other.commentKey, commentKey)) &&
            (identical(other.commentProvider, commentProvider) ||
                const DeepCollectionEquality()
                    .equals(other.commentProvider, commentProvider)) &&
            (identical(other.commentTarget, commentTarget) ||
                const DeepCollectionEquality()
                    .equals(other.commentTarget, commentTarget)) &&
            (identical(other.commentTargetId, commentTargetId) ||
                const DeepCollectionEquality()
                    .equals(other.commentTargetId, commentTargetId)) &&
            (identical(other.commentType, commentType) ||
                const DeepCollectionEquality()
                    .equals(other.commentType, commentType)) &&
            (identical(other.commentParentTarget, commentParentTarget) ||
                const DeepCollectionEquality()
                    .equals(other.commentParentTarget, commentParentTarget)) &&
            (identical(other.commentParentId, commentParentId) ||
                const DeepCollectionEquality()
                    .equals(other.commentParentId, commentParentId)) &&
            (identical(other.commentDepth, commentDepth) ||
                const DeepCollectionEquality()
                    .equals(other.commentDepth, commentDepth)) &&
            (identical(other.commentOrder, commentOrder) ||
                const DeepCollectionEquality()
                    .equals(other.commentOrder, commentOrder)) &&
            (identical(other.commentTitle, commentTitle) ||
                const DeepCollectionEquality()
                    .equals(other.commentTitle, commentTitle)) &&
            (identical(other.commentContent, commentContent) ||
                const DeepCollectionEquality()
                    .equals(other.commentContent, commentContent)) &&
            (identical(other.commentEmotion, commentEmotion) ||
                const DeepCollectionEquality()
                    .equals(other.commentEmotion, commentEmotion)) &&
            (identical(other.commentImageUrl, commentImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.commentImageUrl, commentImageUrl)) &&
            (identical(other.linkedTarget, linkedTarget) ||
                const DeepCollectionEquality()
                    .equals(other.linkedTarget, linkedTarget)) &&
            (identical(other.linkedTargetId, linkedTargetId) ||
                const DeepCollectionEquality()
                    .equals(other.linkedTargetId, linkedTargetId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userPassword, userPassword) ||
                const DeepCollectionEquality()
                    .equals(other.userPassword, userPassword)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.hidden, hidden) ||
                const DeepCollectionEquality().equals(other.hidden, hidden)) &&
            (identical(other.hiddenAt, hiddenAt) ||
                const DeepCollectionEquality().equals(other.hiddenAt, hiddenAt)) &&
            (identical(other.blocked, blocked) || const DeepCollectionEquality().equals(other.blocked, blocked)) &&
            (identical(other.blockedAt, blockedAt) || const DeepCollectionEquality().equals(other.blockedAt, blockedAt)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) || const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.replied, replied) || const DeepCollectionEquality().equals(other.replied, replied)) &&
            (identical(other.repliedAt, repliedAt) || const DeepCollectionEquality().equals(other.repliedAt, repliedAt)) &&
            (identical(other.archived, archived) || const DeepCollectionEquality().equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) || const DeepCollectionEquality().equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(itemCode) ^
      const DeepCollectionEquality().hash(orderNumber) ^
      const DeepCollectionEquality().hash(commentKey) ^
      const DeepCollectionEquality().hash(commentProvider) ^
      const DeepCollectionEquality().hash(commentTarget) ^
      const DeepCollectionEquality().hash(commentTargetId) ^
      const DeepCollectionEquality().hash(commentType) ^
      const DeepCollectionEquality().hash(commentParentTarget) ^
      const DeepCollectionEquality().hash(commentParentId) ^
      const DeepCollectionEquality().hash(commentDepth) ^
      const DeepCollectionEquality().hash(commentOrder) ^
      const DeepCollectionEquality().hash(commentTitle) ^
      const DeepCollectionEquality().hash(commentContent) ^
      const DeepCollectionEquality().hash(commentEmotion) ^
      const DeepCollectionEquality().hash(commentImageUrl) ^
      const DeepCollectionEquality().hash(linkedTarget) ^
      const DeepCollectionEquality().hash(linkedTargetId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userPassword) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(hidden) ^
      const DeepCollectionEquality().hash(hiddenAt) ^
      const DeepCollectionEquality().hash(blocked) ^
      const DeepCollectionEquality().hash(blockedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(replied) ^
      const DeepCollectionEquality().hash(repliedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $CommentExtension on Comment {
  Comment copyWith(
      {int? uid,
      String? itemCode,
      String? orderNumber,
      String? commentKey,
      String? commentProvider,
      String? commentTarget,
      String? commentTargetId,
      String? commentType,
      String? commentParentTarget,
      int? commentParentId,
      int? commentDepth,
      int? commentOrder,
      String? commentTitle,
      String? commentContent,
      String? commentEmotion,
      String? commentImageUrl,
      String? linkedTarget,
      String? linkedTargetId,
      int? userId,
      String? userName,
      String? userPassword,
      Object? extras,
      bool? hidden,
      DateTime? hiddenAt,
      bool? blocked,
      DateTime? blockedAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? replied,
      DateTime? repliedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Comment(
        uid: uid ?? this.uid,
        itemCode: itemCode ?? this.itemCode,
        orderNumber: orderNumber ?? this.orderNumber,
        commentKey: commentKey ?? this.commentKey,
        commentProvider: commentProvider ?? this.commentProvider,
        commentTarget: commentTarget ?? this.commentTarget,
        commentTargetId: commentTargetId ?? this.commentTargetId,
        commentType: commentType ?? this.commentType,
        commentParentTarget: commentParentTarget ?? this.commentParentTarget,
        commentParentId: commentParentId ?? this.commentParentId,
        commentDepth: commentDepth ?? this.commentDepth,
        commentOrder: commentOrder ?? this.commentOrder,
        commentTitle: commentTitle ?? this.commentTitle,
        commentContent: commentContent ?? this.commentContent,
        commentEmotion: commentEmotion ?? this.commentEmotion,
        commentImageUrl: commentImageUrl ?? this.commentImageUrl,
        linkedTarget: linkedTarget ?? this.linkedTarget,
        linkedTargetId: linkedTargetId ?? this.linkedTargetId,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        userPassword: userPassword ?? this.userPassword,
        extras: extras ?? this.extras,
        hidden: hidden ?? this.hidden,
        hiddenAt: hiddenAt ?? this.hiddenAt,
        blocked: blocked ?? this.blocked,
        blockedAt: blockedAt ?? this.blockedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        replied: replied ?? this.replied,
        repliedAt: repliedAt ?? this.repliedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Content {
  Content({
    required this.uid,
    this.adminId,
    this.contentGroup,
    this.contentType,
    this.contentLanguage,
    this.contentTitle,
    this.contentHtml,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'admin_id', includeIfNull: false)
  final int? adminId;
  @JsonKey(name: 'content_group', includeIfNull: false, defaultValue: '')
  final String? contentGroup;
  @JsonKey(name: 'content_type', includeIfNull: false, defaultValue: '')
  final String? contentType;
  @JsonKey(name: 'content_language', includeIfNull: false, defaultValue: '')
  final String? contentLanguage;
  @JsonKey(name: 'content_title', includeIfNull: false, defaultValue: '')
  final String? contentTitle;
  @JsonKey(name: 'content_html', includeIfNull: false, defaultValue: '')
  final String? contentHtml;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$ContentFromJson;
  static const toJsonFactory = _$ContentToJson;
  Map<String, dynamic> toJson() => _$ContentToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Content &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.adminId, adminId) ||
                const DeepCollectionEquality()
                    .equals(other.adminId, adminId)) &&
            (identical(other.contentGroup, contentGroup) ||
                const DeepCollectionEquality()
                    .equals(other.contentGroup, contentGroup)) &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality()
                    .equals(other.contentType, contentType)) &&
            (identical(other.contentLanguage, contentLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.contentLanguage, contentLanguage)) &&
            (identical(other.contentTitle, contentTitle) ||
                const DeepCollectionEquality()
                    .equals(other.contentTitle, contentTitle)) &&
            (identical(other.contentHtml, contentHtml) ||
                const DeepCollectionEquality()
                    .equals(other.contentHtml, contentHtml)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(adminId) ^
      const DeepCollectionEquality().hash(contentGroup) ^
      const DeepCollectionEquality().hash(contentType) ^
      const DeepCollectionEquality().hash(contentLanguage) ^
      const DeepCollectionEquality().hash(contentTitle) ^
      const DeepCollectionEquality().hash(contentHtml) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $ContentExtension on Content {
  Content copyWith(
      {int? uid,
      int? adminId,
      String? contentGroup,
      String? contentType,
      String? contentLanguage,
      String? contentTitle,
      String? contentHtml,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Content(
        uid: uid ?? this.uid,
        adminId: adminId ?? this.adminId,
        contentGroup: contentGroup ?? this.contentGroup,
        contentType: contentType ?? this.contentType,
        contentLanguage: contentLanguage ?? this.contentLanguage,
        contentTitle: contentTitle ?? this.contentTitle,
        contentHtml: contentHtml ?? this.contentHtml,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Category {
  Category({
    required this.uid,
    required this.code,
    required this.category1Code,
    this.category1Name,
    required this.category2Code,
    this.category2Name,
    required this.category3Code,
    this.category3Name,
    required this.categoryCode,
    required this.actived,
    required this.activedAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'code', includeIfNull: false, defaultValue: '')
  final String code;
  @JsonKey(name: 'category1Code', includeIfNull: false)
  final int category1Code;
  @JsonKey(name: 'category1Name', includeIfNull: false, defaultValue: '')
  final String? category1Name;
  @JsonKey(name: 'category2Code', includeIfNull: false)
  final int category2Code;
  @JsonKey(name: 'category2Name', includeIfNull: false, defaultValue: '')
  final String? category2Name;
  @JsonKey(name: 'category3Code', includeIfNull: false)
  final int category3Code;
  @JsonKey(name: 'category3Name', includeIfNull: false, defaultValue: '')
  final String? category3Name;
  @JsonKey(name: 'categoryCode', includeIfNull: false)
  final int categoryCode;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$CategoryFromJson;
  static const toJsonFactory = _$CategoryToJson;
  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Category &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.category1Code, category1Code) ||
                const DeepCollectionEquality()
                    .equals(other.category1Code, category1Code)) &&
            (identical(other.category1Name, category1Name) ||
                const DeepCollectionEquality()
                    .equals(other.category1Name, category1Name)) &&
            (identical(other.category2Code, category2Code) ||
                const DeepCollectionEquality()
                    .equals(other.category2Code, category2Code)) &&
            (identical(other.category2Name, category2Name) ||
                const DeepCollectionEquality()
                    .equals(other.category2Name, category2Name)) &&
            (identical(other.category3Code, category3Code) ||
                const DeepCollectionEquality()
                    .equals(other.category3Code, category3Code)) &&
            (identical(other.category3Name, category3Name) ||
                const DeepCollectionEquality()
                    .equals(other.category3Name, category3Name)) &&
            (identical(other.categoryCode, categoryCode) ||
                const DeepCollectionEquality()
                    .equals(other.categoryCode, categoryCode)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(category1Code) ^
      const DeepCollectionEquality().hash(category1Name) ^
      const DeepCollectionEquality().hash(category2Code) ^
      const DeepCollectionEquality().hash(category2Name) ^
      const DeepCollectionEquality().hash(category3Code) ^
      const DeepCollectionEquality().hash(category3Name) ^
      const DeepCollectionEquality().hash(categoryCode) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $CategoryExtension on Category {
  Category copyWith(
      {int? uid,
      String? code,
      int? category1Code,
      String? category1Name,
      int? category2Code,
      String? category2Name,
      int? category3Code,
      String? category3Name,
      int? categoryCode,
      bool? actived,
      DateTime? activedAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Category(
        uid: uid ?? this.uid,
        code: code ?? this.code,
        category1Code: category1Code ?? this.category1Code,
        category1Name: category1Name ?? this.category1Name,
        category2Code: category2Code ?? this.category2Code,
        category2Name: category2Name ?? this.category2Name,
        category3Code: category3Code ?? this.category3Code,
        category3Name: category3Name ?? this.category3Name,
        categoryCode: categoryCode ?? this.categoryCode,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryNotice {
  CategoryNotice({
    required this.uid,
    this.categoryNotice,
    this.categoryNoticeList,
    required this.createdAt,
    required this.updatedAt,
  });

  factory CategoryNotice.fromJson(Map<String, dynamic> json) =>
      _$CategoryNoticeFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'categoryNotice', includeIfNull: false, defaultValue: '')
  final String? categoryNotice;
  @JsonKey(name: 'categoryNoticeList', includeIfNull: false, defaultValue: '')
  final String? categoryNoticeList;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  static const fromJsonFactory = _$CategoryNoticeFromJson;
  static const toJsonFactory = _$CategoryNoticeToJson;
  Map<String, dynamic> toJson() => _$CategoryNoticeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryNotice &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.categoryNotice, categoryNotice) ||
                const DeepCollectionEquality()
                    .equals(other.categoryNotice, categoryNotice)) &&
            (identical(other.categoryNoticeList, categoryNoticeList) ||
                const DeepCollectionEquality()
                    .equals(other.categoryNoticeList, categoryNoticeList)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(categoryNotice) ^
      const DeepCollectionEquality().hash(categoryNoticeList) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $CategoryNoticeExtension on CategoryNotice {
  CategoryNotice copyWith(
      {int? uid,
      String? categoryNotice,
      String? categoryNoticeList,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return CategoryNotice(
        uid: uid ?? this.uid,
        categoryNotice: categoryNotice ?? this.categoryNotice,
        categoryNoticeList: categoryNoticeList ?? this.categoryNoticeList,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Delivery {
  Delivery({
    required this.uid,
    required this.itemCode,
    this.deliveryTemplate,
    this.deliveryMethod,
    this.deliveryFee0,
    this.deliveryIsland,
    this.deliveryFee1,
    this.deliveryFee2,
    this.placeOfShipment,
    this.refundDeliveryTemplate,
    required this.refundDeliveryMethod,
    required this.refundCourierCompany,
    this.refundDeliveryFee0,
    this.refundDeliveryFee1,
    this.refundAddress,
    this.refundNotice,
    required this.actived,
    required this.activedAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Delivery.fromJson(Map<String, dynamic> json) =>
      _$DeliveryFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'item_code', includeIfNull: false, defaultValue: '')
  final String itemCode;
  @JsonKey(name: 'delivery_template', includeIfNull: false, defaultValue: '')
  final String? deliveryTemplate;
  @JsonKey(name: 'delivery_method', includeIfNull: false, defaultValue: '')
  final String? deliveryMethod;
  @JsonKey(name: 'delivery_fee_0', includeIfNull: false)
  final int? deliveryFee0;
  @JsonKey(name: 'delivery_island', includeIfNull: false, defaultValue: '')
  final String? deliveryIsland;
  @JsonKey(name: 'delivery_fee_1', includeIfNull: false)
  final int? deliveryFee1;
  @JsonKey(name: 'delivery_fee_2', includeIfNull: false)
  final int? deliveryFee2;
  @JsonKey(name: 'place_of_shipment', includeIfNull: false, defaultValue: '')
  final String? placeOfShipment;
  @JsonKey(
      name: 'refund_delivery_template', includeIfNull: false, defaultValue: '')
  final String? refundDeliveryTemplate;
  @JsonKey(
      name: 'refund_delivery_method', includeIfNull: false, defaultValue: '')
  final String refundDeliveryMethod;
  @JsonKey(
      name: 'refund_courier_company', includeIfNull: false, defaultValue: '')
  final String refundCourierCompany;
  @JsonKey(name: 'refund_delivery_fee_0', includeIfNull: false)
  final int? refundDeliveryFee0;
  @JsonKey(name: 'refund_delivery_fee_1', includeIfNull: false)
  final int? refundDeliveryFee1;
  @JsonKey(name: 'refund_address', includeIfNull: false, defaultValue: '')
  final String? refundAddress;
  @JsonKey(name: 'refund_notice', includeIfNull: false, defaultValue: '')
  final String? refundNotice;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$DeliveryFromJson;
  static const toJsonFactory = _$DeliveryToJson;
  Map<String, dynamic> toJson() => _$DeliveryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Delivery &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.itemCode, itemCode) ||
                const DeepCollectionEquality()
                    .equals(other.itemCode, itemCode)) &&
            (identical(other.deliveryTemplate, deliveryTemplate) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryTemplate, deliveryTemplate)) &&
            (identical(other.deliveryMethod, deliveryMethod) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryMethod, deliveryMethod)) &&
            (identical(other.deliveryFee0, deliveryFee0) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryFee0, deliveryFee0)) &&
            (identical(other.deliveryIsland, deliveryIsland) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryIsland, deliveryIsland)) &&
            (identical(other.deliveryFee1, deliveryFee1) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryFee1, deliveryFee1)) &&
            (identical(other.deliveryFee2, deliveryFee2) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryFee2, deliveryFee2)) &&
            (identical(other.placeOfShipment, placeOfShipment) ||
                const DeepCollectionEquality()
                    .equals(other.placeOfShipment, placeOfShipment)) &&
            (identical(other.refundDeliveryTemplate, refundDeliveryTemplate) ||
                const DeepCollectionEquality().equals(
                    other.refundDeliveryTemplate, refundDeliveryTemplate)) &&
            (identical(other.refundDeliveryMethod, refundDeliveryMethod) ||
                const DeepCollectionEquality().equals(
                    other.refundDeliveryMethod, refundDeliveryMethod)) &&
            (identical(other.refundCourierCompany, refundCourierCompany) ||
                const DeepCollectionEquality().equals(
                    other.refundCourierCompany, refundCourierCompany)) &&
            (identical(other.refundDeliveryFee0, refundDeliveryFee0) ||
                const DeepCollectionEquality()
                    .equals(other.refundDeliveryFee0, refundDeliveryFee0)) &&
            (identical(other.refundDeliveryFee1, refundDeliveryFee1) ||
                const DeepCollectionEquality()
                    .equals(other.refundDeliveryFee1, refundDeliveryFee1)) &&
            (identical(other.refundAddress, refundAddress) ||
                const DeepCollectionEquality()
                    .equals(other.refundAddress, refundAddress)) &&
            (identical(other.refundNotice, refundNotice) ||
                const DeepCollectionEquality()
                    .equals(other.refundNotice, refundNotice)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) || const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) || const DeepCollectionEquality().equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) || const DeepCollectionEquality().equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(itemCode) ^
      const DeepCollectionEquality().hash(deliveryTemplate) ^
      const DeepCollectionEquality().hash(deliveryMethod) ^
      const DeepCollectionEquality().hash(deliveryFee0) ^
      const DeepCollectionEquality().hash(deliveryIsland) ^
      const DeepCollectionEquality().hash(deliveryFee1) ^
      const DeepCollectionEquality().hash(deliveryFee2) ^
      const DeepCollectionEquality().hash(placeOfShipment) ^
      const DeepCollectionEquality().hash(refundDeliveryTemplate) ^
      const DeepCollectionEquality().hash(refundDeliveryMethod) ^
      const DeepCollectionEquality().hash(refundCourierCompany) ^
      const DeepCollectionEquality().hash(refundDeliveryFee0) ^
      const DeepCollectionEquality().hash(refundDeliveryFee1) ^
      const DeepCollectionEquality().hash(refundAddress) ^
      const DeepCollectionEquality().hash(refundNotice) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $DeliveryExtension on Delivery {
  Delivery copyWith(
      {int? uid,
      String? itemCode,
      String? deliveryTemplate,
      String? deliveryMethod,
      int? deliveryFee0,
      String? deliveryIsland,
      int? deliveryFee1,
      int? deliveryFee2,
      String? placeOfShipment,
      String? refundDeliveryTemplate,
      String? refundDeliveryMethod,
      String? refundCourierCompany,
      int? refundDeliveryFee0,
      int? refundDeliveryFee1,
      String? refundAddress,
      String? refundNotice,
      bool? actived,
      DateTime? activedAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Delivery(
        uid: uid ?? this.uid,
        itemCode: itemCode ?? this.itemCode,
        deliveryTemplate: deliveryTemplate ?? this.deliveryTemplate,
        deliveryMethod: deliveryMethod ?? this.deliveryMethod,
        deliveryFee0: deliveryFee0 ?? this.deliveryFee0,
        deliveryIsland: deliveryIsland ?? this.deliveryIsland,
        deliveryFee1: deliveryFee1 ?? this.deliveryFee1,
        deliveryFee2: deliveryFee2 ?? this.deliveryFee2,
        placeOfShipment: placeOfShipment ?? this.placeOfShipment,
        refundDeliveryTemplate:
            refundDeliveryTemplate ?? this.refundDeliveryTemplate,
        refundDeliveryMethod: refundDeliveryMethod ?? this.refundDeliveryMethod,
        refundCourierCompany: refundCourierCompany ?? this.refundCourierCompany,
        refundDeliveryFee0: refundDeliveryFee0 ?? this.refundDeliveryFee0,
        refundDeliveryFee1: refundDeliveryFee1 ?? this.refundDeliveryFee1,
        refundAddress: refundAddress ?? this.refundAddress,
        refundNotice: refundNotice ?? this.refundNotice,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Inventory {
  Inventory({
    required this.uid,
    required this.storeId,
    required this.account,
    required this.itemStatus,
    required this.itemCode,
    required this.itemName,
    required this.itemPrice,
    required this.itemDiscountPrice,
    required this.itemDescribed,
    this.itemDetail,
    required this.itemTotalCount,
    required this.itemSoldCount,
    required this.itemCategory0,
    required this.itemCategory1,
    required this.itemCategory2,
    this.itemNotice,
    this.itemNoticeDetail,
    this.optionList0,
    this.optionList1,
    required this.handmadeItem,
    this.handmadePeriod,
    required this.salesStartAt,
    required this.salesEndAt,
    required this.actived,
    required this.activedAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Inventory.fromJson(Map<String, dynamic> json) =>
      _$InventoryFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'store_id', includeIfNull: false)
  final int storeId;
  @JsonKey(name: 'account', includeIfNull: false, defaultValue: '')
  final String account;
  @JsonKey(name: 'item_status', includeIfNull: false, defaultValue: '')
  final String itemStatus;
  @JsonKey(name: 'item_code', includeIfNull: false, defaultValue: '')
  final String itemCode;
  @JsonKey(name: 'item_name', includeIfNull: false, defaultValue: '')
  final String itemName;
  @JsonKey(name: 'item_price', includeIfNull: false)
  final int itemPrice;
  @JsonKey(name: 'item_discount_price', includeIfNull: false)
  final int itemDiscountPrice;
  @JsonKey(name: 'item_described', includeIfNull: false, defaultValue: '')
  final String itemDescribed;
  @JsonKey(name: 'item_detail', includeIfNull: false, defaultValue: '')
  final String? itemDetail;
  @JsonKey(name: 'item_total_count', includeIfNull: false)
  final int itemTotalCount;
  @JsonKey(name: 'item_sold_count', includeIfNull: false)
  final int itemSoldCount;
  @JsonKey(name: 'item_category_0', includeIfNull: false, defaultValue: '')
  final String itemCategory0;
  @JsonKey(name: 'item_category_1', includeIfNull: false, defaultValue: '')
  final String itemCategory1;
  @JsonKey(name: 'item_category_2', includeIfNull: false, defaultValue: '')
  final String itemCategory2;
  @JsonKey(name: 'item_notice', includeIfNull: false, defaultValue: '')
  final String? itemNotice;
  @JsonKey(name: 'item_notice_detail', includeIfNull: false, defaultValue: '')
  final String? itemNoticeDetail;
  @JsonKey(name: 'option_list0', includeIfNull: false, defaultValue: '')
  final String? optionList0;
  @JsonKey(name: 'option_list1', includeIfNull: false, defaultValue: '')
  final String? optionList1;
  @JsonKey(name: 'handmade_item', includeIfNull: false, defaultValue: '')
  final String handmadeItem;
  @JsonKey(name: 'handmade_period', includeIfNull: false, defaultValue: '')
  final String? handmadePeriod;
  @JsonKey(name: 'sales_start_at', includeIfNull: false)
  final DateTime salesStartAt;
  @JsonKey(name: 'sales_end_at', includeIfNull: false)
  final DateTime salesEndAt;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$InventoryFromJson;
  static const toJsonFactory = _$InventoryToJson;
  Map<String, dynamic> toJson() => _$InventoryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Inventory &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality()
                    .equals(other.storeId, storeId)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.itemStatus, itemStatus) ||
                const DeepCollectionEquality()
                    .equals(other.itemStatus, itemStatus)) &&
            (identical(other.itemCode, itemCode) ||
                const DeepCollectionEquality()
                    .equals(other.itemCode, itemCode)) &&
            (identical(other.itemName, itemName) ||
                const DeepCollectionEquality()
                    .equals(other.itemName, itemName)) &&
            (identical(other.itemPrice, itemPrice) ||
                const DeepCollectionEquality()
                    .equals(other.itemPrice, itemPrice)) &&
            (identical(other.itemDiscountPrice, itemDiscountPrice) ||
                const DeepCollectionEquality()
                    .equals(other.itemDiscountPrice, itemDiscountPrice)) &&
            (identical(other.itemDescribed, itemDescribed) ||
                const DeepCollectionEquality()
                    .equals(other.itemDescribed, itemDescribed)) &&
            (identical(other.itemDetail, itemDetail) ||
                const DeepCollectionEquality()
                    .equals(other.itemDetail, itemDetail)) &&
            (identical(other.itemTotalCount, itemTotalCount) ||
                const DeepCollectionEquality()
                    .equals(other.itemTotalCount, itemTotalCount)) &&
            (identical(other.itemSoldCount, itemSoldCount) ||
                const DeepCollectionEquality()
                    .equals(other.itemSoldCount, itemSoldCount)) &&
            (identical(other.itemCategory0, itemCategory0) ||
                const DeepCollectionEquality()
                    .equals(other.itemCategory0, itemCategory0)) &&
            (identical(other.itemCategory1, itemCategory1) ||
                const DeepCollectionEquality()
                    .equals(other.itemCategory1, itemCategory1)) &&
            (identical(other.itemCategory2, itemCategory2) ||
                const DeepCollectionEquality()
                    .equals(other.itemCategory2, itemCategory2)) &&
            (identical(other.itemNotice, itemNotice) ||
                const DeepCollectionEquality()
                    .equals(other.itemNotice, itemNotice)) &&
            (identical(other.itemNoticeDetail, itemNoticeDetail) ||
                const DeepCollectionEquality()
                    .equals(other.itemNoticeDetail, itemNoticeDetail)) &&
            (identical(other.optionList0, optionList0) ||
                const DeepCollectionEquality()
                    .equals(other.optionList0, optionList0)) &&
            (identical(other.optionList1, optionList1) ||
                const DeepCollectionEquality()
                    .equals(other.optionList1, optionList1)) &&
            (identical(other.handmadeItem, handmadeItem) ||
                const DeepCollectionEquality()
                    .equals(other.handmadeItem, handmadeItem)) &&
            (identical(other.handmadePeriod, handmadePeriod) ||
                const DeepCollectionEquality()
                    .equals(other.handmadePeriod, handmadePeriod)) &&
            (identical(other.salesStartAt, salesStartAt) ||
                const DeepCollectionEquality()
                    .equals(other.salesStartAt, salesStartAt)) &&
            (identical(other.salesEndAt, salesEndAt) || const DeepCollectionEquality().equals(other.salesEndAt, salesEndAt)) &&
            (identical(other.actived, actived) || const DeepCollectionEquality().equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) || const DeepCollectionEquality().equals(other.activedAt, activedAt)) &&
            (identical(other.extras, extras) || const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) || const DeepCollectionEquality().equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) || const DeepCollectionEquality().equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) || const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) || const DeepCollectionEquality().equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) || const DeepCollectionEquality().equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(storeId) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(itemStatus) ^
      const DeepCollectionEquality().hash(itemCode) ^
      const DeepCollectionEquality().hash(itemName) ^
      const DeepCollectionEquality().hash(itemPrice) ^
      const DeepCollectionEquality().hash(itemDiscountPrice) ^
      const DeepCollectionEquality().hash(itemDescribed) ^
      const DeepCollectionEquality().hash(itemDetail) ^
      const DeepCollectionEquality().hash(itemTotalCount) ^
      const DeepCollectionEquality().hash(itemSoldCount) ^
      const DeepCollectionEquality().hash(itemCategory0) ^
      const DeepCollectionEquality().hash(itemCategory1) ^
      const DeepCollectionEquality().hash(itemCategory2) ^
      const DeepCollectionEquality().hash(itemNotice) ^
      const DeepCollectionEquality().hash(itemNoticeDetail) ^
      const DeepCollectionEquality().hash(optionList0) ^
      const DeepCollectionEquality().hash(optionList1) ^
      const DeepCollectionEquality().hash(handmadeItem) ^
      const DeepCollectionEquality().hash(handmadePeriod) ^
      const DeepCollectionEquality().hash(salesStartAt) ^
      const DeepCollectionEquality().hash(salesEndAt) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $InventoryExtension on Inventory {
  Inventory copyWith(
      {int? uid,
      int? storeId,
      String? account,
      String? itemStatus,
      String? itemCode,
      String? itemName,
      int? itemPrice,
      int? itemDiscountPrice,
      String? itemDescribed,
      String? itemDetail,
      int? itemTotalCount,
      int? itemSoldCount,
      String? itemCategory0,
      String? itemCategory1,
      String? itemCategory2,
      String? itemNotice,
      String? itemNoticeDetail,
      String? optionList0,
      String? optionList1,
      String? handmadeItem,
      String? handmadePeriod,
      DateTime? salesStartAt,
      DateTime? salesEndAt,
      bool? actived,
      DateTime? activedAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Inventory(
        uid: uid ?? this.uid,
        storeId: storeId ?? this.storeId,
        account: account ?? this.account,
        itemStatus: itemStatus ?? this.itemStatus,
        itemCode: itemCode ?? this.itemCode,
        itemName: itemName ?? this.itemName,
        itemPrice: itemPrice ?? this.itemPrice,
        itemDiscountPrice: itemDiscountPrice ?? this.itemDiscountPrice,
        itemDescribed: itemDescribed ?? this.itemDescribed,
        itemDetail: itemDetail ?? this.itemDetail,
        itemTotalCount: itemTotalCount ?? this.itemTotalCount,
        itemSoldCount: itemSoldCount ?? this.itemSoldCount,
        itemCategory0: itemCategory0 ?? this.itemCategory0,
        itemCategory1: itemCategory1 ?? this.itemCategory1,
        itemCategory2: itemCategory2 ?? this.itemCategory2,
        itemNotice: itemNotice ?? this.itemNotice,
        itemNoticeDetail: itemNoticeDetail ?? this.itemNoticeDetail,
        optionList0: optionList0 ?? this.optionList0,
        optionList1: optionList1 ?? this.optionList1,
        handmadeItem: handmadeItem ?? this.handmadeItem,
        handmadePeriod: handmadePeriod ?? this.handmadePeriod,
        salesStartAt: salesStartAt ?? this.salesStartAt,
        salesEndAt: salesEndAt ?? this.salesEndAt,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Options {
  Options({
    required this.uid,
    required this.itemCode,
    required this.optionType,
    this.optionTemplate,
    this.optionName,
    this.optionValue,
    this.optionPrice,
    this.optionCount,
    this.baseOption,
    this.questionOption,
    required this.actived,
    required this.activedAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Options.fromJson(Map<String, dynamic> json) =>
      _$OptionsFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'item_code', includeIfNull: false, defaultValue: '')
  final String itemCode;
  @JsonKey(name: 'option_type', includeIfNull: false, defaultValue: '')
  final String optionType;
  @JsonKey(name: 'option_template', includeIfNull: false, defaultValue: '')
  final String? optionTemplate;
  @JsonKey(name: 'option_name', includeIfNull: false, defaultValue: '')
  final String? optionName;
  @JsonKey(name: 'option_value', includeIfNull: false, defaultValue: '')
  final String? optionValue;
  @JsonKey(name: 'option_price', includeIfNull: false)
  final int? optionPrice;
  @JsonKey(name: 'option_count', includeIfNull: false)
  final int? optionCount;
  @JsonKey(name: 'base_option', includeIfNull: false, defaultValue: '')
  final String? baseOption;
  @JsonKey(name: 'question_option', includeIfNull: false, defaultValue: '')
  final String? questionOption;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$OptionsFromJson;
  static const toJsonFactory = _$OptionsToJson;
  Map<String, dynamic> toJson() => _$OptionsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Options &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.itemCode, itemCode) ||
                const DeepCollectionEquality()
                    .equals(other.itemCode, itemCode)) &&
            (identical(other.optionType, optionType) ||
                const DeepCollectionEquality()
                    .equals(other.optionType, optionType)) &&
            (identical(other.optionTemplate, optionTemplate) ||
                const DeepCollectionEquality()
                    .equals(other.optionTemplate, optionTemplate)) &&
            (identical(other.optionName, optionName) ||
                const DeepCollectionEquality()
                    .equals(other.optionName, optionName)) &&
            (identical(other.optionValue, optionValue) ||
                const DeepCollectionEquality()
                    .equals(other.optionValue, optionValue)) &&
            (identical(other.optionPrice, optionPrice) ||
                const DeepCollectionEquality()
                    .equals(other.optionPrice, optionPrice)) &&
            (identical(other.optionCount, optionCount) ||
                const DeepCollectionEquality()
                    .equals(other.optionCount, optionCount)) &&
            (identical(other.baseOption, baseOption) ||
                const DeepCollectionEquality()
                    .equals(other.baseOption, baseOption)) &&
            (identical(other.questionOption, questionOption) ||
                const DeepCollectionEquality()
                    .equals(other.questionOption, questionOption)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(itemCode) ^
      const DeepCollectionEquality().hash(optionType) ^
      const DeepCollectionEquality().hash(optionTemplate) ^
      const DeepCollectionEquality().hash(optionName) ^
      const DeepCollectionEquality().hash(optionValue) ^
      const DeepCollectionEquality().hash(optionPrice) ^
      const DeepCollectionEquality().hash(optionCount) ^
      const DeepCollectionEquality().hash(baseOption) ^
      const DeepCollectionEquality().hash(questionOption) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $OptionsExtension on Options {
  Options copyWith(
      {int? uid,
      String? itemCode,
      String? optionType,
      String? optionTemplate,
      String? optionName,
      String? optionValue,
      int? optionPrice,
      int? optionCount,
      String? baseOption,
      String? questionOption,
      bool? actived,
      DateTime? activedAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Options(
        uid: uid ?? this.uid,
        itemCode: itemCode ?? this.itemCode,
        optionType: optionType ?? this.optionType,
        optionTemplate: optionTemplate ?? this.optionTemplate,
        optionName: optionName ?? this.optionName,
        optionValue: optionValue ?? this.optionValue,
        optionPrice: optionPrice ?? this.optionPrice,
        optionCount: optionCount ?? this.optionCount,
        baseOption: baseOption ?? this.baseOption,
        questionOption: questionOption ?? this.questionOption,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Tags {
  Tags({
    required this.uid,
    required this.itemCode,
    this.tag0,
    this.tag1,
    this.tag2,
    this.tag3,
    this.tag4,
    this.tag5,
    this.tag6,
    this.tag7,
    this.tag8,
    this.tag9,
    required this.actived,
    required this.activedAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'item_code', includeIfNull: false, defaultValue: '')
  final String itemCode;
  @JsonKey(name: 'tag_0', includeIfNull: false, defaultValue: '')
  final String? tag0;
  @JsonKey(name: 'tag_1', includeIfNull: false, defaultValue: '')
  final String? tag1;
  @JsonKey(name: 'tag_2', includeIfNull: false, defaultValue: '')
  final String? tag2;
  @JsonKey(name: 'tag_3', includeIfNull: false, defaultValue: '')
  final String? tag3;
  @JsonKey(name: 'tag_4', includeIfNull: false, defaultValue: '')
  final String? tag4;
  @JsonKey(name: 'tag_5', includeIfNull: false, defaultValue: '')
  final String? tag5;
  @JsonKey(name: 'tag_6', includeIfNull: false, defaultValue: '')
  final String? tag6;
  @JsonKey(name: 'tag_7', includeIfNull: false, defaultValue: '')
  final String? tag7;
  @JsonKey(name: 'tag_8', includeIfNull: false, defaultValue: '')
  final String? tag8;
  @JsonKey(name: 'tag_9', includeIfNull: false, defaultValue: '')
  final String? tag9;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$TagsFromJson;
  static const toJsonFactory = _$TagsToJson;
  Map<String, dynamic> toJson() => _$TagsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Tags &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.itemCode, itemCode) ||
                const DeepCollectionEquality()
                    .equals(other.itemCode, itemCode)) &&
            (identical(other.tag0, tag0) ||
                const DeepCollectionEquality().equals(other.tag0, tag0)) &&
            (identical(other.tag1, tag1) ||
                const DeepCollectionEquality().equals(other.tag1, tag1)) &&
            (identical(other.tag2, tag2) ||
                const DeepCollectionEquality().equals(other.tag2, tag2)) &&
            (identical(other.tag3, tag3) ||
                const DeepCollectionEquality().equals(other.tag3, tag3)) &&
            (identical(other.tag4, tag4) ||
                const DeepCollectionEquality().equals(other.tag4, tag4)) &&
            (identical(other.tag5, tag5) ||
                const DeepCollectionEquality().equals(other.tag5, tag5)) &&
            (identical(other.tag6, tag6) ||
                const DeepCollectionEquality().equals(other.tag6, tag6)) &&
            (identical(other.tag7, tag7) ||
                const DeepCollectionEquality().equals(other.tag7, tag7)) &&
            (identical(other.tag8, tag8) ||
                const DeepCollectionEquality().equals(other.tag8, tag8)) &&
            (identical(other.tag9, tag9) ||
                const DeepCollectionEquality().equals(other.tag9, tag9)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(itemCode) ^
      const DeepCollectionEquality().hash(tag0) ^
      const DeepCollectionEquality().hash(tag1) ^
      const DeepCollectionEquality().hash(tag2) ^
      const DeepCollectionEquality().hash(tag3) ^
      const DeepCollectionEquality().hash(tag4) ^
      const DeepCollectionEquality().hash(tag5) ^
      const DeepCollectionEquality().hash(tag6) ^
      const DeepCollectionEquality().hash(tag7) ^
      const DeepCollectionEquality().hash(tag8) ^
      const DeepCollectionEquality().hash(tag9) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $TagsExtension on Tags {
  Tags copyWith(
      {int? uid,
      String? itemCode,
      String? tag0,
      String? tag1,
      String? tag2,
      String? tag3,
      String? tag4,
      String? tag5,
      String? tag6,
      String? tag7,
      String? tag8,
      String? tag9,
      bool? actived,
      DateTime? activedAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Tags(
        uid: uid ?? this.uid,
        itemCode: itemCode ?? this.itemCode,
        tag0: tag0 ?? this.tag0,
        tag1: tag1 ?? this.tag1,
        tag2: tag2 ?? this.tag2,
        tag3: tag3 ?? this.tag3,
        tag4: tag4 ?? this.tag4,
        tag5: tag5 ?? this.tag5,
        tag6: tag6 ?? this.tag6,
        tag7: tag7 ?? this.tag7,
        tag8: tag8 ?? this.tag8,
        tag9: tag9 ?? this.tag9,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Messages {
  Messages({
    required this.uid,
    required this.channelId,
    this.message,
    this.images,
    this.links,
    this.userId,
    this.userName,
    this.userEmail,
    this.profileImage,
    required this.actived,
    required this.activedAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Messages.fromJson(Map<String, dynamic> json) =>
      _$MessagesFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'channel_id', includeIfNull: false, defaultValue: '')
  final String channelId;
  @JsonKey(name: 'message', includeIfNull: false)
  final Object? message;
  @JsonKey(name: 'images', includeIfNull: false)
  final Object? images;
  @JsonKey(name: 'links', includeIfNull: false)
  final Object? links;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int? userId;
  @JsonKey(name: 'user_name', includeIfNull: false, defaultValue: '')
  final String? userName;
  @JsonKey(name: 'user_email', includeIfNull: false, defaultValue: '')
  final String? userEmail;
  @JsonKey(name: 'profile_image', includeIfNull: false, defaultValue: '')
  final String? profileImage;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$MessagesFromJson;
  static const toJsonFactory = _$MessagesToJson;
  Map<String, dynamic> toJson() => _$MessagesToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Messages &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.links, links) ||
                const DeepCollectionEquality().equals(other.links, links)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)) &&
            (identical(other.profileImage, profileImage) ||
                const DeepCollectionEquality()
                    .equals(other.profileImage, profileImage)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(channelId) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(links) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userEmail) ^
      const DeepCollectionEquality().hash(profileImage) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $MessagesExtension on Messages {
  Messages copyWith(
      {int? uid,
      String? channelId,
      Object? message,
      Object? images,
      Object? links,
      int? userId,
      String? userName,
      String? userEmail,
      String? profileImage,
      bool? actived,
      DateTime? activedAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Messages(
        uid: uid ?? this.uid,
        channelId: channelId ?? this.channelId,
        message: message ?? this.message,
        images: images ?? this.images,
        links: links ?? this.links,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        userEmail: userEmail ?? this.userEmail,
        profileImage: profileImage ?? this.profileImage,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Cart {
  Cart({
    required this.uid,
    this.userId,
    this.inventoryId,
    this.optionId,
    required this.itemCode,
    required this.count,
    this.orginalPrice,
    this.optionPrice,
    this.discountPrice,
    this.paymentPrice,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int? userId;
  @JsonKey(name: 'inventory_id', includeIfNull: false)
  final int? inventoryId;
  @JsonKey(name: 'option_id', includeIfNull: false)
  final int? optionId;
  @JsonKey(name: 'item_code', includeIfNull: false, defaultValue: '')
  final String itemCode;
  @JsonKey(name: 'count', includeIfNull: false)
  final int count;
  @JsonKey(name: 'orginal_price', includeIfNull: false)
  final double? orginalPrice;
  @JsonKey(name: 'option_price', includeIfNull: false)
  final double? optionPrice;
  @JsonKey(name: 'discount_price', includeIfNull: false)
  final double? discountPrice;
  @JsonKey(name: 'payment_price', includeIfNull: false)
  final double? paymentPrice;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  static const fromJsonFactory = _$CartFromJson;
  static const toJsonFactory = _$CartToJson;
  Map<String, dynamic> toJson() => _$CartToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Cart &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.inventoryId, inventoryId) ||
                const DeepCollectionEquality()
                    .equals(other.inventoryId, inventoryId)) &&
            (identical(other.optionId, optionId) ||
                const DeepCollectionEquality()
                    .equals(other.optionId, optionId)) &&
            (identical(other.itemCode, itemCode) ||
                const DeepCollectionEquality()
                    .equals(other.itemCode, itemCode)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.orginalPrice, orginalPrice) ||
                const DeepCollectionEquality()
                    .equals(other.orginalPrice, orginalPrice)) &&
            (identical(other.optionPrice, optionPrice) ||
                const DeepCollectionEquality()
                    .equals(other.optionPrice, optionPrice)) &&
            (identical(other.discountPrice, discountPrice) ||
                const DeepCollectionEquality()
                    .equals(other.discountPrice, discountPrice)) &&
            (identical(other.paymentPrice, paymentPrice) ||
                const DeepCollectionEquality()
                    .equals(other.paymentPrice, paymentPrice)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(inventoryId) ^
      const DeepCollectionEquality().hash(optionId) ^
      const DeepCollectionEquality().hash(itemCode) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(orginalPrice) ^
      const DeepCollectionEquality().hash(optionPrice) ^
      const DeepCollectionEquality().hash(discountPrice) ^
      const DeepCollectionEquality().hash(paymentPrice) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $CartExtension on Cart {
  Cart copyWith(
      {int? uid,
      int? userId,
      int? inventoryId,
      int? optionId,
      String? itemCode,
      int? count,
      double? orginalPrice,
      double? optionPrice,
      double? discountPrice,
      double? paymentPrice,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return Cart(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        inventoryId: inventoryId ?? this.inventoryId,
        optionId: optionId ?? this.optionId,
        itemCode: itemCode ?? this.itemCode,
        count: count ?? this.count,
        orginalPrice: orginalPrice ?? this.orginalPrice,
        optionPrice: optionPrice ?? this.optionPrice,
        discountPrice: discountPrice ?? this.discountPrice,
        paymentPrice: paymentPrice ?? this.paymentPrice,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Orders {
  Orders({
    required this.uid,
    required this.userId,
    required this.consignorId,
    required this.orderKey,
    required this.orderType,
    this.orderProvider,
    this.orderNumber,
    this.orderContent,
    required this.orderedAt,
    required this.goodsCount,
    this.goodsContent,
    this.ordererName,
    this.ordererAccount,
    this.ordererPhone,
    this.ordererPhoneSafe,
    this.ordererAddress,
    this.ordererAddressDetail,
    this.ordererAddressPostalCode,
    this.receiverName,
    this.receiverAccount,
    this.receiverPhone,
    this.receiverPhoneSafe,
    this.receiverAddress,
    this.receiverAddressDetail,
    this.receiverAddressPostalCode,
    this.priceUnit,
    this.priceExchange,
    this.priceShipping,
    this.priceShippingRemoted,
    this.priceShippingDiscount,
    this.taxPrice,
    this.totalPaymentPrice,
    this.paidAt,
    this.shippingPersonalCode,
    this.shippingOrdererSsn,
    this.shippingOrdererPhone,
    this.extras,
    required this.status,
    this.deliveryType,
    this.deliveryLoadSize,
    this.deliveryPrintMessage,
    this.deliveryRemoted,
    this.deliverySplited,
    this.deliverySplitable,
    this.deliveryCompanyCode,
    this.deliveryCompanyName,
    this.deliveryInvoiceNumber,
    this.deliveryExpiredAt,
    this.cancelReason,
    this.canceledAt,
    required this.createdAt,
    required this.updatedAt,
    this.progressedAt,
    this.deliveredAt,
    this.cancelReqAt,
    this.cancelReqUserName,
    this.cancelReqUserAccount,
    this.cancelConfirmUserName,
    this.cancelConfirmUserAccount,
    this.cancelConfirmedAt,
    this.returnReqAt,
    this.returnReqUserName,
    this.returnReqUserAccount,
    this.returnConfirmUserName,
    this.returnConfirmUserAccount,
    this.returnConfirmedAt,
    this.exchangeReqAt,
    this.exchangeReqUserName,
    this.exchangeReqUserAccount,
    this.exchangeConfirmUserName,
    this.exchangeConfirmUserAccount,
    this.exchangeConfirmedAt,
  });

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int userId;
  @JsonKey(name: 'consignor_id', includeIfNull: false)
  final int consignorId;
  @JsonKey(name: 'order_key', includeIfNull: false, defaultValue: '')
  final String orderKey;
  @JsonKey(name: 'order_type', includeIfNull: false, defaultValue: '')
  final String orderType;
  @JsonKey(name: 'order_provider', includeIfNull: false, defaultValue: '')
  final String? orderProvider;
  @JsonKey(name: 'order_number', includeIfNull: false, defaultValue: '')
  final String? orderNumber;
  @JsonKey(name: 'order_content', includeIfNull: false)
  final Object? orderContent;
  @JsonKey(name: 'ordered_at', includeIfNull: false)
  final DateTime orderedAt;
  @JsonKey(name: 'goods_count', includeIfNull: false)
  final int goodsCount;
  @JsonKey(name: 'goods_content', includeIfNull: false)
  final Object? goodsContent;
  @JsonKey(name: 'orderer_name', includeIfNull: false, defaultValue: '')
  final String? ordererName;
  @JsonKey(name: 'orderer_account', includeIfNull: false, defaultValue: '')
  final String? ordererAccount;
  @JsonKey(name: 'orderer_phone', includeIfNull: false, defaultValue: '')
  final String? ordererPhone;
  @JsonKey(name: 'orderer_phone_safe', includeIfNull: false, defaultValue: '')
  final String? ordererPhoneSafe;
  @JsonKey(name: 'orderer_address', includeIfNull: false, defaultValue: '')
  final String? ordererAddress;
  @JsonKey(
      name: 'orderer_address_detail', includeIfNull: false, defaultValue: '')
  final String? ordererAddressDetail;
  @JsonKey(
      name: 'orderer_address_postal_code',
      includeIfNull: false,
      defaultValue: '')
  final String? ordererAddressPostalCode;
  @JsonKey(name: 'receiver_name', includeIfNull: false, defaultValue: '')
  final String? receiverName;
  @JsonKey(name: 'receiver_account', includeIfNull: false, defaultValue: '')
  final String? receiverAccount;
  @JsonKey(name: 'receiver_phone', includeIfNull: false, defaultValue: '')
  final String? receiverPhone;
  @JsonKey(name: 'receiver_phone_safe', includeIfNull: false, defaultValue: '')
  final String? receiverPhoneSafe;
  @JsonKey(name: 'receiver_address', includeIfNull: false, defaultValue: '')
  final String? receiverAddress;
  @JsonKey(
      name: 'receiver_address_detail', includeIfNull: false, defaultValue: '')
  final String? receiverAddressDetail;
  @JsonKey(
      name: 'receiver_address_postal_code',
      includeIfNull: false,
      defaultValue: '')
  final String? receiverAddressPostalCode;
  @JsonKey(name: 'price_unit', includeIfNull: false, defaultValue: '')
  final String? priceUnit;
  @JsonKey(name: 'price_exchange', includeIfNull: false)
  final double? priceExchange;
  @JsonKey(name: 'price_shipping', includeIfNull: false)
  final double? priceShipping;
  @JsonKey(name: 'price_shipping_remoted', includeIfNull: false)
  final double? priceShippingRemoted;
  @JsonKey(name: 'price_shipping_discount', includeIfNull: false)
  final double? priceShippingDiscount;
  @JsonKey(name: 'tax_price', includeIfNull: false)
  final double? taxPrice;
  @JsonKey(name: 'total_payment_price', includeIfNull: false)
  final double? totalPaymentPrice;
  @JsonKey(name: 'paid_at', includeIfNull: false)
  final DateTime? paidAt;
  @JsonKey(
      name: 'shipping_personal_code', includeIfNull: false, defaultValue: '')
  final String? shippingPersonalCode;
  @JsonKey(name: 'shipping_orderer_ssn', includeIfNull: false, defaultValue: '')
  final String? shippingOrdererSsn;
  @JsonKey(
      name: 'shipping_orderer_phone', includeIfNull: false, defaultValue: '')
  final String? shippingOrdererPhone;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'status', includeIfNull: false, defaultValue: '')
  final String status;
  @JsonKey(name: 'delivery_type', includeIfNull: false, defaultValue: '')
  final String? deliveryType;
  @JsonKey(name: 'delivery_load_size', includeIfNull: false, defaultValue: '')
  final String? deliveryLoadSize;
  @JsonKey(
      name: 'delivery_print_message', includeIfNull: false, defaultValue: '')
  final String? deliveryPrintMessage;
  @JsonKey(name: 'delivery_remoted', includeIfNull: false)
  final bool? deliveryRemoted;
  @JsonKey(name: 'delivery_splited', includeIfNull: false)
  final bool? deliverySplited;
  @JsonKey(name: 'delivery_splitable', includeIfNull: false)
  final bool? deliverySplitable;
  @JsonKey(
      name: 'delivery_company_code', includeIfNull: false, defaultValue: '')
  final String? deliveryCompanyCode;
  @JsonKey(
      name: 'delivery_company_name', includeIfNull: false, defaultValue: '')
  final String? deliveryCompanyName;
  @JsonKey(
      name: 'delivery_invoice_number', includeIfNull: false, defaultValue: '')
  final String? deliveryInvoiceNumber;
  @JsonKey(name: 'delivery_expired_at', includeIfNull: false)
  final DateTime? deliveryExpiredAt;
  @JsonKey(name: 'cancel_reason', includeIfNull: false, defaultValue: '')
  final String? cancelReason;
  @JsonKey(name: 'canceled_at', includeIfNull: false)
  final DateTime? canceledAt;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'progressed_at', includeIfNull: false)
  final DateTime? progressedAt;
  @JsonKey(name: 'delivered_at', includeIfNull: false)
  final DateTime? deliveredAt;
  @JsonKey(name: 'cancel_req_at', includeIfNull: false)
  final DateTime? cancelReqAt;
  @JsonKey(name: 'cancel_req_user_name', includeIfNull: false, defaultValue: '')
  final String? cancelReqUserName;
  @JsonKey(
      name: 'cancel_req_user_account', includeIfNull: false, defaultValue: '')
  final String? cancelReqUserAccount;
  @JsonKey(
      name: 'cancel_confirm_user_name', includeIfNull: false, defaultValue: '')
  final String? cancelConfirmUserName;
  @JsonKey(
      name: 'cancel_confirm_user_account',
      includeIfNull: false,
      defaultValue: '')
  final String? cancelConfirmUserAccount;
  @JsonKey(name: 'cancel_confirmed_at', includeIfNull: false)
  final DateTime? cancelConfirmedAt;
  @JsonKey(name: 'return_req_at', includeIfNull: false)
  final DateTime? returnReqAt;
  @JsonKey(name: 'return_req_user_name', includeIfNull: false, defaultValue: '')
  final String? returnReqUserName;
  @JsonKey(
      name: 'return_req_user_account', includeIfNull: false, defaultValue: '')
  final String? returnReqUserAccount;
  @JsonKey(
      name: 'return_confirm_user_name', includeIfNull: false, defaultValue: '')
  final String? returnConfirmUserName;
  @JsonKey(
      name: 'return_confirm_user_account',
      includeIfNull: false,
      defaultValue: '')
  final String? returnConfirmUserAccount;
  @JsonKey(name: 'return_confirmed_at', includeIfNull: false)
  final DateTime? returnConfirmedAt;
  @JsonKey(name: 'exchange_req_at', includeIfNull: false)
  final DateTime? exchangeReqAt;
  @JsonKey(
      name: 'exchange_req_user_name', includeIfNull: false, defaultValue: '')
  final String? exchangeReqUserName;
  @JsonKey(
      name: 'exchange_req_user_account', includeIfNull: false, defaultValue: '')
  final String? exchangeReqUserAccount;
  @JsonKey(
      name: 'exchange_confirm_user_name',
      includeIfNull: false,
      defaultValue: '')
  final String? exchangeConfirmUserName;
  @JsonKey(
      name: 'exchange_confirm_user_account',
      includeIfNull: false,
      defaultValue: '')
  final String? exchangeConfirmUserAccount;
  @JsonKey(name: 'exchange_confirmed_at', includeIfNull: false)
  final DateTime? exchangeConfirmedAt;
  static const fromJsonFactory = _$OrdersFromJson;
  static const toJsonFactory = _$OrdersToJson;
  Map<String, dynamic> toJson() => _$OrdersToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Orders &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.consignorId, consignorId) ||
                const DeepCollectionEquality()
                    .equals(other.consignorId, consignorId)) &&
            (identical(other.orderKey, orderKey) ||
                const DeepCollectionEquality()
                    .equals(other.orderKey, orderKey)) &&
            (identical(other.orderType, orderType) ||
                const DeepCollectionEquality()
                    .equals(other.orderType, orderType)) &&
            (identical(other.orderProvider, orderProvider) ||
                const DeepCollectionEquality()
                    .equals(other.orderProvider, orderProvider)) &&
            (identical(other.orderNumber, orderNumber) ||
                const DeepCollectionEquality()
                    .equals(other.orderNumber, orderNumber)) &&
            (identical(other.orderContent, orderContent) ||
                const DeepCollectionEquality()
                    .equals(other.orderContent, orderContent)) &&
            (identical(other.orderedAt, orderedAt) ||
                const DeepCollectionEquality()
                    .equals(other.orderedAt, orderedAt)) &&
            (identical(other.goodsCount, goodsCount) ||
                const DeepCollectionEquality()
                    .equals(other.goodsCount, goodsCount)) &&
            (identical(other.goodsContent, goodsContent) ||
                const DeepCollectionEquality()
                    .equals(other.goodsContent, goodsContent)) &&
            (identical(other.ordererName, ordererName) ||
                const DeepCollectionEquality()
                    .equals(other.ordererName, ordererName)) &&
            (identical(other.ordererAccount, ordererAccount) ||
                const DeepCollectionEquality()
                    .equals(other.ordererAccount, ordererAccount)) &&
            (identical(other.ordererPhone, ordererPhone) ||
                const DeepCollectionEquality()
                    .equals(other.ordererPhone, ordererPhone)) &&
            (identical(other.ordererPhoneSafe, ordererPhoneSafe) ||
                const DeepCollectionEquality()
                    .equals(other.ordererPhoneSafe, ordererPhoneSafe)) &&
            (identical(other.ordererAddress, ordererAddress) ||
                const DeepCollectionEquality()
                    .equals(other.ordererAddress, ordererAddress)) &&
            (identical(other.ordererAddressDetail, ordererAddressDetail) ||
                const DeepCollectionEquality().equals(
                    other.ordererAddressDetail, ordererAddressDetail)) &&
            (identical(other.ordererAddressPostalCode, ordererAddressPostalCode) ||
                const DeepCollectionEquality().equals(
                    other.ordererAddressPostalCode,
                    ordererAddressPostalCode)) &&
            (identical(other.receiverName, receiverName) ||
                const DeepCollectionEquality()
                    .equals(other.receiverName, receiverName)) &&
            (identical(other.receiverAccount, receiverAccount) ||
                const DeepCollectionEquality()
                    .equals(other.receiverAccount, receiverAccount)) &&
            (identical(other.receiverPhone, receiverPhone) ||
                const DeepCollectionEquality()
                    .equals(other.receiverPhone, receiverPhone)) &&
            (identical(other.receiverPhoneSafe, receiverPhoneSafe) ||
                const DeepCollectionEquality().equals(other.receiverPhoneSafe, receiverPhoneSafe)) &&
            (identical(other.receiverAddress, receiverAddress) || const DeepCollectionEquality().equals(other.receiverAddress, receiverAddress)) &&
            (identical(other.receiverAddressDetail, receiverAddressDetail) || const DeepCollectionEquality().equals(other.receiverAddressDetail, receiverAddressDetail)) &&
            (identical(other.receiverAddressPostalCode, receiverAddressPostalCode) || const DeepCollectionEquality().equals(other.receiverAddressPostalCode, receiverAddressPostalCode)) &&
            (identical(other.priceUnit, priceUnit) || const DeepCollectionEquality().equals(other.priceUnit, priceUnit)) &&
            (identical(other.priceExchange, priceExchange) || const DeepCollectionEquality().equals(other.priceExchange, priceExchange)) &&
            (identical(other.priceShipping, priceShipping) || const DeepCollectionEquality().equals(other.priceShipping, priceShipping)) &&
            (identical(other.priceShippingRemoted, priceShippingRemoted) || const DeepCollectionEquality().equals(other.priceShippingRemoted, priceShippingRemoted)) &&
            (identical(other.priceShippingDiscount, priceShippingDiscount) || const DeepCollectionEquality().equals(other.priceShippingDiscount, priceShippingDiscount)) &&
            (identical(other.taxPrice, taxPrice) || const DeepCollectionEquality().equals(other.taxPrice, taxPrice)) &&
            (identical(other.totalPaymentPrice, totalPaymentPrice) || const DeepCollectionEquality().equals(other.totalPaymentPrice, totalPaymentPrice)) &&
            (identical(other.paidAt, paidAt) || const DeepCollectionEquality().equals(other.paidAt, paidAt)) &&
            (identical(other.shippingPersonalCode, shippingPersonalCode) || const DeepCollectionEquality().equals(other.shippingPersonalCode, shippingPersonalCode)) &&
            (identical(other.shippingOrdererSsn, shippingOrdererSsn) || const DeepCollectionEquality().equals(other.shippingOrdererSsn, shippingOrdererSsn)) &&
            (identical(other.shippingOrdererPhone, shippingOrdererPhone) || const DeepCollectionEquality().equals(other.shippingOrdererPhone, shippingOrdererPhone)) &&
            (identical(other.extras, extras) || const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.status, status) || const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.deliveryType, deliveryType) || const DeepCollectionEquality().equals(other.deliveryType, deliveryType)) &&
            (identical(other.deliveryLoadSize, deliveryLoadSize) || const DeepCollectionEquality().equals(other.deliveryLoadSize, deliveryLoadSize)) &&
            (identical(other.deliveryPrintMessage, deliveryPrintMessage) || const DeepCollectionEquality().equals(other.deliveryPrintMessage, deliveryPrintMessage)) &&
            (identical(other.deliveryRemoted, deliveryRemoted) || const DeepCollectionEquality().equals(other.deliveryRemoted, deliveryRemoted)) &&
            (identical(other.deliverySplited, deliverySplited) || const DeepCollectionEquality().equals(other.deliverySplited, deliverySplited)) &&
            (identical(other.deliverySplitable, deliverySplitable) || const DeepCollectionEquality().equals(other.deliverySplitable, deliverySplitable)) &&
            (identical(other.deliveryCompanyCode, deliveryCompanyCode) || const DeepCollectionEquality().equals(other.deliveryCompanyCode, deliveryCompanyCode)) &&
            (identical(other.deliveryCompanyName, deliveryCompanyName) || const DeepCollectionEquality().equals(other.deliveryCompanyName, deliveryCompanyName)) &&
            (identical(other.deliveryInvoiceNumber, deliveryInvoiceNumber) || const DeepCollectionEquality().equals(other.deliveryInvoiceNumber, deliveryInvoiceNumber)) &&
            (identical(other.deliveryExpiredAt, deliveryExpiredAt) || const DeepCollectionEquality().equals(other.deliveryExpiredAt, deliveryExpiredAt)) &&
            (identical(other.cancelReason, cancelReason) || const DeepCollectionEquality().equals(other.cancelReason, cancelReason)) &&
            (identical(other.canceledAt, canceledAt) || const DeepCollectionEquality().equals(other.canceledAt, canceledAt)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) || const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.progressedAt, progressedAt) || const DeepCollectionEquality().equals(other.progressedAt, progressedAt)) &&
            (identical(other.deliveredAt, deliveredAt) || const DeepCollectionEquality().equals(other.deliveredAt, deliveredAt)) &&
            (identical(other.cancelReqAt, cancelReqAt) || const DeepCollectionEquality().equals(other.cancelReqAt, cancelReqAt)) &&
            (identical(other.cancelReqUserName, cancelReqUserName) || const DeepCollectionEquality().equals(other.cancelReqUserName, cancelReqUserName)) &&
            (identical(other.cancelReqUserAccount, cancelReqUserAccount) || const DeepCollectionEquality().equals(other.cancelReqUserAccount, cancelReqUserAccount)) &&
            (identical(other.cancelConfirmUserName, cancelConfirmUserName) || const DeepCollectionEquality().equals(other.cancelConfirmUserName, cancelConfirmUserName)) &&
            (identical(other.cancelConfirmUserAccount, cancelConfirmUserAccount) || const DeepCollectionEquality().equals(other.cancelConfirmUserAccount, cancelConfirmUserAccount)) &&
            (identical(other.cancelConfirmedAt, cancelConfirmedAt) || const DeepCollectionEquality().equals(other.cancelConfirmedAt, cancelConfirmedAt)) &&
            (identical(other.returnReqAt, returnReqAt) || const DeepCollectionEquality().equals(other.returnReqAt, returnReqAt)) &&
            (identical(other.returnReqUserName, returnReqUserName) || const DeepCollectionEquality().equals(other.returnReqUserName, returnReqUserName)) &&
            (identical(other.returnReqUserAccount, returnReqUserAccount) || const DeepCollectionEquality().equals(other.returnReqUserAccount, returnReqUserAccount)) &&
            (identical(other.returnConfirmUserName, returnConfirmUserName) || const DeepCollectionEquality().equals(other.returnConfirmUserName, returnConfirmUserName)) &&
            (identical(other.returnConfirmUserAccount, returnConfirmUserAccount) || const DeepCollectionEquality().equals(other.returnConfirmUserAccount, returnConfirmUserAccount)) &&
            (identical(other.returnConfirmedAt, returnConfirmedAt) || const DeepCollectionEquality().equals(other.returnConfirmedAt, returnConfirmedAt)) &&
            (identical(other.exchangeReqAt, exchangeReqAt) || const DeepCollectionEquality().equals(other.exchangeReqAt, exchangeReqAt)) &&
            (identical(other.exchangeReqUserName, exchangeReqUserName) || const DeepCollectionEquality().equals(other.exchangeReqUserName, exchangeReqUserName)) &&
            (identical(other.exchangeReqUserAccount, exchangeReqUserAccount) || const DeepCollectionEquality().equals(other.exchangeReqUserAccount, exchangeReqUserAccount)) &&
            (identical(other.exchangeConfirmUserName, exchangeConfirmUserName) || const DeepCollectionEquality().equals(other.exchangeConfirmUserName, exchangeConfirmUserName)) &&
            (identical(other.exchangeConfirmUserAccount, exchangeConfirmUserAccount) || const DeepCollectionEquality().equals(other.exchangeConfirmUserAccount, exchangeConfirmUserAccount)) &&
            (identical(other.exchangeConfirmedAt, exchangeConfirmedAt) || const DeepCollectionEquality().equals(other.exchangeConfirmedAt, exchangeConfirmedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(consignorId) ^
      const DeepCollectionEquality().hash(orderKey) ^
      const DeepCollectionEquality().hash(orderType) ^
      const DeepCollectionEquality().hash(orderProvider) ^
      const DeepCollectionEquality().hash(orderNumber) ^
      const DeepCollectionEquality().hash(orderContent) ^
      const DeepCollectionEquality().hash(orderedAt) ^
      const DeepCollectionEquality().hash(goodsCount) ^
      const DeepCollectionEquality().hash(goodsContent) ^
      const DeepCollectionEquality().hash(ordererName) ^
      const DeepCollectionEquality().hash(ordererAccount) ^
      const DeepCollectionEquality().hash(ordererPhone) ^
      const DeepCollectionEquality().hash(ordererPhoneSafe) ^
      const DeepCollectionEquality().hash(ordererAddress) ^
      const DeepCollectionEquality().hash(ordererAddressDetail) ^
      const DeepCollectionEquality().hash(ordererAddressPostalCode) ^
      const DeepCollectionEquality().hash(receiverName) ^
      const DeepCollectionEquality().hash(receiverAccount) ^
      const DeepCollectionEquality().hash(receiverPhone) ^
      const DeepCollectionEquality().hash(receiverPhoneSafe) ^
      const DeepCollectionEquality().hash(receiverAddress) ^
      const DeepCollectionEquality().hash(receiverAddressDetail) ^
      const DeepCollectionEquality().hash(receiverAddressPostalCode) ^
      const DeepCollectionEquality().hash(priceUnit) ^
      const DeepCollectionEquality().hash(priceExchange) ^
      const DeepCollectionEquality().hash(priceShipping) ^
      const DeepCollectionEquality().hash(priceShippingRemoted) ^
      const DeepCollectionEquality().hash(priceShippingDiscount) ^
      const DeepCollectionEquality().hash(taxPrice) ^
      const DeepCollectionEquality().hash(totalPaymentPrice) ^
      const DeepCollectionEquality().hash(paidAt) ^
      const DeepCollectionEquality().hash(shippingPersonalCode) ^
      const DeepCollectionEquality().hash(shippingOrdererSsn) ^
      const DeepCollectionEquality().hash(shippingOrdererPhone) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(deliveryType) ^
      const DeepCollectionEquality().hash(deliveryLoadSize) ^
      const DeepCollectionEquality().hash(deliveryPrintMessage) ^
      const DeepCollectionEquality().hash(deliveryRemoted) ^
      const DeepCollectionEquality().hash(deliverySplited) ^
      const DeepCollectionEquality().hash(deliverySplitable) ^
      const DeepCollectionEquality().hash(deliveryCompanyCode) ^
      const DeepCollectionEquality().hash(deliveryCompanyName) ^
      const DeepCollectionEquality().hash(deliveryInvoiceNumber) ^
      const DeepCollectionEquality().hash(deliveryExpiredAt) ^
      const DeepCollectionEquality().hash(cancelReason) ^
      const DeepCollectionEquality().hash(canceledAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(progressedAt) ^
      const DeepCollectionEquality().hash(deliveredAt) ^
      const DeepCollectionEquality().hash(cancelReqAt) ^
      const DeepCollectionEquality().hash(cancelReqUserName) ^
      const DeepCollectionEquality().hash(cancelReqUserAccount) ^
      const DeepCollectionEquality().hash(cancelConfirmUserName) ^
      const DeepCollectionEquality().hash(cancelConfirmUserAccount) ^
      const DeepCollectionEquality().hash(cancelConfirmedAt) ^
      const DeepCollectionEquality().hash(returnReqAt) ^
      const DeepCollectionEquality().hash(returnReqUserName) ^
      const DeepCollectionEquality().hash(returnReqUserAccount) ^
      const DeepCollectionEquality().hash(returnConfirmUserName) ^
      const DeepCollectionEquality().hash(returnConfirmUserAccount) ^
      const DeepCollectionEquality().hash(returnConfirmedAt) ^
      const DeepCollectionEquality().hash(exchangeReqAt) ^
      const DeepCollectionEquality().hash(exchangeReqUserName) ^
      const DeepCollectionEquality().hash(exchangeReqUserAccount) ^
      const DeepCollectionEquality().hash(exchangeConfirmUserName) ^
      const DeepCollectionEquality().hash(exchangeConfirmUserAccount) ^
      const DeepCollectionEquality().hash(exchangeConfirmedAt) ^
      runtimeType.hashCode;
}

extension $OrdersExtension on Orders {
  Orders copyWith(
      {int? uid,
      int? userId,
      int? consignorId,
      String? orderKey,
      String? orderType,
      String? orderProvider,
      String? orderNumber,
      Object? orderContent,
      DateTime? orderedAt,
      int? goodsCount,
      Object? goodsContent,
      String? ordererName,
      String? ordererAccount,
      String? ordererPhone,
      String? ordererPhoneSafe,
      String? ordererAddress,
      String? ordererAddressDetail,
      String? ordererAddressPostalCode,
      String? receiverName,
      String? receiverAccount,
      String? receiverPhone,
      String? receiverPhoneSafe,
      String? receiverAddress,
      String? receiverAddressDetail,
      String? receiverAddressPostalCode,
      String? priceUnit,
      double? priceExchange,
      double? priceShipping,
      double? priceShippingRemoted,
      double? priceShippingDiscount,
      double? taxPrice,
      double? totalPaymentPrice,
      DateTime? paidAt,
      String? shippingPersonalCode,
      String? shippingOrdererSsn,
      String? shippingOrdererPhone,
      Object? extras,
      String? status,
      String? deliveryType,
      String? deliveryLoadSize,
      String? deliveryPrintMessage,
      bool? deliveryRemoted,
      bool? deliverySplited,
      bool? deliverySplitable,
      String? deliveryCompanyCode,
      String? deliveryCompanyName,
      String? deliveryInvoiceNumber,
      DateTime? deliveryExpiredAt,
      String? cancelReason,
      DateTime? canceledAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? progressedAt,
      DateTime? deliveredAt,
      DateTime? cancelReqAt,
      String? cancelReqUserName,
      String? cancelReqUserAccount,
      String? cancelConfirmUserName,
      String? cancelConfirmUserAccount,
      DateTime? cancelConfirmedAt,
      DateTime? returnReqAt,
      String? returnReqUserName,
      String? returnReqUserAccount,
      String? returnConfirmUserName,
      String? returnConfirmUserAccount,
      DateTime? returnConfirmedAt,
      DateTime? exchangeReqAt,
      String? exchangeReqUserName,
      String? exchangeReqUserAccount,
      String? exchangeConfirmUserName,
      String? exchangeConfirmUserAccount,
      DateTime? exchangeConfirmedAt}) {
    return Orders(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        consignorId: consignorId ?? this.consignorId,
        orderKey: orderKey ?? this.orderKey,
        orderType: orderType ?? this.orderType,
        orderProvider: orderProvider ?? this.orderProvider,
        orderNumber: orderNumber ?? this.orderNumber,
        orderContent: orderContent ?? this.orderContent,
        orderedAt: orderedAt ?? this.orderedAt,
        goodsCount: goodsCount ?? this.goodsCount,
        goodsContent: goodsContent ?? this.goodsContent,
        ordererName: ordererName ?? this.ordererName,
        ordererAccount: ordererAccount ?? this.ordererAccount,
        ordererPhone: ordererPhone ?? this.ordererPhone,
        ordererPhoneSafe: ordererPhoneSafe ?? this.ordererPhoneSafe,
        ordererAddress: ordererAddress ?? this.ordererAddress,
        ordererAddressDetail: ordererAddressDetail ?? this.ordererAddressDetail,
        ordererAddressPostalCode:
            ordererAddressPostalCode ?? this.ordererAddressPostalCode,
        receiverName: receiverName ?? this.receiverName,
        receiverAccount: receiverAccount ?? this.receiverAccount,
        receiverPhone: receiverPhone ?? this.receiverPhone,
        receiverPhoneSafe: receiverPhoneSafe ?? this.receiverPhoneSafe,
        receiverAddress: receiverAddress ?? this.receiverAddress,
        receiverAddressDetail:
            receiverAddressDetail ?? this.receiverAddressDetail,
        receiverAddressPostalCode:
            receiverAddressPostalCode ?? this.receiverAddressPostalCode,
        priceUnit: priceUnit ?? this.priceUnit,
        priceExchange: priceExchange ?? this.priceExchange,
        priceShipping: priceShipping ?? this.priceShipping,
        priceShippingRemoted: priceShippingRemoted ?? this.priceShippingRemoted,
        priceShippingDiscount:
            priceShippingDiscount ?? this.priceShippingDiscount,
        taxPrice: taxPrice ?? this.taxPrice,
        totalPaymentPrice: totalPaymentPrice ?? this.totalPaymentPrice,
        paidAt: paidAt ?? this.paidAt,
        shippingPersonalCode: shippingPersonalCode ?? this.shippingPersonalCode,
        shippingOrdererSsn: shippingOrdererSsn ?? this.shippingOrdererSsn,
        shippingOrdererPhone: shippingOrdererPhone ?? this.shippingOrdererPhone,
        extras: extras ?? this.extras,
        status: status ?? this.status,
        deliveryType: deliveryType ?? this.deliveryType,
        deliveryLoadSize: deliveryLoadSize ?? this.deliveryLoadSize,
        deliveryPrintMessage: deliveryPrintMessage ?? this.deliveryPrintMessage,
        deliveryRemoted: deliveryRemoted ?? this.deliveryRemoted,
        deliverySplited: deliverySplited ?? this.deliverySplited,
        deliverySplitable: deliverySplitable ?? this.deliverySplitable,
        deliveryCompanyCode: deliveryCompanyCode ?? this.deliveryCompanyCode,
        deliveryCompanyName: deliveryCompanyName ?? this.deliveryCompanyName,
        deliveryInvoiceNumber:
            deliveryInvoiceNumber ?? this.deliveryInvoiceNumber,
        deliveryExpiredAt: deliveryExpiredAt ?? this.deliveryExpiredAt,
        cancelReason: cancelReason ?? this.cancelReason,
        canceledAt: canceledAt ?? this.canceledAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        progressedAt: progressedAt ?? this.progressedAt,
        deliveredAt: deliveredAt ?? this.deliveredAt,
        cancelReqAt: cancelReqAt ?? this.cancelReqAt,
        cancelReqUserName: cancelReqUserName ?? this.cancelReqUserName,
        cancelReqUserAccount: cancelReqUserAccount ?? this.cancelReqUserAccount,
        cancelConfirmUserName:
            cancelConfirmUserName ?? this.cancelConfirmUserName,
        cancelConfirmUserAccount:
            cancelConfirmUserAccount ?? this.cancelConfirmUserAccount,
        cancelConfirmedAt: cancelConfirmedAt ?? this.cancelConfirmedAt,
        returnReqAt: returnReqAt ?? this.returnReqAt,
        returnReqUserName: returnReqUserName ?? this.returnReqUserName,
        returnReqUserAccount: returnReqUserAccount ?? this.returnReqUserAccount,
        returnConfirmUserName:
            returnConfirmUserName ?? this.returnConfirmUserName,
        returnConfirmUserAccount:
            returnConfirmUserAccount ?? this.returnConfirmUserAccount,
        returnConfirmedAt: returnConfirmedAt ?? this.returnConfirmedAt,
        exchangeReqAt: exchangeReqAt ?? this.exchangeReqAt,
        exchangeReqUserName: exchangeReqUserName ?? this.exchangeReqUserName,
        exchangeReqUserAccount:
            exchangeReqUserAccount ?? this.exchangeReqUserAccount,
        exchangeConfirmUserName:
            exchangeConfirmUserName ?? this.exchangeConfirmUserName,
        exchangeConfirmUserAccount:
            exchangeConfirmUserAccount ?? this.exchangeConfirmUserAccount,
        exchangeConfirmedAt: exchangeConfirmedAt ?? this.exchangeConfirmedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class SellerVacation {
  SellerVacation({
    required this.uid,
    required this.account,
    required this.userMode,
    this.vacationReason,
    required this.actived,
    required this.activedAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory SellerVacation.fromJson(Map<String, dynamic> json) =>
      _$SellerVacationFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'account', includeIfNull: false, defaultValue: '')
  final String account;
  @JsonKey(name: 'user_mode', includeIfNull: false, defaultValue: '')
  final String userMode;
  @JsonKey(name: 'vacation_reason', includeIfNull: false, defaultValue: '')
  final String? vacationReason;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$SellerVacationFromJson;
  static const toJsonFactory = _$SellerVacationToJson;
  Map<String, dynamic> toJson() => _$SellerVacationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SellerVacation &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.userMode, userMode) ||
                const DeepCollectionEquality()
                    .equals(other.userMode, userMode)) &&
            (identical(other.vacationReason, vacationReason) ||
                const DeepCollectionEquality()
                    .equals(other.vacationReason, vacationReason)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(userMode) ^
      const DeepCollectionEquality().hash(vacationReason) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $SellerVacationExtension on SellerVacation {
  SellerVacation copyWith(
      {int? uid,
      String? account,
      String? userMode,
      String? vacationReason,
      bool? actived,
      DateTime? activedAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return SellerVacation(
        uid: uid ?? this.uid,
        account: account ?? this.account,
        userMode: userMode ?? this.userMode,
        vacationReason: vacationReason ?? this.vacationReason,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Store {
  Store({
    required this.uid,
    required this.storeStatus,
    required this.account,
    required this.storeName,
    this.artiketRepresentativeCategory,
    this.artiketRepresentativeImage,
    this.storeStatusDescription,
    this.businessNumber0,
    this.businessNumber1,
    this.businessCompanyName,
    this.businessType,
    this.businessCeoName,
    this.businessCompanyAddress,
    this.onlineMarketingBusinessNumber,
    this.businessLicenseImage0,
    this.businessLicenseImage1,
    this.artiketPlaceOfShipmentName,
    this.artiketPlaceOfShipment,
    this.artiketPlaceOfShipmentNumber0,
    this.artiketPlaceOfShipmentNumber1,
    this.refundAddressName,
    this.refundAddress,
    this.refundNumber0,
    this.refundNumber1,
    this.userBank,
    this.userAccountName,
    this.userAccountNumber,
    this.userAccountImage,
    required this.actived,
    required this.activedAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'store_status', includeIfNull: false, defaultValue: '')
  final String storeStatus;
  @JsonKey(name: 'account', includeIfNull: false, defaultValue: '')
  final String account;
  @JsonKey(name: 'store_name', includeIfNull: false, defaultValue: '')
  final String storeName;
  @JsonKey(
      name: 'artiket_representative_category',
      includeIfNull: false,
      defaultValue: '')
  final String? artiketRepresentativeCategory;
  @JsonKey(
      name: 'artiket_representative_image',
      includeIfNull: false,
      defaultValue: '')
  final String? artiketRepresentativeImage;
  @JsonKey(
      name: 'store_status_description', includeIfNull: false, defaultValue: '')
  final String? storeStatusDescription;
  @JsonKey(name: 'business_number0', includeIfNull: false, defaultValue: '')
  final String? businessNumber0;
  @JsonKey(name: 'business_number1', includeIfNull: false, defaultValue: '')
  final String? businessNumber1;
  @JsonKey(
      name: 'business_company_name', includeIfNull: false, defaultValue: '')
  final String? businessCompanyName;
  @JsonKey(name: 'business_type', includeIfNull: false, defaultValue: '')
  final String? businessType;
  @JsonKey(name: 'business_ceo_name', includeIfNull: false, defaultValue: '')
  final String? businessCeoName;
  @JsonKey(
      name: 'business_company_address', includeIfNull: false, defaultValue: '')
  final String? businessCompanyAddress;
  @JsonKey(
      name: 'online_marketing_business_number',
      includeIfNull: false,
      defaultValue: '')
  final String? onlineMarketingBusinessNumber;
  @JsonKey(
      name: 'business_license_image0', includeIfNull: false, defaultValue: '')
  final String? businessLicenseImage0;
  @JsonKey(
      name: 'business_license_image1', includeIfNull: false, defaultValue: '')
  final String? businessLicenseImage1;
  @JsonKey(
      name: 'artiket_place_of_shipment_name',
      includeIfNull: false,
      defaultValue: '')
  final String? artiketPlaceOfShipmentName;
  @JsonKey(
      name: 'artiket_place_of_shipment', includeIfNull: false, defaultValue: '')
  final String? artiketPlaceOfShipment;
  @JsonKey(
      name: 'artiket_place_of_shipment_number0',
      includeIfNull: false,
      defaultValue: '')
  final String? artiketPlaceOfShipmentNumber0;
  @JsonKey(
      name: 'artiket_place_of_shipment_number1',
      includeIfNull: false,
      defaultValue: '')
  final String? artiketPlaceOfShipmentNumber1;
  @JsonKey(name: 'refund_address_name', includeIfNull: false, defaultValue: '')
  final String? refundAddressName;
  @JsonKey(name: 'refund_address', includeIfNull: false, defaultValue: '')
  final String? refundAddress;
  @JsonKey(name: 'refund_number0', includeIfNull: false, defaultValue: '')
  final String? refundNumber0;
  @JsonKey(name: 'refund_number1', includeIfNull: false, defaultValue: '')
  final String? refundNumber1;
  @JsonKey(name: 'user_bank', includeIfNull: false, defaultValue: '')
  final String? userBank;
  @JsonKey(name: 'user_account_name', includeIfNull: false, defaultValue: '')
  final String? userAccountName;
  @JsonKey(name: 'user_account_number', includeIfNull: false, defaultValue: '')
  final String? userAccountNumber;
  @JsonKey(name: 'user_account_image', includeIfNull: false, defaultValue: '')
  final String? userAccountImage;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$StoreFromJson;
  static const toJsonFactory = _$StoreToJson;
  Map<String, dynamic> toJson() => _$StoreToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Store &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.storeStatus, storeStatus) ||
                const DeepCollectionEquality()
                    .equals(other.storeStatus, storeStatus)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.storeName, storeName) ||
                const DeepCollectionEquality()
                    .equals(other.storeName, storeName)) &&
            (identical(other.artiketRepresentativeCategory, artiketRepresentativeCategory) ||
                const DeepCollectionEquality().equals(
                    other.artiketRepresentativeCategory,
                    artiketRepresentativeCategory)) &&
            (identical(other.artiketRepresentativeImage, artiketRepresentativeImage) ||
                const DeepCollectionEquality().equals(
                    other.artiketRepresentativeImage,
                    artiketRepresentativeImage)) &&
            (identical(other.storeStatusDescription, storeStatusDescription) ||
                const DeepCollectionEquality().equals(
                    other.storeStatusDescription, storeStatusDescription)) &&
            (identical(other.businessNumber0, businessNumber0) ||
                const DeepCollectionEquality()
                    .equals(other.businessNumber0, businessNumber0)) &&
            (identical(other.businessNumber1, businessNumber1) ||
                const DeepCollectionEquality()
                    .equals(other.businessNumber1, businessNumber1)) &&
            (identical(other.businessCompanyName, businessCompanyName) ||
                const DeepCollectionEquality()
                    .equals(other.businessCompanyName, businessCompanyName)) &&
            (identical(other.businessType, businessType) ||
                const DeepCollectionEquality()
                    .equals(other.businessType, businessType)) &&
            (identical(other.businessCeoName, businessCeoName) ||
                const DeepCollectionEquality()
                    .equals(other.businessCeoName, businessCeoName)) &&
            (identical(other.businessCompanyAddress, businessCompanyAddress) ||
                const DeepCollectionEquality().equals(
                    other.businessCompanyAddress, businessCompanyAddress)) &&
            (identical(other.onlineMarketingBusinessNumber, onlineMarketingBusinessNumber) ||
                const DeepCollectionEquality()
                    .equals(other.onlineMarketingBusinessNumber, onlineMarketingBusinessNumber)) &&
            (identical(other.businessLicenseImage0, businessLicenseImage0) || const DeepCollectionEquality().equals(other.businessLicenseImage0, businessLicenseImage0)) &&
            (identical(other.businessLicenseImage1, businessLicenseImage1) || const DeepCollectionEquality().equals(other.businessLicenseImage1, businessLicenseImage1)) &&
            (identical(other.artiketPlaceOfShipmentName, artiketPlaceOfShipmentName) || const DeepCollectionEquality().equals(other.artiketPlaceOfShipmentName, artiketPlaceOfShipmentName)) &&
            (identical(other.artiketPlaceOfShipment, artiketPlaceOfShipment) || const DeepCollectionEquality().equals(other.artiketPlaceOfShipment, artiketPlaceOfShipment)) &&
            (identical(other.artiketPlaceOfShipmentNumber0, artiketPlaceOfShipmentNumber0) || const DeepCollectionEquality().equals(other.artiketPlaceOfShipmentNumber0, artiketPlaceOfShipmentNumber0)) &&
            (identical(other.artiketPlaceOfShipmentNumber1, artiketPlaceOfShipmentNumber1) || const DeepCollectionEquality().equals(other.artiketPlaceOfShipmentNumber1, artiketPlaceOfShipmentNumber1)) &&
            (identical(other.refundAddressName, refundAddressName) || const DeepCollectionEquality().equals(other.refundAddressName, refundAddressName)) &&
            (identical(other.refundAddress, refundAddress) || const DeepCollectionEquality().equals(other.refundAddress, refundAddress)) &&
            (identical(other.refundNumber0, refundNumber0) || const DeepCollectionEquality().equals(other.refundNumber0, refundNumber0)) &&
            (identical(other.refundNumber1, refundNumber1) || const DeepCollectionEquality().equals(other.refundNumber1, refundNumber1)) &&
            (identical(other.userBank, userBank) || const DeepCollectionEquality().equals(other.userBank, userBank)) &&
            (identical(other.userAccountName, userAccountName) || const DeepCollectionEquality().equals(other.userAccountName, userAccountName)) &&
            (identical(other.userAccountNumber, userAccountNumber) || const DeepCollectionEquality().equals(other.userAccountNumber, userAccountNumber)) &&
            (identical(other.userAccountImage, userAccountImage) || const DeepCollectionEquality().equals(other.userAccountImage, userAccountImage)) &&
            (identical(other.actived, actived) || const DeepCollectionEquality().equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) || const DeepCollectionEquality().equals(other.activedAt, activedAt)) &&
            (identical(other.extras, extras) || const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) || const DeepCollectionEquality().equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) || const DeepCollectionEquality().equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) || const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) || const DeepCollectionEquality().equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) || const DeepCollectionEquality().equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(storeStatus) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(storeName) ^
      const DeepCollectionEquality().hash(artiketRepresentativeCategory) ^
      const DeepCollectionEquality().hash(artiketRepresentativeImage) ^
      const DeepCollectionEquality().hash(storeStatusDescription) ^
      const DeepCollectionEquality().hash(businessNumber0) ^
      const DeepCollectionEquality().hash(businessNumber1) ^
      const DeepCollectionEquality().hash(businessCompanyName) ^
      const DeepCollectionEquality().hash(businessType) ^
      const DeepCollectionEquality().hash(businessCeoName) ^
      const DeepCollectionEquality().hash(businessCompanyAddress) ^
      const DeepCollectionEquality().hash(onlineMarketingBusinessNumber) ^
      const DeepCollectionEquality().hash(businessLicenseImage0) ^
      const DeepCollectionEquality().hash(businessLicenseImage1) ^
      const DeepCollectionEquality().hash(artiketPlaceOfShipmentName) ^
      const DeepCollectionEquality().hash(artiketPlaceOfShipment) ^
      const DeepCollectionEquality().hash(artiketPlaceOfShipmentNumber0) ^
      const DeepCollectionEquality().hash(artiketPlaceOfShipmentNumber1) ^
      const DeepCollectionEquality().hash(refundAddressName) ^
      const DeepCollectionEquality().hash(refundAddress) ^
      const DeepCollectionEquality().hash(refundNumber0) ^
      const DeepCollectionEquality().hash(refundNumber1) ^
      const DeepCollectionEquality().hash(userBank) ^
      const DeepCollectionEquality().hash(userAccountName) ^
      const DeepCollectionEquality().hash(userAccountNumber) ^
      const DeepCollectionEquality().hash(userAccountImage) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $StoreExtension on Store {
  Store copyWith(
      {int? uid,
      String? storeStatus,
      String? account,
      String? storeName,
      String? artiketRepresentativeCategory,
      String? artiketRepresentativeImage,
      String? storeStatusDescription,
      String? businessNumber0,
      String? businessNumber1,
      String? businessCompanyName,
      String? businessType,
      String? businessCeoName,
      String? businessCompanyAddress,
      String? onlineMarketingBusinessNumber,
      String? businessLicenseImage0,
      String? businessLicenseImage1,
      String? artiketPlaceOfShipmentName,
      String? artiketPlaceOfShipment,
      String? artiketPlaceOfShipmentNumber0,
      String? artiketPlaceOfShipmentNumber1,
      String? refundAddressName,
      String? refundAddress,
      String? refundNumber0,
      String? refundNumber1,
      String? userBank,
      String? userAccountName,
      String? userAccountNumber,
      String? userAccountImage,
      bool? actived,
      DateTime? activedAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Store(
        uid: uid ?? this.uid,
        storeStatus: storeStatus ?? this.storeStatus,
        account: account ?? this.account,
        storeName: storeName ?? this.storeName,
        artiketRepresentativeCategory:
            artiketRepresentativeCategory ?? this.artiketRepresentativeCategory,
        artiketRepresentativeImage:
            artiketRepresentativeImage ?? this.artiketRepresentativeImage,
        storeStatusDescription:
            storeStatusDescription ?? this.storeStatusDescription,
        businessNumber0: businessNumber0 ?? this.businessNumber0,
        businessNumber1: businessNumber1 ?? this.businessNumber1,
        businessCompanyName: businessCompanyName ?? this.businessCompanyName,
        businessType: businessType ?? this.businessType,
        businessCeoName: businessCeoName ?? this.businessCeoName,
        businessCompanyAddress:
            businessCompanyAddress ?? this.businessCompanyAddress,
        onlineMarketingBusinessNumber:
            onlineMarketingBusinessNumber ?? this.onlineMarketingBusinessNumber,
        businessLicenseImage0:
            businessLicenseImage0 ?? this.businessLicenseImage0,
        businessLicenseImage1:
            businessLicenseImage1 ?? this.businessLicenseImage1,
        artiketPlaceOfShipmentName:
            artiketPlaceOfShipmentName ?? this.artiketPlaceOfShipmentName,
        artiketPlaceOfShipment:
            artiketPlaceOfShipment ?? this.artiketPlaceOfShipment,
        artiketPlaceOfShipmentNumber0:
            artiketPlaceOfShipmentNumber0 ?? this.artiketPlaceOfShipmentNumber0,
        artiketPlaceOfShipmentNumber1:
            artiketPlaceOfShipmentNumber1 ?? this.artiketPlaceOfShipmentNumber1,
        refundAddressName: refundAddressName ?? this.refundAddressName,
        refundAddress: refundAddress ?? this.refundAddress,
        refundNumber0: refundNumber0 ?? this.refundNumber0,
        refundNumber1: refundNumber1 ?? this.refundNumber1,
        userBank: userBank ?? this.userBank,
        userAccountName: userAccountName ?? this.userAccountName,
        userAccountNumber: userAccountNumber ?? this.userAccountNumber,
        userAccountImage: userAccountImage ?? this.userAccountImage,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class User {
  User({
    required this.uid,
    required this.storeId,
    required this.account,
    required this.userMode,
    required this.userPassword,
    this.userType,
    required this.sellerType,
    this.userNumber,
    this.userName,
    this.userEmail,
    this.userBirthday,
    this.userGender,
    this.userAddress,
    this.artiketName,
    this.artiketIntroduceContent,
    this.artiketProfileImageApprove,
    this.artiketProfileImage,
    this.artiketCoverImageApprove,
    this.artiketCoverImage,
    this.artiketSCNumber,
    required this.storeStatus,
    this.storeStatusDescription,
    this.artiketRepresentativeCategory,
    this.artiketRepresentativeImage,
    this.businessNumber0,
    this.businessNumber1,
    this.businessCompanyName,
    this.businessType,
    this.businessCeoName,
    this.businessCompanyAddress,
    this.onlineMarketingBusinessNumber,
    this.businessLicenseImage0,
    this.businessLicenseImage1,
    this.artiketPlaceOfShipmentName,
    this.artiketPlaceOfShipment,
    this.artiketPlaceOfShipmentNumber0,
    this.artiketPlaceOfShipmentNumber1,
    this.refundAddressName,
    this.refundAddress,
    this.refundNumber0,
    this.refundNumber1,
    this.userBank,
    this.userAccountName,
    this.userAccountNumber,
    this.userAccountImage,
    this.usernameUsed,
    this.usernameUsedAt,
    this.email,
    this.emailValid,
    this.phone,
    this.phoneValid,
    this.userPhone,
    this.userFirstName,
    this.userLastName,
    this.userNickname,
    this.userBirth,
    this.userDialCode,
    this.userIsoCode,
    this.profileImage,
    this.profileBio,
    this.roleType,
    this.roleLevel,
    this.geoLatitude,
    this.geoLongitude,
    this.timezone,
    this.blockedIssue,
    this.blocked,
    this.blockedAt,
    this.agreed,
    this.agreedAt,
    this.memo,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'store_id', includeIfNull: false)
  final int storeId;
  @JsonKey(name: 'account', includeIfNull: false, defaultValue: '')
  final String account;
  @JsonKey(name: 'user_mode', includeIfNull: false, defaultValue: '')
  final String userMode;
  @JsonKey(name: 'user_password', includeIfNull: false, defaultValue: '')
  final String userPassword;
  @JsonKey(name: 'user_type', includeIfNull: false, defaultValue: '')
  final String? userType;
  @JsonKey(name: 'seller_type', includeIfNull: false, defaultValue: '')
  final String sellerType;
  @JsonKey(name: 'user_number', includeIfNull: false, defaultValue: '')
  final String? userNumber;
  @JsonKey(name: 'user_name', includeIfNull: false, defaultValue: '')
  final String? userName;
  @JsonKey(name: 'user_email', includeIfNull: false, defaultValue: '')
  final String? userEmail;
  @JsonKey(name: 'user_birthday', includeIfNull: false)
  final DateTime? userBirthday;
  @JsonKey(name: 'user_gender', includeIfNull: false, defaultValue: '')
  final String? userGender;
  @JsonKey(name: 'user_address', includeIfNull: false, defaultValue: '')
  final String? userAddress;
  @JsonKey(name: 'artiket_name', includeIfNull: false, defaultValue: '')
  final String? artiketName;
  @JsonKey(
      name: 'artiket_introduce_content', includeIfNull: false, defaultValue: '')
  final String? artiketIntroduceContent;
  @JsonKey(
      name: 'artiket_profile_image_approve',
      includeIfNull: false,
      defaultValue: '')
  final String? artiketProfileImageApprove;
  @JsonKey(
      name: 'artiket_profile_image', includeIfNull: false, defaultValue: '')
  final String? artiketProfileImage;
  @JsonKey(
      name: 'artiket_cover_image_approve',
      includeIfNull: false,
      defaultValue: '')
  final String? artiketCoverImageApprove;
  @JsonKey(name: 'artiket_cover_image', includeIfNull: false, defaultValue: '')
  final String? artiketCoverImage;
  @JsonKey(name: 'artiket_s_c_number', includeIfNull: false, defaultValue: '')
  final String? artiketSCNumber;
  @JsonKey(name: 'store_status', includeIfNull: false, defaultValue: '')
  final String storeStatus;
  @JsonKey(
      name: 'store_status_description', includeIfNull: false, defaultValue: '')
  final String? storeStatusDescription;
  @JsonKey(
      name: 'artiket_representative_category',
      includeIfNull: false,
      defaultValue: '')
  final String? artiketRepresentativeCategory;
  @JsonKey(
      name: 'artiket_representative_image',
      includeIfNull: false,
      defaultValue: '')
  final String? artiketRepresentativeImage;
  @JsonKey(name: 'business_number0', includeIfNull: false, defaultValue: '')
  final String? businessNumber0;
  @JsonKey(name: 'business_number1', includeIfNull: false, defaultValue: '')
  final String? businessNumber1;
  @JsonKey(
      name: 'business_company_name', includeIfNull: false, defaultValue: '')
  final String? businessCompanyName;
  @JsonKey(name: 'business_type', includeIfNull: false, defaultValue: '')
  final String? businessType;
  @JsonKey(name: 'business_ceo_name', includeIfNull: false, defaultValue: '')
  final String? businessCeoName;
  @JsonKey(
      name: 'business_company_address', includeIfNull: false, defaultValue: '')
  final String? businessCompanyAddress;
  @JsonKey(
      name: 'online_marketing_business_number',
      includeIfNull: false,
      defaultValue: '')
  final String? onlineMarketingBusinessNumber;
  @JsonKey(
      name: 'business_license_image0', includeIfNull: false, defaultValue: '')
  final String? businessLicenseImage0;
  @JsonKey(
      name: 'business_license_image1', includeIfNull: false, defaultValue: '')
  final String? businessLicenseImage1;
  @JsonKey(
      name: 'artiket_place_of_shipment_name',
      includeIfNull: false,
      defaultValue: '')
  final String? artiketPlaceOfShipmentName;
  @JsonKey(
      name: 'artiket_place_of_shipment', includeIfNull: false, defaultValue: '')
  final String? artiketPlaceOfShipment;
  @JsonKey(
      name: 'artiket_place_of_shipment_number0',
      includeIfNull: false,
      defaultValue: '')
  final String? artiketPlaceOfShipmentNumber0;
  @JsonKey(
      name: 'artiket_place_of_shipment_number1',
      includeIfNull: false,
      defaultValue: '')
  final String? artiketPlaceOfShipmentNumber1;
  @JsonKey(name: 'refund_address_name', includeIfNull: false, defaultValue: '')
  final String? refundAddressName;
  @JsonKey(name: 'refund_address', includeIfNull: false, defaultValue: '')
  final String? refundAddress;
  @JsonKey(name: 'refund_number0', includeIfNull: false, defaultValue: '')
  final String? refundNumber0;
  @JsonKey(name: 'refund_number1', includeIfNull: false, defaultValue: '')
  final String? refundNumber1;
  @JsonKey(name: 'user_bank', includeIfNull: false, defaultValue: '')
  final String? userBank;
  @JsonKey(name: 'user_account_name', includeIfNull: false, defaultValue: '')
  final String? userAccountName;
  @JsonKey(name: 'user_account_number', includeIfNull: false, defaultValue: '')
  final String? userAccountNumber;
  @JsonKey(name: 'user_account_image', includeIfNull: false, defaultValue: '')
  final String? userAccountImage;
  @JsonKey(name: 'username_used', includeIfNull: false)
  final bool? usernameUsed;
  @JsonKey(name: 'username_used_at', includeIfNull: false)
  final DateTime? usernameUsedAt;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String? email;
  @JsonKey(name: 'email_valid', includeIfNull: false)
  final bool? emailValid;
  @JsonKey(name: 'phone', includeIfNull: false, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'phone_valid', includeIfNull: false)
  final bool? phoneValid;
  @JsonKey(name: 'user_phone', includeIfNull: false, defaultValue: '')
  final String? userPhone;
  @JsonKey(name: 'user_first_name', includeIfNull: false, defaultValue: '')
  final String? userFirstName;
  @JsonKey(name: 'user_last_name', includeIfNull: false, defaultValue: '')
  final String? userLastName;
  @JsonKey(name: 'user_nickname', includeIfNull: false, defaultValue: '')
  final String? userNickname;
  @JsonKey(name: 'user_birth', includeIfNull: false, defaultValue: '')
  final String? userBirth;
  @JsonKey(name: 'user_dial_code', includeIfNull: false, defaultValue: '')
  final String? userDialCode;
  @JsonKey(name: 'user_iso_code', includeIfNull: false, defaultValue: '')
  final String? userIsoCode;
  @JsonKey(name: 'profile_image', includeIfNull: false, defaultValue: '')
  final String? profileImage;
  @JsonKey(name: 'profile_bio', includeIfNull: false, defaultValue: '')
  final String? profileBio;
  @JsonKey(name: 'role_type', includeIfNull: false, defaultValue: '')
  final String? roleType;
  @JsonKey(name: 'role_level', includeIfNull: false)
  final int? roleLevel;
  @JsonKey(name: 'geo_latitude', includeIfNull: false)
  final double? geoLatitude;
  @JsonKey(name: 'geo_longitude', includeIfNull: false)
  final double? geoLongitude;
  @JsonKey(name: 'timezone', includeIfNull: false)
  final double? timezone;
  @JsonKey(name: 'blocked_issue', includeIfNull: false, defaultValue: '')
  final String? blockedIssue;
  @JsonKey(name: 'blocked', includeIfNull: false)
  final bool? blocked;
  @JsonKey(name: 'blocked_at', includeIfNull: false)
  final DateTime? blockedAt;
  @JsonKey(name: 'agreed', includeIfNull: false, defaultValue: '')
  final String? agreed;
  @JsonKey(name: 'agreed_at', includeIfNull: false)
  final DateTime? agreedAt;
  @JsonKey(name: 'memo', includeIfNull: false, defaultValue: '')
  final String? memo;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$UserFromJson;
  static const toJsonFactory = _$UserToJson;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is User &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality()
                    .equals(other.storeId, storeId)) &&
            (identical(other.account, account) ||
                const DeepCollectionEquality()
                    .equals(other.account, account)) &&
            (identical(other.userMode, userMode) ||
                const DeepCollectionEquality()
                    .equals(other.userMode, userMode)) &&
            (identical(other.userPassword, userPassword) ||
                const DeepCollectionEquality()
                    .equals(other.userPassword, userPassword)) &&
            (identical(other.userType, userType) ||
                const DeepCollectionEquality()
                    .equals(other.userType, userType)) &&
            (identical(other.sellerType, sellerType) ||
                const DeepCollectionEquality()
                    .equals(other.sellerType, sellerType)) &&
            (identical(other.userNumber, userNumber) ||
                const DeepCollectionEquality()
                    .equals(other.userNumber, userNumber)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)) &&
            (identical(other.userBirthday, userBirthday) ||
                const DeepCollectionEquality()
                    .equals(other.userBirthday, userBirthday)) &&
            (identical(other.userGender, userGender) ||
                const DeepCollectionEquality()
                    .equals(other.userGender, userGender)) &&
            (identical(other.userAddress, userAddress) ||
                const DeepCollectionEquality()
                    .equals(other.userAddress, userAddress)) &&
            (identical(other.artiketName, artiketName) ||
                const DeepCollectionEquality()
                    .equals(other.artiketName, artiketName)) &&
            (identical(other.artiketIntroduceContent, artiketIntroduceContent) ||
                const DeepCollectionEquality().equals(
                    other.artiketIntroduceContent, artiketIntroduceContent)) &&
            (identical(other.artiketProfileImageApprove, artiketProfileImageApprove) ||
                const DeepCollectionEquality().equals(
                    other.artiketProfileImageApprove,
                    artiketProfileImageApprove)) &&
            (identical(other.artiketProfileImage, artiketProfileImage) ||
                const DeepCollectionEquality()
                    .equals(other.artiketProfileImage, artiketProfileImage)) &&
            (identical(other.artiketCoverImageApprove, artiketCoverImageApprove) ||
                const DeepCollectionEquality().equals(
                    other.artiketCoverImageApprove,
                    artiketCoverImageApprove)) &&
            (identical(other.artiketCoverImage, artiketCoverImage) ||
                const DeepCollectionEquality()
                    .equals(other.artiketCoverImage, artiketCoverImage)) &&
            (identical(other.artiketSCNumber, artiketSCNumber) || const DeepCollectionEquality().equals(other.artiketSCNumber, artiketSCNumber)) &&
            (identical(other.storeStatus, storeStatus) || const DeepCollectionEquality().equals(other.storeStatus, storeStatus)) &&
            (identical(other.storeStatusDescription, storeStatusDescription) || const DeepCollectionEquality().equals(other.storeStatusDescription, storeStatusDescription)) &&
            (identical(other.artiketRepresentativeCategory, artiketRepresentativeCategory) || const DeepCollectionEquality().equals(other.artiketRepresentativeCategory, artiketRepresentativeCategory)) &&
            (identical(other.artiketRepresentativeImage, artiketRepresentativeImage) || const DeepCollectionEquality().equals(other.artiketRepresentativeImage, artiketRepresentativeImage)) &&
            (identical(other.businessNumber0, businessNumber0) || const DeepCollectionEquality().equals(other.businessNumber0, businessNumber0)) &&
            (identical(other.businessNumber1, businessNumber1) || const DeepCollectionEquality().equals(other.businessNumber1, businessNumber1)) &&
            (identical(other.businessCompanyName, businessCompanyName) || const DeepCollectionEquality().equals(other.businessCompanyName, businessCompanyName)) &&
            (identical(other.businessType, businessType) || const DeepCollectionEquality().equals(other.businessType, businessType)) &&
            (identical(other.businessCeoName, businessCeoName) || const DeepCollectionEquality().equals(other.businessCeoName, businessCeoName)) &&
            (identical(other.businessCompanyAddress, businessCompanyAddress) || const DeepCollectionEquality().equals(other.businessCompanyAddress, businessCompanyAddress)) &&
            (identical(other.onlineMarketingBusinessNumber, onlineMarketingBusinessNumber) || const DeepCollectionEquality().equals(other.onlineMarketingBusinessNumber, onlineMarketingBusinessNumber)) &&
            (identical(other.businessLicenseImage0, businessLicenseImage0) || const DeepCollectionEquality().equals(other.businessLicenseImage0, businessLicenseImage0)) &&
            (identical(other.businessLicenseImage1, businessLicenseImage1) || const DeepCollectionEquality().equals(other.businessLicenseImage1, businessLicenseImage1)) &&
            (identical(other.artiketPlaceOfShipmentName, artiketPlaceOfShipmentName) || const DeepCollectionEquality().equals(other.artiketPlaceOfShipmentName, artiketPlaceOfShipmentName)) &&
            (identical(other.artiketPlaceOfShipment, artiketPlaceOfShipment) || const DeepCollectionEquality().equals(other.artiketPlaceOfShipment, artiketPlaceOfShipment)) &&
            (identical(other.artiketPlaceOfShipmentNumber0, artiketPlaceOfShipmentNumber0) || const DeepCollectionEquality().equals(other.artiketPlaceOfShipmentNumber0, artiketPlaceOfShipmentNumber0)) &&
            (identical(other.artiketPlaceOfShipmentNumber1, artiketPlaceOfShipmentNumber1) || const DeepCollectionEquality().equals(other.artiketPlaceOfShipmentNumber1, artiketPlaceOfShipmentNumber1)) &&
            (identical(other.refundAddressName, refundAddressName) || const DeepCollectionEquality().equals(other.refundAddressName, refundAddressName)) &&
            (identical(other.refundAddress, refundAddress) || const DeepCollectionEquality().equals(other.refundAddress, refundAddress)) &&
            (identical(other.refundNumber0, refundNumber0) || const DeepCollectionEquality().equals(other.refundNumber0, refundNumber0)) &&
            (identical(other.refundNumber1, refundNumber1) || const DeepCollectionEquality().equals(other.refundNumber1, refundNumber1)) &&
            (identical(other.userBank, userBank) || const DeepCollectionEquality().equals(other.userBank, userBank)) &&
            (identical(other.userAccountName, userAccountName) || const DeepCollectionEquality().equals(other.userAccountName, userAccountName)) &&
            (identical(other.userAccountNumber, userAccountNumber) || const DeepCollectionEquality().equals(other.userAccountNumber, userAccountNumber)) &&
            (identical(other.userAccountImage, userAccountImage) || const DeepCollectionEquality().equals(other.userAccountImage, userAccountImage)) &&
            (identical(other.usernameUsed, usernameUsed) || const DeepCollectionEquality().equals(other.usernameUsed, usernameUsed)) &&
            (identical(other.usernameUsedAt, usernameUsedAt) || const DeepCollectionEquality().equals(other.usernameUsedAt, usernameUsedAt)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emailValid, emailValid) || const DeepCollectionEquality().equals(other.emailValid, emailValid)) &&
            (identical(other.phone, phone) || const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.phoneValid, phoneValid) || const DeepCollectionEquality().equals(other.phoneValid, phoneValid)) &&
            (identical(other.userPhone, userPhone) || const DeepCollectionEquality().equals(other.userPhone, userPhone)) &&
            (identical(other.userFirstName, userFirstName) || const DeepCollectionEquality().equals(other.userFirstName, userFirstName)) &&
            (identical(other.userLastName, userLastName) || const DeepCollectionEquality().equals(other.userLastName, userLastName)) &&
            (identical(other.userNickname, userNickname) || const DeepCollectionEquality().equals(other.userNickname, userNickname)) &&
            (identical(other.userBirth, userBirth) || const DeepCollectionEquality().equals(other.userBirth, userBirth)) &&
            (identical(other.userDialCode, userDialCode) || const DeepCollectionEquality().equals(other.userDialCode, userDialCode)) &&
            (identical(other.userIsoCode, userIsoCode) || const DeepCollectionEquality().equals(other.userIsoCode, userIsoCode)) &&
            (identical(other.profileImage, profileImage) || const DeepCollectionEquality().equals(other.profileImage, profileImage)) &&
            (identical(other.profileBio, profileBio) || const DeepCollectionEquality().equals(other.profileBio, profileBio)) &&
            (identical(other.roleType, roleType) || const DeepCollectionEquality().equals(other.roleType, roleType)) &&
            (identical(other.roleLevel, roleLevel) || const DeepCollectionEquality().equals(other.roleLevel, roleLevel)) &&
            (identical(other.geoLatitude, geoLatitude) || const DeepCollectionEquality().equals(other.geoLatitude, geoLatitude)) &&
            (identical(other.geoLongitude, geoLongitude) || const DeepCollectionEquality().equals(other.geoLongitude, geoLongitude)) &&
            (identical(other.timezone, timezone) || const DeepCollectionEquality().equals(other.timezone, timezone)) &&
            (identical(other.blockedIssue, blockedIssue) || const DeepCollectionEquality().equals(other.blockedIssue, blockedIssue)) &&
            (identical(other.blocked, blocked) || const DeepCollectionEquality().equals(other.blocked, blocked)) &&
            (identical(other.blockedAt, blockedAt) || const DeepCollectionEquality().equals(other.blockedAt, blockedAt)) &&
            (identical(other.agreed, agreed) || const DeepCollectionEquality().equals(other.agreed, agreed)) &&
            (identical(other.agreedAt, agreedAt) || const DeepCollectionEquality().equals(other.agreedAt, agreedAt)) &&
            (identical(other.memo, memo) || const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.extras, extras) || const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) || const DeepCollectionEquality().equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) || const DeepCollectionEquality().equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) || const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) || const DeepCollectionEquality().equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) || const DeepCollectionEquality().equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(storeId) ^
      const DeepCollectionEquality().hash(account) ^
      const DeepCollectionEquality().hash(userMode) ^
      const DeepCollectionEquality().hash(userPassword) ^
      const DeepCollectionEquality().hash(userType) ^
      const DeepCollectionEquality().hash(sellerType) ^
      const DeepCollectionEquality().hash(userNumber) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userEmail) ^
      const DeepCollectionEquality().hash(userBirthday) ^
      const DeepCollectionEquality().hash(userGender) ^
      const DeepCollectionEquality().hash(userAddress) ^
      const DeepCollectionEquality().hash(artiketName) ^
      const DeepCollectionEquality().hash(artiketIntroduceContent) ^
      const DeepCollectionEquality().hash(artiketProfileImageApprove) ^
      const DeepCollectionEquality().hash(artiketProfileImage) ^
      const DeepCollectionEquality().hash(artiketCoverImageApprove) ^
      const DeepCollectionEquality().hash(artiketCoverImage) ^
      const DeepCollectionEquality().hash(artiketSCNumber) ^
      const DeepCollectionEquality().hash(storeStatus) ^
      const DeepCollectionEquality().hash(storeStatusDescription) ^
      const DeepCollectionEquality().hash(artiketRepresentativeCategory) ^
      const DeepCollectionEquality().hash(artiketRepresentativeImage) ^
      const DeepCollectionEquality().hash(businessNumber0) ^
      const DeepCollectionEquality().hash(businessNumber1) ^
      const DeepCollectionEquality().hash(businessCompanyName) ^
      const DeepCollectionEquality().hash(businessType) ^
      const DeepCollectionEquality().hash(businessCeoName) ^
      const DeepCollectionEquality().hash(businessCompanyAddress) ^
      const DeepCollectionEquality().hash(onlineMarketingBusinessNumber) ^
      const DeepCollectionEquality().hash(businessLicenseImage0) ^
      const DeepCollectionEquality().hash(businessLicenseImage1) ^
      const DeepCollectionEquality().hash(artiketPlaceOfShipmentName) ^
      const DeepCollectionEquality().hash(artiketPlaceOfShipment) ^
      const DeepCollectionEquality().hash(artiketPlaceOfShipmentNumber0) ^
      const DeepCollectionEquality().hash(artiketPlaceOfShipmentNumber1) ^
      const DeepCollectionEquality().hash(refundAddressName) ^
      const DeepCollectionEquality().hash(refundAddress) ^
      const DeepCollectionEquality().hash(refundNumber0) ^
      const DeepCollectionEquality().hash(refundNumber1) ^
      const DeepCollectionEquality().hash(userBank) ^
      const DeepCollectionEquality().hash(userAccountName) ^
      const DeepCollectionEquality().hash(userAccountNumber) ^
      const DeepCollectionEquality().hash(userAccountImage) ^
      const DeepCollectionEquality().hash(usernameUsed) ^
      const DeepCollectionEquality().hash(usernameUsedAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emailValid) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(phoneValid) ^
      const DeepCollectionEquality().hash(userPhone) ^
      const DeepCollectionEquality().hash(userFirstName) ^
      const DeepCollectionEquality().hash(userLastName) ^
      const DeepCollectionEquality().hash(userNickname) ^
      const DeepCollectionEquality().hash(userBirth) ^
      const DeepCollectionEquality().hash(userDialCode) ^
      const DeepCollectionEquality().hash(userIsoCode) ^
      const DeepCollectionEquality().hash(profileImage) ^
      const DeepCollectionEquality().hash(profileBio) ^
      const DeepCollectionEquality().hash(roleType) ^
      const DeepCollectionEquality().hash(roleLevel) ^
      const DeepCollectionEquality().hash(geoLatitude) ^
      const DeepCollectionEquality().hash(geoLongitude) ^
      const DeepCollectionEquality().hash(timezone) ^
      const DeepCollectionEquality().hash(blockedIssue) ^
      const DeepCollectionEquality().hash(blocked) ^
      const DeepCollectionEquality().hash(blockedAt) ^
      const DeepCollectionEquality().hash(agreed) ^
      const DeepCollectionEquality().hash(agreedAt) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $UserExtension on User {
  User copyWith(
      {int? uid,
      int? storeId,
      String? account,
      String? userMode,
      String? userPassword,
      String? userType,
      String? sellerType,
      String? userNumber,
      String? userName,
      String? userEmail,
      DateTime? userBirthday,
      String? userGender,
      String? userAddress,
      String? artiketName,
      String? artiketIntroduceContent,
      String? artiketProfileImageApprove,
      String? artiketProfileImage,
      String? artiketCoverImageApprove,
      String? artiketCoverImage,
      String? artiketSCNumber,
      String? storeStatus,
      String? storeStatusDescription,
      String? artiketRepresentativeCategory,
      String? artiketRepresentativeImage,
      String? businessNumber0,
      String? businessNumber1,
      String? businessCompanyName,
      String? businessType,
      String? businessCeoName,
      String? businessCompanyAddress,
      String? onlineMarketingBusinessNumber,
      String? businessLicenseImage0,
      String? businessLicenseImage1,
      String? artiketPlaceOfShipmentName,
      String? artiketPlaceOfShipment,
      String? artiketPlaceOfShipmentNumber0,
      String? artiketPlaceOfShipmentNumber1,
      String? refundAddressName,
      String? refundAddress,
      String? refundNumber0,
      String? refundNumber1,
      String? userBank,
      String? userAccountName,
      String? userAccountNumber,
      String? userAccountImage,
      bool? usernameUsed,
      DateTime? usernameUsedAt,
      String? email,
      bool? emailValid,
      String? phone,
      bool? phoneValid,
      String? userPhone,
      String? userFirstName,
      String? userLastName,
      String? userNickname,
      String? userBirth,
      String? userDialCode,
      String? userIsoCode,
      String? profileImage,
      String? profileBio,
      String? roleType,
      int? roleLevel,
      double? geoLatitude,
      double? geoLongitude,
      double? timezone,
      String? blockedIssue,
      bool? blocked,
      DateTime? blockedAt,
      String? agreed,
      DateTime? agreedAt,
      String? memo,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return User(
        uid: uid ?? this.uid,
        storeId: storeId ?? this.storeId,
        account: account ?? this.account,
        userMode: userMode ?? this.userMode,
        userPassword: userPassword ?? this.userPassword,
        userType: userType ?? this.userType,
        sellerType: sellerType ?? this.sellerType,
        userNumber: userNumber ?? this.userNumber,
        userName: userName ?? this.userName,
        userEmail: userEmail ?? this.userEmail,
        userBirthday: userBirthday ?? this.userBirthday,
        userGender: userGender ?? this.userGender,
        userAddress: userAddress ?? this.userAddress,
        artiketName: artiketName ?? this.artiketName,
        artiketIntroduceContent:
            artiketIntroduceContent ?? this.artiketIntroduceContent,
        artiketProfileImageApprove:
            artiketProfileImageApprove ?? this.artiketProfileImageApprove,
        artiketProfileImage: artiketProfileImage ?? this.artiketProfileImage,
        artiketCoverImageApprove:
            artiketCoverImageApprove ?? this.artiketCoverImageApprove,
        artiketCoverImage: artiketCoverImage ?? this.artiketCoverImage,
        artiketSCNumber: artiketSCNumber ?? this.artiketSCNumber,
        storeStatus: storeStatus ?? this.storeStatus,
        storeStatusDescription:
            storeStatusDescription ?? this.storeStatusDescription,
        artiketRepresentativeCategory:
            artiketRepresentativeCategory ?? this.artiketRepresentativeCategory,
        artiketRepresentativeImage:
            artiketRepresentativeImage ?? this.artiketRepresentativeImage,
        businessNumber0: businessNumber0 ?? this.businessNumber0,
        businessNumber1: businessNumber1 ?? this.businessNumber1,
        businessCompanyName: businessCompanyName ?? this.businessCompanyName,
        businessType: businessType ?? this.businessType,
        businessCeoName: businessCeoName ?? this.businessCeoName,
        businessCompanyAddress:
            businessCompanyAddress ?? this.businessCompanyAddress,
        onlineMarketingBusinessNumber:
            onlineMarketingBusinessNumber ?? this.onlineMarketingBusinessNumber,
        businessLicenseImage0:
            businessLicenseImage0 ?? this.businessLicenseImage0,
        businessLicenseImage1:
            businessLicenseImage1 ?? this.businessLicenseImage1,
        artiketPlaceOfShipmentName:
            artiketPlaceOfShipmentName ?? this.artiketPlaceOfShipmentName,
        artiketPlaceOfShipment:
            artiketPlaceOfShipment ?? this.artiketPlaceOfShipment,
        artiketPlaceOfShipmentNumber0:
            artiketPlaceOfShipmentNumber0 ?? this.artiketPlaceOfShipmentNumber0,
        artiketPlaceOfShipmentNumber1:
            artiketPlaceOfShipmentNumber1 ?? this.artiketPlaceOfShipmentNumber1,
        refundAddressName: refundAddressName ?? this.refundAddressName,
        refundAddress: refundAddress ?? this.refundAddress,
        refundNumber0: refundNumber0 ?? this.refundNumber0,
        refundNumber1: refundNumber1 ?? this.refundNumber1,
        userBank: userBank ?? this.userBank,
        userAccountName: userAccountName ?? this.userAccountName,
        userAccountNumber: userAccountNumber ?? this.userAccountNumber,
        userAccountImage: userAccountImage ?? this.userAccountImage,
        usernameUsed: usernameUsed ?? this.usernameUsed,
        usernameUsedAt: usernameUsedAt ?? this.usernameUsedAt,
        email: email ?? this.email,
        emailValid: emailValid ?? this.emailValid,
        phone: phone ?? this.phone,
        phoneValid: phoneValid ?? this.phoneValid,
        userPhone: userPhone ?? this.userPhone,
        userFirstName: userFirstName ?? this.userFirstName,
        userLastName: userLastName ?? this.userLastName,
        userNickname: userNickname ?? this.userNickname,
        userBirth: userBirth ?? this.userBirth,
        userDialCode: userDialCode ?? this.userDialCode,
        userIsoCode: userIsoCode ?? this.userIsoCode,
        profileImage: profileImage ?? this.profileImage,
        profileBio: profileBio ?? this.profileBio,
        roleType: roleType ?? this.roleType,
        roleLevel: roleLevel ?? this.roleLevel,
        geoLatitude: geoLatitude ?? this.geoLatitude,
        geoLongitude: geoLongitude ?? this.geoLongitude,
        timezone: timezone ?? this.timezone,
        blockedIssue: blockedIssue ?? this.blockedIssue,
        blocked: blocked ?? this.blocked,
        blockedAt: blockedAt ?? this.blockedAt,
        agreed: agreed ?? this.agreed,
        agreedAt: agreedAt ?? this.agreedAt,
        memo: memo ?? this.memo,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class UserAccessCode {
  UserAccessCode({
    required this.uid,
    required this.userId,
    required this.accessCode,
    this.accessExpiredAt,
    this.sessionToken,
    this.extras,
    required this.status,
    this.requestedAt,
    this.accessedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserAccessCode.fromJson(Map<String, dynamic> json) =>
      _$UserAccessCodeFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int userId;
  @JsonKey(name: 'access_code', includeIfNull: false, defaultValue: '')
  final String accessCode;
  @JsonKey(name: 'access_expired_at', includeIfNull: false)
  final DateTime? accessExpiredAt;
  @JsonKey(name: 'session_token', includeIfNull: false, defaultValue: '')
  final String? sessionToken;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'status', includeIfNull: false, defaultValue: '')
  final String status;
  @JsonKey(name: 'requested_at', includeIfNull: false)
  final DateTime? requestedAt;
  @JsonKey(name: 'accessed_at', includeIfNull: false)
  final DateTime? accessedAt;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  static const fromJsonFactory = _$UserAccessCodeFromJson;
  static const toJsonFactory = _$UserAccessCodeToJson;
  Map<String, dynamic> toJson() => _$UserAccessCodeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAccessCode &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.accessCode, accessCode) ||
                const DeepCollectionEquality()
                    .equals(other.accessCode, accessCode)) &&
            (identical(other.accessExpiredAt, accessExpiredAt) ||
                const DeepCollectionEquality()
                    .equals(other.accessExpiredAt, accessExpiredAt)) &&
            (identical(other.sessionToken, sessionToken) ||
                const DeepCollectionEquality()
                    .equals(other.sessionToken, sessionToken)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.requestedAt, requestedAt) ||
                const DeepCollectionEquality()
                    .equals(other.requestedAt, requestedAt)) &&
            (identical(other.accessedAt, accessedAt) ||
                const DeepCollectionEquality()
                    .equals(other.accessedAt, accessedAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(accessCode) ^
      const DeepCollectionEquality().hash(accessExpiredAt) ^
      const DeepCollectionEquality().hash(sessionToken) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(requestedAt) ^
      const DeepCollectionEquality().hash(accessedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $UserAccessCodeExtension on UserAccessCode {
  UserAccessCode copyWith(
      {int? uid,
      int? userId,
      String? accessCode,
      DateTime? accessExpiredAt,
      String? sessionToken,
      Object? extras,
      String? status,
      DateTime? requestedAt,
      DateTime? accessedAt,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return UserAccessCode(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        accessCode: accessCode ?? this.accessCode,
        accessExpiredAt: accessExpiredAt ?? this.accessExpiredAt,
        sessionToken: sessionToken ?? this.sessionToken,
        extras: extras ?? this.extras,
        status: status ?? this.status,
        requestedAt: requestedAt ?? this.requestedAt,
        accessedAt: accessedAt ?? this.accessedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class UserAuth {
  UserAuth({
    required this.uid,
    this.userId,
    this.authType,
    this.authId,
    this.authToken,
    this.authExpired,
    this.authEncryption,
    this.authString,
    this.authResetToken,
    this.authResetExpired,
    required this.snsJoin,
    this.snsAccessToken,
    this.smsCode,
    this.smsExpiredAt,
    this.smsExtras,
    required this.emailVerify,
    this.emailCode,
    this.emailExpiredAt,
    this.emailExtras,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserAuth.fromJson(Map<String, dynamic> json) =>
      _$UserAuthFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int? userId;
  @JsonKey(name: 'auth_type', includeIfNull: false, defaultValue: '')
  final String? authType;
  @JsonKey(name: 'auth_id', includeIfNull: false, defaultValue: '')
  final String? authId;
  @JsonKey(name: 'auth_token', includeIfNull: false, defaultValue: '')
  final String? authToken;
  @JsonKey(name: 'auth_expired', includeIfNull: false)
  final DateTime? authExpired;
  @JsonKey(name: 'auth_encryption', includeIfNull: false, defaultValue: '')
  final String? authEncryption;
  @JsonKey(name: 'auth_string', includeIfNull: false, defaultValue: '')
  final String? authString;
  @JsonKey(name: 'auth_reset_token', includeIfNull: false, defaultValue: '')
  final String? authResetToken;
  @JsonKey(name: 'auth_reset_expired', includeIfNull: false)
  final DateTime? authResetExpired;
  @JsonKey(name: 'sns_join', includeIfNull: false)
  final bool snsJoin;
  @JsonKey(name: 'sns_access_token', includeIfNull: false, defaultValue: '')
  final String? snsAccessToken;
  @JsonKey(name: 'sms_code', includeIfNull: false, defaultValue: '')
  final String? smsCode;
  @JsonKey(name: 'sms_expired_at', includeIfNull: false)
  final DateTime? smsExpiredAt;
  @JsonKey(name: 'sms_extras', includeIfNull: false)
  final Object? smsExtras;
  @JsonKey(name: 'email_verify', includeIfNull: false)
  final bool emailVerify;
  @JsonKey(name: 'email_code', includeIfNull: false, defaultValue: '')
  final String? emailCode;
  @JsonKey(name: 'email_expired_at', includeIfNull: false)
  final DateTime? emailExpiredAt;
  @JsonKey(name: 'email_extras', includeIfNull: false)
  final Object? emailExtras;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  static const fromJsonFactory = _$UserAuthFromJson;
  static const toJsonFactory = _$UserAuthToJson;
  Map<String, dynamic> toJson() => _$UserAuthToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAuth &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.authType, authType) ||
                const DeepCollectionEquality()
                    .equals(other.authType, authType)) &&
            (identical(other.authId, authId) ||
                const DeepCollectionEquality().equals(other.authId, authId)) &&
            (identical(other.authToken, authToken) ||
                const DeepCollectionEquality()
                    .equals(other.authToken, authToken)) &&
            (identical(other.authExpired, authExpired) ||
                const DeepCollectionEquality()
                    .equals(other.authExpired, authExpired)) &&
            (identical(other.authEncryption, authEncryption) ||
                const DeepCollectionEquality()
                    .equals(other.authEncryption, authEncryption)) &&
            (identical(other.authString, authString) ||
                const DeepCollectionEquality()
                    .equals(other.authString, authString)) &&
            (identical(other.authResetToken, authResetToken) ||
                const DeepCollectionEquality()
                    .equals(other.authResetToken, authResetToken)) &&
            (identical(other.authResetExpired, authResetExpired) ||
                const DeepCollectionEquality()
                    .equals(other.authResetExpired, authResetExpired)) &&
            (identical(other.snsJoin, snsJoin) ||
                const DeepCollectionEquality()
                    .equals(other.snsJoin, snsJoin)) &&
            (identical(other.snsAccessToken, snsAccessToken) ||
                const DeepCollectionEquality()
                    .equals(other.snsAccessToken, snsAccessToken)) &&
            (identical(other.smsCode, smsCode) ||
                const DeepCollectionEquality()
                    .equals(other.smsCode, smsCode)) &&
            (identical(other.smsExpiredAt, smsExpiredAt) ||
                const DeepCollectionEquality()
                    .equals(other.smsExpiredAt, smsExpiredAt)) &&
            (identical(other.smsExtras, smsExtras) ||
                const DeepCollectionEquality()
                    .equals(other.smsExtras, smsExtras)) &&
            (identical(other.emailVerify, emailVerify) ||
                const DeepCollectionEquality()
                    .equals(other.emailVerify, emailVerify)) &&
            (identical(other.emailCode, emailCode) ||
                const DeepCollectionEquality()
                    .equals(other.emailCode, emailCode)) &&
            (identical(other.emailExpiredAt, emailExpiredAt) ||
                const DeepCollectionEquality()
                    .equals(other.emailExpiredAt, emailExpiredAt)) &&
            (identical(other.emailExtras, emailExtras) ||
                const DeepCollectionEquality()
                    .equals(other.emailExtras, emailExtras)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(authType) ^
      const DeepCollectionEquality().hash(authId) ^
      const DeepCollectionEquality().hash(authToken) ^
      const DeepCollectionEquality().hash(authExpired) ^
      const DeepCollectionEquality().hash(authEncryption) ^
      const DeepCollectionEquality().hash(authString) ^
      const DeepCollectionEquality().hash(authResetToken) ^
      const DeepCollectionEquality().hash(authResetExpired) ^
      const DeepCollectionEquality().hash(snsJoin) ^
      const DeepCollectionEquality().hash(snsAccessToken) ^
      const DeepCollectionEquality().hash(smsCode) ^
      const DeepCollectionEquality().hash(smsExpiredAt) ^
      const DeepCollectionEquality().hash(smsExtras) ^
      const DeepCollectionEquality().hash(emailVerify) ^
      const DeepCollectionEquality().hash(emailCode) ^
      const DeepCollectionEquality().hash(emailExpiredAt) ^
      const DeepCollectionEquality().hash(emailExtras) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $UserAuthExtension on UserAuth {
  UserAuth copyWith(
      {int? uid,
      int? userId,
      String? authType,
      String? authId,
      String? authToken,
      DateTime? authExpired,
      String? authEncryption,
      String? authString,
      String? authResetToken,
      DateTime? authResetExpired,
      bool? snsJoin,
      String? snsAccessToken,
      String? smsCode,
      DateTime? smsExpiredAt,
      Object? smsExtras,
      bool? emailVerify,
      String? emailCode,
      DateTime? emailExpiredAt,
      Object? emailExtras,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return UserAuth(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        authType: authType ?? this.authType,
        authId: authId ?? this.authId,
        authToken: authToken ?? this.authToken,
        authExpired: authExpired ?? this.authExpired,
        authEncryption: authEncryption ?? this.authEncryption,
        authString: authString ?? this.authString,
        authResetToken: authResetToken ?? this.authResetToken,
        authResetExpired: authResetExpired ?? this.authResetExpired,
        snsJoin: snsJoin ?? this.snsJoin,
        snsAccessToken: snsAccessToken ?? this.snsAccessToken,
        smsCode: smsCode ?? this.smsCode,
        smsExpiredAt: smsExpiredAt ?? this.smsExpiredAt,
        smsExtras: smsExtras ?? this.smsExtras,
        emailVerify: emailVerify ?? this.emailVerify,
        emailCode: emailCode ?? this.emailCode,
        emailExpiredAt: emailExpiredAt ?? this.emailExpiredAt,
        emailExtras: emailExtras ?? this.emailExtras,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class UserDevice {
  UserDevice({
    required this.uid,
    this.userId,
    required this.deviceId,
    this.deviceType,
    this.deviceName,
    this.deviceLocale,
    this.deviceModel,
    this.deviceDeny,
    this.deviceUserAgent,
    this.osType,
    this.osVersion,
    this.appVersion,
    this.appPushToken,
    this.geoLatitude,
    this.geoLongitude,
    this.pushAllowed,
    this.pushAllowedAt,
    this.locationAllowed,
    this.locationAllowedAt,
    required this.lastestConnectedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserDevice.fromJson(Map<String, dynamic> json) =>
      _$UserDeviceFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int? userId;
  @JsonKey(name: 'device_id', includeIfNull: false, defaultValue: '')
  final String deviceId;
  @JsonKey(name: 'device_type', includeIfNull: false, defaultValue: '')
  final String? deviceType;
  @JsonKey(name: 'device_name', includeIfNull: false, defaultValue: '')
  final String? deviceName;
  @JsonKey(name: 'device_locale', includeIfNull: false, defaultValue: '')
  final String? deviceLocale;
  @JsonKey(name: 'device_model', includeIfNull: false, defaultValue: '')
  final String? deviceModel;
  @JsonKey(name: 'device_deny', includeIfNull: false)
  final bool? deviceDeny;
  @JsonKey(name: 'device_user_agent', includeIfNull: false, defaultValue: '')
  final String? deviceUserAgent;
  @JsonKey(name: 'os_type', includeIfNull: false, defaultValue: '')
  final String? osType;
  @JsonKey(name: 'os_version', includeIfNull: false, defaultValue: '')
  final String? osVersion;
  @JsonKey(name: 'app_version', includeIfNull: false, defaultValue: '')
  final String? appVersion;
  @JsonKey(name: 'app_push_token', includeIfNull: false, defaultValue: '')
  final String? appPushToken;
  @JsonKey(name: 'geo_latitude', includeIfNull: false)
  final double? geoLatitude;
  @JsonKey(name: 'geo_longitude', includeIfNull: false)
  final double? geoLongitude;
  @JsonKey(name: 'push_allowed', includeIfNull: false)
  final bool? pushAllowed;
  @JsonKey(name: 'push_allowed_at', includeIfNull: false)
  final DateTime? pushAllowedAt;
  @JsonKey(name: 'location_allowed', includeIfNull: false)
  final bool? locationAllowed;
  @JsonKey(name: 'location_allowed_at', includeIfNull: false)
  final DateTime? locationAllowedAt;
  @JsonKey(name: 'lastest_connected_at', includeIfNull: false)
  final DateTime lastestConnectedAt;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  static const fromJsonFactory = _$UserDeviceFromJson;
  static const toJsonFactory = _$UserDeviceToJson;
  Map<String, dynamic> toJson() => _$UserDeviceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserDevice &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.deviceId, deviceId) ||
                const DeepCollectionEquality()
                    .equals(other.deviceId, deviceId)) &&
            (identical(other.deviceType, deviceType) ||
                const DeepCollectionEquality()
                    .equals(other.deviceType, deviceType)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.deviceLocale, deviceLocale) ||
                const DeepCollectionEquality()
                    .equals(other.deviceLocale, deviceLocale)) &&
            (identical(other.deviceModel, deviceModel) ||
                const DeepCollectionEquality()
                    .equals(other.deviceModel, deviceModel)) &&
            (identical(other.deviceDeny, deviceDeny) ||
                const DeepCollectionEquality()
                    .equals(other.deviceDeny, deviceDeny)) &&
            (identical(other.deviceUserAgent, deviceUserAgent) ||
                const DeepCollectionEquality()
                    .equals(other.deviceUserAgent, deviceUserAgent)) &&
            (identical(other.osType, osType) ||
                const DeepCollectionEquality().equals(other.osType, osType)) &&
            (identical(other.osVersion, osVersion) ||
                const DeepCollectionEquality()
                    .equals(other.osVersion, osVersion)) &&
            (identical(other.appVersion, appVersion) ||
                const DeepCollectionEquality()
                    .equals(other.appVersion, appVersion)) &&
            (identical(other.appPushToken, appPushToken) ||
                const DeepCollectionEquality()
                    .equals(other.appPushToken, appPushToken)) &&
            (identical(other.geoLatitude, geoLatitude) ||
                const DeepCollectionEquality()
                    .equals(other.geoLatitude, geoLatitude)) &&
            (identical(other.geoLongitude, geoLongitude) ||
                const DeepCollectionEquality()
                    .equals(other.geoLongitude, geoLongitude)) &&
            (identical(other.pushAllowed, pushAllowed) ||
                const DeepCollectionEquality()
                    .equals(other.pushAllowed, pushAllowed)) &&
            (identical(other.pushAllowedAt, pushAllowedAt) ||
                const DeepCollectionEquality()
                    .equals(other.pushAllowedAt, pushAllowedAt)) &&
            (identical(other.locationAllowed, locationAllowed) ||
                const DeepCollectionEquality()
                    .equals(other.locationAllowed, locationAllowed)) &&
            (identical(other.locationAllowedAt, locationAllowedAt) ||
                const DeepCollectionEquality()
                    .equals(other.locationAllowedAt, locationAllowedAt)) &&
            (identical(other.lastestConnectedAt, lastestConnectedAt) ||
                const DeepCollectionEquality()
                    .equals(other.lastestConnectedAt, lastestConnectedAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(deviceId) ^
      const DeepCollectionEquality().hash(deviceType) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(deviceLocale) ^
      const DeepCollectionEquality().hash(deviceModel) ^
      const DeepCollectionEquality().hash(deviceDeny) ^
      const DeepCollectionEquality().hash(deviceUserAgent) ^
      const DeepCollectionEquality().hash(osType) ^
      const DeepCollectionEquality().hash(osVersion) ^
      const DeepCollectionEquality().hash(appVersion) ^
      const DeepCollectionEquality().hash(appPushToken) ^
      const DeepCollectionEquality().hash(geoLatitude) ^
      const DeepCollectionEquality().hash(geoLongitude) ^
      const DeepCollectionEquality().hash(pushAllowed) ^
      const DeepCollectionEquality().hash(pushAllowedAt) ^
      const DeepCollectionEquality().hash(locationAllowed) ^
      const DeepCollectionEquality().hash(locationAllowedAt) ^
      const DeepCollectionEquality().hash(lastestConnectedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $UserDeviceExtension on UserDevice {
  UserDevice copyWith(
      {int? uid,
      int? userId,
      String? deviceId,
      String? deviceType,
      String? deviceName,
      String? deviceLocale,
      String? deviceModel,
      bool? deviceDeny,
      String? deviceUserAgent,
      String? osType,
      String? osVersion,
      String? appVersion,
      String? appPushToken,
      double? geoLatitude,
      double? geoLongitude,
      bool? pushAllowed,
      DateTime? pushAllowedAt,
      bool? locationAllowed,
      DateTime? locationAllowedAt,
      DateTime? lastestConnectedAt,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return UserDevice(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        deviceId: deviceId ?? this.deviceId,
        deviceType: deviceType ?? this.deviceType,
        deviceName: deviceName ?? this.deviceName,
        deviceLocale: deviceLocale ?? this.deviceLocale,
        deviceModel: deviceModel ?? this.deviceModel,
        deviceDeny: deviceDeny ?? this.deviceDeny,
        deviceUserAgent: deviceUserAgent ?? this.deviceUserAgent,
        osType: osType ?? this.osType,
        osVersion: osVersion ?? this.osVersion,
        appVersion: appVersion ?? this.appVersion,
        appPushToken: appPushToken ?? this.appPushToken,
        geoLatitude: geoLatitude ?? this.geoLatitude,
        geoLongitude: geoLongitude ?? this.geoLongitude,
        pushAllowed: pushAllowed ?? this.pushAllowed,
        pushAllowedAt: pushAllowedAt ?? this.pushAllowedAt,
        locationAllowed: locationAllowed ?? this.locationAllowed,
        locationAllowedAt: locationAllowedAt ?? this.locationAllowedAt,
        lastestConnectedAt: lastestConnectedAt ?? this.lastestConnectedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class UserRelation {
  UserRelation({
    required this.key,
    required this.userId,
    required this.relationTarget,
    required this.relationTargetId,
    required this.relationTargetTitle,
    required this.relationAction,
    this.relationContent,
    required this.linked,
    this.linkedAt,
    this.extras,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserRelation.fromJson(Map<String, dynamic> json) =>
      _$UserRelationFromJson(json);

  @JsonKey(name: '_key', includeIfNull: false, defaultValue: '')
  final String key;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int userId;
  @JsonKey(name: 'relation_target', includeIfNull: false, defaultValue: '')
  final String relationTarget;
  @JsonKey(name: 'relation_target_id', includeIfNull: false, defaultValue: '')
  final String relationTargetId;
  @JsonKey(
      name: 'relation_target_title', includeIfNull: false, defaultValue: '')
  final String relationTargetTitle;
  @JsonKey(name: 'relation_action', includeIfNull: false, defaultValue: '')
  final String relationAction;
  @JsonKey(name: 'relation_content', includeIfNull: false, defaultValue: '')
  final String? relationContent;
  @JsonKey(name: 'linked', includeIfNull: false)
  final bool linked;
  @JsonKey(name: 'linked_at', includeIfNull: false)
  final DateTime? linkedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  static const fromJsonFactory = _$UserRelationFromJson;
  static const toJsonFactory = _$UserRelationToJson;
  Map<String, dynamic> toJson() => _$UserRelationToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserRelation &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.relationTarget, relationTarget) ||
                const DeepCollectionEquality()
                    .equals(other.relationTarget, relationTarget)) &&
            (identical(other.relationTargetId, relationTargetId) ||
                const DeepCollectionEquality()
                    .equals(other.relationTargetId, relationTargetId)) &&
            (identical(other.relationTargetTitle, relationTargetTitle) ||
                const DeepCollectionEquality()
                    .equals(other.relationTargetTitle, relationTargetTitle)) &&
            (identical(other.relationAction, relationAction) ||
                const DeepCollectionEquality()
                    .equals(other.relationAction, relationAction)) &&
            (identical(other.relationContent, relationContent) ||
                const DeepCollectionEquality()
                    .equals(other.relationContent, relationContent)) &&
            (identical(other.linked, linked) ||
                const DeepCollectionEquality().equals(other.linked, linked)) &&
            (identical(other.linkedAt, linkedAt) ||
                const DeepCollectionEquality()
                    .equals(other.linkedAt, linkedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(relationTarget) ^
      const DeepCollectionEquality().hash(relationTargetId) ^
      const DeepCollectionEquality().hash(relationTargetTitle) ^
      const DeepCollectionEquality().hash(relationAction) ^
      const DeepCollectionEquality().hash(relationContent) ^
      const DeepCollectionEquality().hash(linked) ^
      const DeepCollectionEquality().hash(linkedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $UserRelationExtension on UserRelation {
  UserRelation copyWith(
      {String? key,
      int? userId,
      String? relationTarget,
      String? relationTargetId,
      String? relationTargetTitle,
      String? relationAction,
      String? relationContent,
      bool? linked,
      DateTime? linkedAt,
      Object? extras,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return UserRelation(
        key: key ?? this.key,
        userId: userId ?? this.userId,
        relationTarget: relationTarget ?? this.relationTarget,
        relationTargetId: relationTargetId ?? this.relationTargetId,
        relationTargetTitle: relationTargetTitle ?? this.relationTargetTitle,
        relationAction: relationAction ?? this.relationAction,
        relationContent: relationContent ?? this.relationContent,
        linked: linked ?? this.linked,
        linkedAt: linkedAt ?? this.linkedAt,
        extras: extras ?? this.extras,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Billing {
  Billing({
    required this.uid,
    required this.userId,
    required this.cardCode,
    required this.cardName,
    required this.cardNumber,
    required this.cardExpirationYear,
    required this.cardExpirationMonth,
    this.cardPlaceholderName,
    required this.cardEncData,
    required this.isPrimary,
    this.isPrimaryAt,
    this.billingGateway,
    this.billingOrderUid,
    this.billingTransactionUid,
    this.billingData,
    this.billingKey,
    required this.authorized,
    this.authorizedAt,
    this.status,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Billing.fromJson(Map<String, dynamic> json) =>
      _$BillingFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int userId;
  @JsonKey(name: 'card_code', includeIfNull: false, defaultValue: '')
  final String cardCode;
  @JsonKey(name: 'card_name', includeIfNull: false, defaultValue: '')
  final String cardName;
  @JsonKey(name: 'card_number', includeIfNull: false, defaultValue: '')
  final String cardNumber;
  @JsonKey(name: 'card_expiration_year', includeIfNull: false, defaultValue: '')
  final String cardExpirationYear;
  @JsonKey(
      name: 'card_expiration_month', includeIfNull: false, defaultValue: '')
  final String cardExpirationMonth;
  @JsonKey(
      name: 'card_placeholder_name', includeIfNull: false, defaultValue: '')
  final String? cardPlaceholderName;
  @JsonKey(name: 'card_enc_data', includeIfNull: false, defaultValue: '')
  final String cardEncData;
  @JsonKey(name: 'is_primary', includeIfNull: false)
  final bool isPrimary;
  @JsonKey(name: 'is_primary_at', includeIfNull: false)
  final DateTime? isPrimaryAt;
  @JsonKey(name: 'billing_gateway', includeIfNull: false, defaultValue: '')
  final String? billingGateway;
  @JsonKey(name: 'billing_order_uid', includeIfNull: false, defaultValue: '')
  final String? billingOrderUid;
  @JsonKey(
      name: 'billing_transaction_uid', includeIfNull: false, defaultValue: '')
  final String? billingTransactionUid;
  @JsonKey(name: 'billing_data', includeIfNull: false)
  final Object? billingData;
  @JsonKey(name: 'billing_key', includeIfNull: false, defaultValue: '')
  final String? billingKey;
  @JsonKey(name: 'authorized', includeIfNull: false)
  final bool authorized;
  @JsonKey(name: 'authorized_at', includeIfNull: false)
  final DateTime? authorizedAt;
  @JsonKey(name: 'status', includeIfNull: false, defaultValue: '')
  final String? status;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$BillingFromJson;
  static const toJsonFactory = _$BillingToJson;
  Map<String, dynamic> toJson() => _$BillingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Billing &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.cardCode, cardCode) ||
                const DeepCollectionEquality()
                    .equals(other.cardCode, cardCode)) &&
            (identical(other.cardName, cardName) ||
                const DeepCollectionEquality()
                    .equals(other.cardName, cardName)) &&
            (identical(other.cardNumber, cardNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cardNumber, cardNumber)) &&
            (identical(other.cardExpirationYear, cardExpirationYear) ||
                const DeepCollectionEquality()
                    .equals(other.cardExpirationYear, cardExpirationYear)) &&
            (identical(other.cardExpirationMonth, cardExpirationMonth) ||
                const DeepCollectionEquality()
                    .equals(other.cardExpirationMonth, cardExpirationMonth)) &&
            (identical(other.cardPlaceholderName, cardPlaceholderName) ||
                const DeepCollectionEquality()
                    .equals(other.cardPlaceholderName, cardPlaceholderName)) &&
            (identical(other.cardEncData, cardEncData) ||
                const DeepCollectionEquality()
                    .equals(other.cardEncData, cardEncData)) &&
            (identical(other.isPrimary, isPrimary) ||
                const DeepCollectionEquality()
                    .equals(other.isPrimary, isPrimary)) &&
            (identical(other.isPrimaryAt, isPrimaryAt) ||
                const DeepCollectionEquality()
                    .equals(other.isPrimaryAt, isPrimaryAt)) &&
            (identical(other.billingGateway, billingGateway) ||
                const DeepCollectionEquality()
                    .equals(other.billingGateway, billingGateway)) &&
            (identical(other.billingOrderUid, billingOrderUid) ||
                const DeepCollectionEquality()
                    .equals(other.billingOrderUid, billingOrderUid)) &&
            (identical(other.billingTransactionUid, billingTransactionUid) ||
                const DeepCollectionEquality().equals(
                    other.billingTransactionUid, billingTransactionUid)) &&
            (identical(other.billingData, billingData) ||
                const DeepCollectionEquality()
                    .equals(other.billingData, billingData)) &&
            (identical(other.billingKey, billingKey) ||
                const DeepCollectionEquality()
                    .equals(other.billingKey, billingKey)) &&
            (identical(other.authorized, authorized) ||
                const DeepCollectionEquality()
                    .equals(other.authorized, authorized)) &&
            (identical(other.authorizedAt, authorizedAt) ||
                const DeepCollectionEquality()
                    .equals(other.authorizedAt, authorizedAt)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(cardCode) ^
      const DeepCollectionEquality().hash(cardName) ^
      const DeepCollectionEquality().hash(cardNumber) ^
      const DeepCollectionEquality().hash(cardExpirationYear) ^
      const DeepCollectionEquality().hash(cardExpirationMonth) ^
      const DeepCollectionEquality().hash(cardPlaceholderName) ^
      const DeepCollectionEquality().hash(cardEncData) ^
      const DeepCollectionEquality().hash(isPrimary) ^
      const DeepCollectionEquality().hash(isPrimaryAt) ^
      const DeepCollectionEquality().hash(billingGateway) ^
      const DeepCollectionEquality().hash(billingOrderUid) ^
      const DeepCollectionEquality().hash(billingTransactionUid) ^
      const DeepCollectionEquality().hash(billingData) ^
      const DeepCollectionEquality().hash(billingKey) ^
      const DeepCollectionEquality().hash(authorized) ^
      const DeepCollectionEquality().hash(authorizedAt) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $BillingExtension on Billing {
  Billing copyWith(
      {int? uid,
      int? userId,
      String? cardCode,
      String? cardName,
      String? cardNumber,
      String? cardExpirationYear,
      String? cardExpirationMonth,
      String? cardPlaceholderName,
      String? cardEncData,
      bool? isPrimary,
      DateTime? isPrimaryAt,
      String? billingGateway,
      String? billingOrderUid,
      String? billingTransactionUid,
      Object? billingData,
      String? billingKey,
      bool? authorized,
      DateTime? authorizedAt,
      String? status,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Billing(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        cardCode: cardCode ?? this.cardCode,
        cardName: cardName ?? this.cardName,
        cardNumber: cardNumber ?? this.cardNumber,
        cardExpirationYear: cardExpirationYear ?? this.cardExpirationYear,
        cardExpirationMonth: cardExpirationMonth ?? this.cardExpirationMonth,
        cardPlaceholderName: cardPlaceholderName ?? this.cardPlaceholderName,
        cardEncData: cardEncData ?? this.cardEncData,
        isPrimary: isPrimary ?? this.isPrimary,
        isPrimaryAt: isPrimaryAt ?? this.isPrimaryAt,
        billingGateway: billingGateway ?? this.billingGateway,
        billingOrderUid: billingOrderUid ?? this.billingOrderUid,
        billingTransactionUid:
            billingTransactionUid ?? this.billingTransactionUid,
        billingData: billingData ?? this.billingData,
        billingKey: billingKey ?? this.billingKey,
        authorized: authorized ?? this.authorized,
        authorizedAt: authorizedAt ?? this.authorizedAt,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Receipt {
  Receipt({
    required this.uid,
    required this.userId,
    required this.orderUid,
    this.products,
    this.reserve,
    this.billing,
    this.paymentGateway,
    this.paymentMethod,
    this.paymentUnit,
    this.paymentOrigin,
    this.paymentAmount,
    this.paymentTax,
    this.paymentShipping,
    this.paymentFee,
    this.paymentTotal,
    this.transactionType,
    this.transactionUid,
    this.transactionData,
    this.transactionAt,
    this.vbankNum,
    this.vbankDate,
    this.vbankName,
    this.paidUnit,
    this.paidExchange,
    this.paidTotal,
    this.paid,
    this.paidAt,
    this.cancelReason,
    this.cancelReasonDetail,
    this.canceled,
    this.canceledAt,
    this.refundType,
    this.refundMethod,
    this.refundUnit,
    this.refundTotal,
    this.refunded,
    required this.refundedAt,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Receipt.fromJson(Map<String, dynamic> json) =>
      _$ReceiptFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int userId;
  @JsonKey(name: 'order_uid', includeIfNull: false, defaultValue: '')
  final String orderUid;
  @JsonKey(name: 'products', includeIfNull: false)
  final Object? products;
  @JsonKey(name: 'reserve', includeIfNull: false)
  final Object? reserve;
  @JsonKey(name: 'billing', includeIfNull: false)
  final Object? billing;
  @JsonKey(name: 'payment_gateway', includeIfNull: false, defaultValue: '')
  final String? paymentGateway;
  @JsonKey(name: 'payment_method', includeIfNull: false, defaultValue: '')
  final String? paymentMethod;
  @JsonKey(name: 'payment_unit', includeIfNull: false, defaultValue: '')
  final String? paymentUnit;
  @JsonKey(name: 'payment_origin', includeIfNull: false)
  final double? paymentOrigin;
  @JsonKey(name: 'payment_amount', includeIfNull: false)
  final double? paymentAmount;
  @JsonKey(name: 'payment_tax', includeIfNull: false)
  final double? paymentTax;
  @JsonKey(name: 'payment_shipping', includeIfNull: false)
  final double? paymentShipping;
  @JsonKey(name: 'payment_fee', includeIfNull: false)
  final double? paymentFee;
  @JsonKey(name: 'payment_total', includeIfNull: false)
  final double? paymentTotal;
  @JsonKey(name: 'transaction_type', includeIfNull: false, defaultValue: '')
  final String? transactionType;
  @JsonKey(name: 'transaction_uid', includeIfNull: false, defaultValue: '')
  final String? transactionUid;
  @JsonKey(name: 'transaction_data', includeIfNull: false, defaultValue: '')
  final String? transactionData;
  @JsonKey(name: 'transaction_at', includeIfNull: false)
  final DateTime? transactionAt;
  @JsonKey(name: 'vbank_num', includeIfNull: false, defaultValue: '')
  final String? vbankNum;
  @JsonKey(name: 'vbank_date', includeIfNull: false, defaultValue: '')
  final String? vbankDate;
  @JsonKey(name: 'vbank_name', includeIfNull: false, defaultValue: '')
  final String? vbankName;
  @JsonKey(name: 'paid_unit', includeIfNull: false, defaultValue: '')
  final String? paidUnit;
  @JsonKey(name: 'paid_exchange', includeIfNull: false)
  final double? paidExchange;
  @JsonKey(name: 'paid_total', includeIfNull: false)
  final double? paidTotal;
  @JsonKey(name: 'paid', includeIfNull: false)
  final bool? paid;
  @JsonKey(name: 'paid_at', includeIfNull: false)
  final DateTime? paidAt;
  @JsonKey(name: 'cancel_reason', includeIfNull: false, defaultValue: '')
  final String? cancelReason;
  @JsonKey(name: 'cancel_reason_detail', includeIfNull: false, defaultValue: '')
  final String? cancelReasonDetail;
  @JsonKey(name: 'canceled', includeIfNull: false)
  final bool? canceled;
  @JsonKey(name: 'canceled_at', includeIfNull: false)
  final DateTime? canceledAt;
  @JsonKey(name: 'refund_type', includeIfNull: false, defaultValue: '')
  final String? refundType;
  @JsonKey(name: 'refund_method', includeIfNull: false, defaultValue: '')
  final String? refundMethod;
  @JsonKey(name: 'refund_unit', includeIfNull: false, defaultValue: '')
  final String? refundUnit;
  @JsonKey(name: 'refund_total', includeIfNull: false)
  final double? refundTotal;
  @JsonKey(name: 'refunded', includeIfNull: false)
  final bool? refunded;
  @JsonKey(name: 'refunded_at', includeIfNull: false)
  final DateTime refundedAt;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$ReceiptFromJson;
  static const toJsonFactory = _$ReceiptToJson;
  Map<String, dynamic> toJson() => _$ReceiptToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Receipt &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.orderUid, orderUid) ||
                const DeepCollectionEquality()
                    .equals(other.orderUid, orderUid)) &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
            (identical(other.reserve, reserve) ||
                const DeepCollectionEquality()
                    .equals(other.reserve, reserve)) &&
            (identical(other.billing, billing) ||
                const DeepCollectionEquality()
                    .equals(other.billing, billing)) &&
            (identical(other.paymentGateway, paymentGateway) ||
                const DeepCollectionEquality()
                    .equals(other.paymentGateway, paymentGateway)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.paymentUnit, paymentUnit) ||
                const DeepCollectionEquality()
                    .equals(other.paymentUnit, paymentUnit)) &&
            (identical(other.paymentOrigin, paymentOrigin) ||
                const DeepCollectionEquality()
                    .equals(other.paymentOrigin, paymentOrigin)) &&
            (identical(other.paymentAmount, paymentAmount) ||
                const DeepCollectionEquality()
                    .equals(other.paymentAmount, paymentAmount)) &&
            (identical(other.paymentTax, paymentTax) ||
                const DeepCollectionEquality()
                    .equals(other.paymentTax, paymentTax)) &&
            (identical(other.paymentShipping, paymentShipping) ||
                const DeepCollectionEquality()
                    .equals(other.paymentShipping, paymentShipping)) &&
            (identical(other.paymentFee, paymentFee) ||
                const DeepCollectionEquality()
                    .equals(other.paymentFee, paymentFee)) &&
            (identical(other.paymentTotal, paymentTotal) ||
                const DeepCollectionEquality()
                    .equals(other.paymentTotal, paymentTotal)) &&
            (identical(other.transactionType, transactionType) ||
                const DeepCollectionEquality()
                    .equals(other.transactionType, transactionType)) &&
            (identical(other.transactionUid, transactionUid) ||
                const DeepCollectionEquality()
                    .equals(other.transactionUid, transactionUid)) &&
            (identical(other.transactionData, transactionData) ||
                const DeepCollectionEquality()
                    .equals(other.transactionData, transactionData)) &&
            (identical(other.transactionAt, transactionAt) ||
                const DeepCollectionEquality()
                    .equals(other.transactionAt, transactionAt)) &&
            (identical(other.vbankNum, vbankNum) ||
                const DeepCollectionEquality()
                    .equals(other.vbankNum, vbankNum)) &&
            (identical(other.vbankDate, vbankDate) ||
                const DeepCollectionEquality()
                    .equals(other.vbankDate, vbankDate)) &&
            (identical(other.vbankName, vbankName) ||
                const DeepCollectionEquality()
                    .equals(other.vbankName, vbankName)) &&
            (identical(other.paidUnit, paidUnit) ||
                const DeepCollectionEquality().equals(other.paidUnit, paidUnit)) &&
            (identical(other.paidExchange, paidExchange) || const DeepCollectionEquality().equals(other.paidExchange, paidExchange)) &&
            (identical(other.paidTotal, paidTotal) || const DeepCollectionEquality().equals(other.paidTotal, paidTotal)) &&
            (identical(other.paid, paid) || const DeepCollectionEquality().equals(other.paid, paid)) &&
            (identical(other.paidAt, paidAt) || const DeepCollectionEquality().equals(other.paidAt, paidAt)) &&
            (identical(other.cancelReason, cancelReason) || const DeepCollectionEquality().equals(other.cancelReason, cancelReason)) &&
            (identical(other.cancelReasonDetail, cancelReasonDetail) || const DeepCollectionEquality().equals(other.cancelReasonDetail, cancelReasonDetail)) &&
            (identical(other.canceled, canceled) || const DeepCollectionEquality().equals(other.canceled, canceled)) &&
            (identical(other.canceledAt, canceledAt) || const DeepCollectionEquality().equals(other.canceledAt, canceledAt)) &&
            (identical(other.refundType, refundType) || const DeepCollectionEquality().equals(other.refundType, refundType)) &&
            (identical(other.refundMethod, refundMethod) || const DeepCollectionEquality().equals(other.refundMethod, refundMethod)) &&
            (identical(other.refundUnit, refundUnit) || const DeepCollectionEquality().equals(other.refundUnit, refundUnit)) &&
            (identical(other.refundTotal, refundTotal) || const DeepCollectionEquality().equals(other.refundTotal, refundTotal)) &&
            (identical(other.refunded, refunded) || const DeepCollectionEquality().equals(other.refunded, refunded)) &&
            (identical(other.refundedAt, refundedAt) || const DeepCollectionEquality().equals(other.refundedAt, refundedAt)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) || const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) || const DeepCollectionEquality().equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) || const DeepCollectionEquality().equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(orderUid) ^
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(reserve) ^
      const DeepCollectionEquality().hash(billing) ^
      const DeepCollectionEquality().hash(paymentGateway) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(paymentUnit) ^
      const DeepCollectionEquality().hash(paymentOrigin) ^
      const DeepCollectionEquality().hash(paymentAmount) ^
      const DeepCollectionEquality().hash(paymentTax) ^
      const DeepCollectionEquality().hash(paymentShipping) ^
      const DeepCollectionEquality().hash(paymentFee) ^
      const DeepCollectionEquality().hash(paymentTotal) ^
      const DeepCollectionEquality().hash(transactionType) ^
      const DeepCollectionEquality().hash(transactionUid) ^
      const DeepCollectionEquality().hash(transactionData) ^
      const DeepCollectionEquality().hash(transactionAt) ^
      const DeepCollectionEquality().hash(vbankNum) ^
      const DeepCollectionEquality().hash(vbankDate) ^
      const DeepCollectionEquality().hash(vbankName) ^
      const DeepCollectionEquality().hash(paidUnit) ^
      const DeepCollectionEquality().hash(paidExchange) ^
      const DeepCollectionEquality().hash(paidTotal) ^
      const DeepCollectionEquality().hash(paid) ^
      const DeepCollectionEquality().hash(paidAt) ^
      const DeepCollectionEquality().hash(cancelReason) ^
      const DeepCollectionEquality().hash(cancelReasonDetail) ^
      const DeepCollectionEquality().hash(canceled) ^
      const DeepCollectionEquality().hash(canceledAt) ^
      const DeepCollectionEquality().hash(refundType) ^
      const DeepCollectionEquality().hash(refundMethod) ^
      const DeepCollectionEquality().hash(refundUnit) ^
      const DeepCollectionEquality().hash(refundTotal) ^
      const DeepCollectionEquality().hash(refunded) ^
      const DeepCollectionEquality().hash(refundedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $ReceiptExtension on Receipt {
  Receipt copyWith(
      {int? uid,
      int? userId,
      String? orderUid,
      Object? products,
      Object? reserve,
      Object? billing,
      String? paymentGateway,
      String? paymentMethod,
      String? paymentUnit,
      double? paymentOrigin,
      double? paymentAmount,
      double? paymentTax,
      double? paymentShipping,
      double? paymentFee,
      double? paymentTotal,
      String? transactionType,
      String? transactionUid,
      String? transactionData,
      DateTime? transactionAt,
      String? vbankNum,
      String? vbankDate,
      String? vbankName,
      String? paidUnit,
      double? paidExchange,
      double? paidTotal,
      bool? paid,
      DateTime? paidAt,
      String? cancelReason,
      String? cancelReasonDetail,
      bool? canceled,
      DateTime? canceledAt,
      String? refundType,
      String? refundMethod,
      String? refundUnit,
      double? refundTotal,
      bool? refunded,
      DateTime? refundedAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Receipt(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        orderUid: orderUid ?? this.orderUid,
        products: products ?? this.products,
        reserve: reserve ?? this.reserve,
        billing: billing ?? this.billing,
        paymentGateway: paymentGateway ?? this.paymentGateway,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        paymentUnit: paymentUnit ?? this.paymentUnit,
        paymentOrigin: paymentOrigin ?? this.paymentOrigin,
        paymentAmount: paymentAmount ?? this.paymentAmount,
        paymentTax: paymentTax ?? this.paymentTax,
        paymentShipping: paymentShipping ?? this.paymentShipping,
        paymentFee: paymentFee ?? this.paymentFee,
        paymentTotal: paymentTotal ?? this.paymentTotal,
        transactionType: transactionType ?? this.transactionType,
        transactionUid: transactionUid ?? this.transactionUid,
        transactionData: transactionData ?? this.transactionData,
        transactionAt: transactionAt ?? this.transactionAt,
        vbankNum: vbankNum ?? this.vbankNum,
        vbankDate: vbankDate ?? this.vbankDate,
        vbankName: vbankName ?? this.vbankName,
        paidUnit: paidUnit ?? this.paidUnit,
        paidExchange: paidExchange ?? this.paidExchange,
        paidTotal: paidTotal ?? this.paidTotal,
        paid: paid ?? this.paid,
        paidAt: paidAt ?? this.paidAt,
        cancelReason: cancelReason ?? this.cancelReason,
        cancelReasonDetail: cancelReasonDetail ?? this.cancelReasonDetail,
        canceled: canceled ?? this.canceled,
        canceledAt: canceledAt ?? this.canceledAt,
        refundType: refundType ?? this.refundType,
        refundMethod: refundMethod ?? this.refundMethod,
        refundUnit: refundUnit ?? this.refundUnit,
        refundTotal: refundTotal ?? this.refundTotal,
        refunded: refunded ?? this.refunded,
        refundedAt: refundedAt ?? this.refundedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Subscription {
  Subscription({
    required this.uid,
    required this.userId,
    required this.productId,
    required this.receiptId,
    required this.subscribeType,
    required this.subscribeIssueType,
    this.subscribeExpiredAt,
    this.issuedAt,
    this.extras,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int userId;
  @JsonKey(name: 'product_id', includeIfNull: false)
  final int productId;
  @JsonKey(name: 'receipt_id', includeIfNull: false)
  final int receiptId;
  @JsonKey(name: 'subscribe_type', includeIfNull: false, defaultValue: '')
  final String subscribeType;
  @JsonKey(name: 'subscribe_issue_type', includeIfNull: false, defaultValue: '')
  final String subscribeIssueType;
  @JsonKey(name: 'subscribe_expired_at', includeIfNull: false)
  final DateTime? subscribeExpiredAt;
  @JsonKey(name: 'issued_at', includeIfNull: false)
  final DateTime? issuedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$SubscriptionFromJson;
  static const toJsonFactory = _$SubscriptionToJson;
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Subscription &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.receiptId, receiptId) ||
                const DeepCollectionEquality()
                    .equals(other.receiptId, receiptId)) &&
            (identical(other.subscribeType, subscribeType) ||
                const DeepCollectionEquality()
                    .equals(other.subscribeType, subscribeType)) &&
            (identical(other.subscribeIssueType, subscribeIssueType) ||
                const DeepCollectionEquality()
                    .equals(other.subscribeIssueType, subscribeIssueType)) &&
            (identical(other.subscribeExpiredAt, subscribeExpiredAt) ||
                const DeepCollectionEquality()
                    .equals(other.subscribeExpiredAt, subscribeExpiredAt)) &&
            (identical(other.issuedAt, issuedAt) ||
                const DeepCollectionEquality()
                    .equals(other.issuedAt, issuedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(receiptId) ^
      const DeepCollectionEquality().hash(subscribeType) ^
      const DeepCollectionEquality().hash(subscribeIssueType) ^
      const DeepCollectionEquality().hash(subscribeExpiredAt) ^
      const DeepCollectionEquality().hash(issuedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $SubscriptionExtension on Subscription {
  Subscription copyWith(
      {int? uid,
      int? userId,
      int? productId,
      int? receiptId,
      String? subscribeType,
      String? subscribeIssueType,
      DateTime? subscribeExpiredAt,
      DateTime? issuedAt,
      Object? extras,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Subscription(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        productId: productId ?? this.productId,
        receiptId: receiptId ?? this.receiptId,
        subscribeType: subscribeType ?? this.subscribeType,
        subscribeIssueType: subscribeIssueType ?? this.subscribeIssueType,
        subscribeExpiredAt: subscribeExpiredAt ?? this.subscribeExpiredAt,
        issuedAt: issuedAt ?? this.issuedAt,
        extras: extras ?? this.extras,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Transaction {
  Transaction({
    required this.uid,
    this.userId,
    required this.transactionUid,
    this.refId,
    this.type,
    this.paidTotal,
    this.status,
    this.data,
    this.extras,
    this.receiptId,
    this.targetId,
    this.transactionName,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int? userId;
  @JsonKey(name: 'transaction_uid', includeIfNull: false, defaultValue: '')
  final String transactionUid;
  @JsonKey(name: 'ref_id', includeIfNull: false, defaultValue: '')
  final String? refId;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  final String? type;
  @JsonKey(name: 'paid_total', includeIfNull: false)
  final double? paidTotal;
  @JsonKey(name: 'status', includeIfNull: false, defaultValue: '')
  final String? status;
  @JsonKey(name: 'data', includeIfNull: false)
  final Object? data;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'receipt_id', includeIfNull: false)
  final int? receiptId;
  @JsonKey(name: 'target_id', includeIfNull: false)
  final int? targetId;
  @JsonKey(name: 'transaction_name', includeIfNull: false, defaultValue: '')
  final String? transactionName;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$TransactionFromJson;
  static const toJsonFactory = _$TransactionToJson;
  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Transaction &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.transactionUid, transactionUid) ||
                const DeepCollectionEquality()
                    .equals(other.transactionUid, transactionUid)) &&
            (identical(other.refId, refId) ||
                const DeepCollectionEquality().equals(other.refId, refId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.paidTotal, paidTotal) ||
                const DeepCollectionEquality()
                    .equals(other.paidTotal, paidTotal)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.receiptId, receiptId) ||
                const DeepCollectionEquality()
                    .equals(other.receiptId, receiptId)) &&
            (identical(other.targetId, targetId) ||
                const DeepCollectionEquality()
                    .equals(other.targetId, targetId)) &&
            (identical(other.transactionName, transactionName) ||
                const DeepCollectionEquality()
                    .equals(other.transactionName, transactionName)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(transactionUid) ^
      const DeepCollectionEquality().hash(refId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(paidTotal) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(receiptId) ^
      const DeepCollectionEquality().hash(targetId) ^
      const DeepCollectionEquality().hash(transactionName) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $TransactionExtension on Transaction {
  Transaction copyWith(
      {int? uid,
      int? userId,
      String? transactionUid,
      String? refId,
      String? type,
      double? paidTotal,
      String? status,
      Object? data,
      Object? extras,
      int? receiptId,
      int? targetId,
      String? transactionName,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Transaction(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        transactionUid: transactionUid ?? this.transactionUid,
        refId: refId ?? this.refId,
        type: type ?? this.type,
        paidTotal: paidTotal ?? this.paidTotal,
        status: status ?? this.status,
        data: data ?? this.data,
        extras: extras ?? this.extras,
        receiptId: receiptId ?? this.receiptId,
        targetId: targetId ?? this.targetId,
        transactionName: transactionName ?? this.transactionName,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Posts {
  Posts({
    required this.uid,
    this.postNumber,
    this.postType,
    this.postGroup,
    this.postParentTarget,
    this.postParentId,
    this.postDepth,
    this.postOrder,
    this.postTitle,
    this.postContent,
    this.postMarkdownUsed,
    this.postMarkdown,
    this.postSummary,
    this.linkedTarget,
    this.linkedTargetId,
    this.tags,
    this.campaignId,
    this.userId,
    this.userName,
    this.userEmail,
    this.userPassword,
    this.profileImage,
    this.permission,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.hidden,
    this.hiddenAt,
    required this.blocked,
    this.blockedAt,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'post_number', includeIfNull: false, defaultValue: '')
  final String? postNumber;
  @JsonKey(name: 'post_type', includeIfNull: false, defaultValue: '')
  final String? postType;
  @JsonKey(name: 'post_group', includeIfNull: false, defaultValue: '')
  final String? postGroup;
  @JsonKey(name: 'post_parent_target', includeIfNull: false, defaultValue: '')
  final String? postParentTarget;
  @JsonKey(name: 'post_parent_id', includeIfNull: false)
  final int? postParentId;
  @JsonKey(name: 'post_depth', includeIfNull: false)
  final int? postDepth;
  @JsonKey(name: 'post_order', includeIfNull: false)
  final int? postOrder;
  @JsonKey(name: 'post_title', includeIfNull: false, defaultValue: '')
  final String? postTitle;
  @JsonKey(name: 'post_content', includeIfNull: false, defaultValue: '')
  final String? postContent;
  @JsonKey(name: 'post_markdown_used', includeIfNull: false)
  final bool? postMarkdownUsed;
  @JsonKey(name: 'post_markdown', includeIfNull: false, defaultValue: '')
  final String? postMarkdown;
  @JsonKey(name: 'post_summary', includeIfNull: false, defaultValue: '')
  final String? postSummary;
  @JsonKey(name: 'linked_target', includeIfNull: false, defaultValue: '')
  final String? linkedTarget;
  @JsonKey(name: 'linked_target_id', includeIfNull: false, defaultValue: '')
  final String? linkedTargetId;
  @JsonKey(name: 'tags', includeIfNull: false, defaultValue: '')
  final String? tags;
  @JsonKey(name: 'campaign_id', includeIfNull: false)
  final int? campaignId;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int? userId;
  @JsonKey(name: 'user_name', includeIfNull: false, defaultValue: '')
  final String? userName;
  @JsonKey(name: 'user_email', includeIfNull: false, defaultValue: '')
  final String? userEmail;
  @JsonKey(name: 'user_password', includeIfNull: false, defaultValue: '')
  final String? userPassword;
  @JsonKey(name: 'profile_image', includeIfNull: false, defaultValue: '')
  final String? profileImage;
  @JsonKey(name: 'permission', includeIfNull: false)
  final int? permission;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'hidden', includeIfNull: false)
  final bool hidden;
  @JsonKey(name: 'hidden_at', includeIfNull: false)
  final DateTime? hiddenAt;
  @JsonKey(name: 'blocked', includeIfNull: false)
  final bool blocked;
  @JsonKey(name: 'blocked_at', includeIfNull: false)
  final DateTime? blockedAt;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$PostsFromJson;
  static const toJsonFactory = _$PostsToJson;
  Map<String, dynamic> toJson() => _$PostsToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Posts &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.postNumber, postNumber) ||
                const DeepCollectionEquality()
                    .equals(other.postNumber, postNumber)) &&
            (identical(other.postType, postType) ||
                const DeepCollectionEquality()
                    .equals(other.postType, postType)) &&
            (identical(other.postGroup, postGroup) ||
                const DeepCollectionEquality()
                    .equals(other.postGroup, postGroup)) &&
            (identical(other.postParentTarget, postParentTarget) ||
                const DeepCollectionEquality()
                    .equals(other.postParentTarget, postParentTarget)) &&
            (identical(other.postParentId, postParentId) ||
                const DeepCollectionEquality()
                    .equals(other.postParentId, postParentId)) &&
            (identical(other.postDepth, postDepth) ||
                const DeepCollectionEquality()
                    .equals(other.postDepth, postDepth)) &&
            (identical(other.postOrder, postOrder) ||
                const DeepCollectionEquality()
                    .equals(other.postOrder, postOrder)) &&
            (identical(other.postTitle, postTitle) ||
                const DeepCollectionEquality()
                    .equals(other.postTitle, postTitle)) &&
            (identical(other.postContent, postContent) ||
                const DeepCollectionEquality()
                    .equals(other.postContent, postContent)) &&
            (identical(other.postMarkdownUsed, postMarkdownUsed) ||
                const DeepCollectionEquality()
                    .equals(other.postMarkdownUsed, postMarkdownUsed)) &&
            (identical(other.postMarkdown, postMarkdown) ||
                const DeepCollectionEquality()
                    .equals(other.postMarkdown, postMarkdown)) &&
            (identical(other.postSummary, postSummary) ||
                const DeepCollectionEquality()
                    .equals(other.postSummary, postSummary)) &&
            (identical(other.linkedTarget, linkedTarget) ||
                const DeepCollectionEquality()
                    .equals(other.linkedTarget, linkedTarget)) &&
            (identical(other.linkedTargetId, linkedTargetId) ||
                const DeepCollectionEquality()
                    .equals(other.linkedTargetId, linkedTargetId)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.campaignId, campaignId) ||
                const DeepCollectionEquality()
                    .equals(other.campaignId, campaignId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userEmail, userEmail) ||
                const DeepCollectionEquality()
                    .equals(other.userEmail, userEmail)) &&
            (identical(other.userPassword, userPassword) ||
                const DeepCollectionEquality()
                    .equals(other.userPassword, userPassword)) &&
            (identical(other.profileImage, profileImage) ||
                const DeepCollectionEquality()
                    .equals(other.profileImage, profileImage)) &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality()
                    .equals(other.permission, permission)) &&
            (identical(other.extras, extras) || const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) || const DeepCollectionEquality().equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) || const DeepCollectionEquality().equals(other.resources, resources)) &&
            (identical(other.hidden, hidden) || const DeepCollectionEquality().equals(other.hidden, hidden)) &&
            (identical(other.hiddenAt, hiddenAt) || const DeepCollectionEquality().equals(other.hiddenAt, hiddenAt)) &&
            (identical(other.blocked, blocked) || const DeepCollectionEquality().equals(other.blocked, blocked)) &&
            (identical(other.blockedAt, blockedAt) || const DeepCollectionEquality().equals(other.blockedAt, blockedAt)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) || const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) || const DeepCollectionEquality().equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) || const DeepCollectionEquality().equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(postNumber) ^
      const DeepCollectionEquality().hash(postType) ^
      const DeepCollectionEquality().hash(postGroup) ^
      const DeepCollectionEquality().hash(postParentTarget) ^
      const DeepCollectionEquality().hash(postParentId) ^
      const DeepCollectionEquality().hash(postDepth) ^
      const DeepCollectionEquality().hash(postOrder) ^
      const DeepCollectionEquality().hash(postTitle) ^
      const DeepCollectionEquality().hash(postContent) ^
      const DeepCollectionEquality().hash(postMarkdownUsed) ^
      const DeepCollectionEquality().hash(postMarkdown) ^
      const DeepCollectionEquality().hash(postSummary) ^
      const DeepCollectionEquality().hash(linkedTarget) ^
      const DeepCollectionEquality().hash(linkedTargetId) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(campaignId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userEmail) ^
      const DeepCollectionEquality().hash(userPassword) ^
      const DeepCollectionEquality().hash(profileImage) ^
      const DeepCollectionEquality().hash(permission) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(hidden) ^
      const DeepCollectionEquality().hash(hiddenAt) ^
      const DeepCollectionEquality().hash(blocked) ^
      const DeepCollectionEquality().hash(blockedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $PostsExtension on Posts {
  Posts copyWith(
      {int? uid,
      String? postNumber,
      String? postType,
      String? postGroup,
      String? postParentTarget,
      int? postParentId,
      int? postDepth,
      int? postOrder,
      String? postTitle,
      String? postContent,
      bool? postMarkdownUsed,
      String? postMarkdown,
      String? postSummary,
      String? linkedTarget,
      String? linkedTargetId,
      String? tags,
      int? campaignId,
      int? userId,
      String? userName,
      String? userEmail,
      String? userPassword,
      String? profileImage,
      int? permission,
      Object? extras,
      String? resourceKey,
      Object? resources,
      bool? hidden,
      DateTime? hiddenAt,
      bool? blocked,
      DateTime? blockedAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Posts(
        uid: uid ?? this.uid,
        postNumber: postNumber ?? this.postNumber,
        postType: postType ?? this.postType,
        postGroup: postGroup ?? this.postGroup,
        postParentTarget: postParentTarget ?? this.postParentTarget,
        postParentId: postParentId ?? this.postParentId,
        postDepth: postDepth ?? this.postDepth,
        postOrder: postOrder ?? this.postOrder,
        postTitle: postTitle ?? this.postTitle,
        postContent: postContent ?? this.postContent,
        postMarkdownUsed: postMarkdownUsed ?? this.postMarkdownUsed,
        postMarkdown: postMarkdown ?? this.postMarkdown,
        postSummary: postSummary ?? this.postSummary,
        linkedTarget: linkedTarget ?? this.linkedTarget,
        linkedTargetId: linkedTargetId ?? this.linkedTargetId,
        tags: tags ?? this.tags,
        campaignId: campaignId ?? this.campaignId,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        userEmail: userEmail ?? this.userEmail,
        userPassword: userPassword ?? this.userPassword,
        profileImage: profileImage ?? this.profileImage,
        permission: permission ?? this.permission,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        hidden: hidden ?? this.hidden,
        hiddenAt: hiddenAt ?? this.hiddenAt,
        blocked: blocked ?? this.blocked,
        blockedAt: blockedAt ?? this.blockedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Product {
  Product({
    required this.uid,
    required this.campaignId,
    required this.storeCode,
    required this.productType,
    required this.productTarget,
    required this.productCode,
    required this.productValueUnit,
    this.productValue,
    required this.priceUnit,
    this.priceOrigin,
    this.price,
    required this.productName,
    required this.productThumbnail,
    required this.stockAmount,
    this.extras,
    required this.sortOrder,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'campaign_id', includeIfNull: false)
  final int campaignId;
  @JsonKey(name: 'store_code', includeIfNull: false, defaultValue: '')
  final String storeCode;
  @JsonKey(name: 'product_type', includeIfNull: false, defaultValue: '')
  final String productType;
  @JsonKey(name: 'product_target', includeIfNull: false, defaultValue: '')
  final String productTarget;
  @JsonKey(name: 'product_code', includeIfNull: false, defaultValue: '')
  final String productCode;
  @JsonKey(name: 'product_value_unit', includeIfNull: false, defaultValue: '')
  final String productValueUnit;
  @JsonKey(name: 'product_value', includeIfNull: false)
  final double? productValue;
  @JsonKey(name: 'price_unit', includeIfNull: false, defaultValue: '')
  final String priceUnit;
  @JsonKey(name: 'price_origin', includeIfNull: false)
  final double? priceOrigin;
  @JsonKey(name: 'price', includeIfNull: false)
  final double? price;
  @JsonKey(name: 'product_name', includeIfNull: false, defaultValue: '')
  final String productName;
  @JsonKey(name: 'product_thumbnail', includeIfNull: false, defaultValue: '')
  final String productThumbnail;
  @JsonKey(name: 'stock_amount', includeIfNull: false, defaultValue: '')
  final String stockAmount;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'sort_order', includeIfNull: false)
  final int sortOrder;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$ProductFromJson;
  static const toJsonFactory = _$ProductToJson;
  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Product &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.campaignId, campaignId) ||
                const DeepCollectionEquality()
                    .equals(other.campaignId, campaignId)) &&
            (identical(other.storeCode, storeCode) ||
                const DeepCollectionEquality()
                    .equals(other.storeCode, storeCode)) &&
            (identical(other.productType, productType) ||
                const DeepCollectionEquality()
                    .equals(other.productType, productType)) &&
            (identical(other.productTarget, productTarget) ||
                const DeepCollectionEquality()
                    .equals(other.productTarget, productTarget)) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality()
                    .equals(other.productCode, productCode)) &&
            (identical(other.productValueUnit, productValueUnit) ||
                const DeepCollectionEquality()
                    .equals(other.productValueUnit, productValueUnit)) &&
            (identical(other.productValue, productValue) ||
                const DeepCollectionEquality()
                    .equals(other.productValue, productValue)) &&
            (identical(other.priceUnit, priceUnit) ||
                const DeepCollectionEquality()
                    .equals(other.priceUnit, priceUnit)) &&
            (identical(other.priceOrigin, priceOrigin) ||
                const DeepCollectionEquality()
                    .equals(other.priceOrigin, priceOrigin)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.productName, productName) ||
                const DeepCollectionEquality()
                    .equals(other.productName, productName)) &&
            (identical(other.productThumbnail, productThumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.productThumbnail, productThumbnail)) &&
            (identical(other.stockAmount, stockAmount) ||
                const DeepCollectionEquality()
                    .equals(other.stockAmount, stockAmount)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.sortOrder, sortOrder) ||
                const DeepCollectionEquality()
                    .equals(other.sortOrder, sortOrder)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(campaignId) ^
      const DeepCollectionEquality().hash(storeCode) ^
      const DeepCollectionEquality().hash(productType) ^
      const DeepCollectionEquality().hash(productTarget) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(productValueUnit) ^
      const DeepCollectionEquality().hash(productValue) ^
      const DeepCollectionEquality().hash(priceUnit) ^
      const DeepCollectionEquality().hash(priceOrigin) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(productName) ^
      const DeepCollectionEquality().hash(productThumbnail) ^
      const DeepCollectionEquality().hash(stockAmount) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(sortOrder) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $ProductExtension on Product {
  Product copyWith(
      {int? uid,
      int? campaignId,
      String? storeCode,
      String? productType,
      String? productTarget,
      String? productCode,
      String? productValueUnit,
      double? productValue,
      String? priceUnit,
      double? priceOrigin,
      double? price,
      String? productName,
      String? productThumbnail,
      String? stockAmount,
      Object? extras,
      int? sortOrder,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Product(
        uid: uid ?? this.uid,
        campaignId: campaignId ?? this.campaignId,
        storeCode: storeCode ?? this.storeCode,
        productType: productType ?? this.productType,
        productTarget: productTarget ?? this.productTarget,
        productCode: productCode ?? this.productCode,
        productValueUnit: productValueUnit ?? this.productValueUnit,
        productValue: productValue ?? this.productValue,
        priceUnit: priceUnit ?? this.priceUnit,
        priceOrigin: priceOrigin ?? this.priceOrigin,
        price: price ?? this.price,
        productName: productName ?? this.productName,
        productThumbnail: productThumbnail ?? this.productThumbnail,
        stockAmount: stockAmount ?? this.stockAmount,
        extras: extras ?? this.extras,
        sortOrder: sortOrder ?? this.sortOrder,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class PushMessage {
  PushMessage({
    required this.uid,
    required this.userId,
    required this.provider,
    required this.messageId,
    required this.messageGroup,
    required this.messageType,
    this.messageTitle,
    required this.messagePayload,
    required this.messagePriority,
    required this.published,
    required this.publishedAt,
    this.extras,
    required this.createdAt,
    required this.updatedAt,
  });

  factory PushMessage.fromJson(Map<String, dynamic> json) =>
      _$PushMessageFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int userId;
  @JsonKey(name: 'provider', includeIfNull: false, defaultValue: '')
  final String provider;
  @JsonKey(name: 'message_id', includeIfNull: false, defaultValue: '')
  final String messageId;
  @JsonKey(name: 'message_group', includeIfNull: false, defaultValue: '')
  final String messageGroup;
  @JsonKey(name: 'message_type', includeIfNull: false, defaultValue: '')
  final String messageType;
  @JsonKey(name: 'message_title', includeIfNull: false, defaultValue: '')
  final String? messageTitle;
  @JsonKey(name: 'message_payload', includeIfNull: false)
  final Object messagePayload;
  @JsonKey(name: 'message_priority', includeIfNull: false, defaultValue: '')
  final String messagePriority;
  @JsonKey(name: 'published', includeIfNull: false)
  final bool published;
  @JsonKey(name: 'published_at', includeIfNull: false)
  final DateTime publishedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  static const fromJsonFactory = _$PushMessageFromJson;
  static const toJsonFactory = _$PushMessageToJson;
  Map<String, dynamic> toJson() => _$PushMessageToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PushMessage &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.provider, provider) ||
                const DeepCollectionEquality()
                    .equals(other.provider, provider)) &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)) &&
            (identical(other.messageGroup, messageGroup) ||
                const DeepCollectionEquality()
                    .equals(other.messageGroup, messageGroup)) &&
            (identical(other.messageType, messageType) ||
                const DeepCollectionEquality()
                    .equals(other.messageType, messageType)) &&
            (identical(other.messageTitle, messageTitle) ||
                const DeepCollectionEquality()
                    .equals(other.messageTitle, messageTitle)) &&
            (identical(other.messagePayload, messagePayload) ||
                const DeepCollectionEquality()
                    .equals(other.messagePayload, messagePayload)) &&
            (identical(other.messagePriority, messagePriority) ||
                const DeepCollectionEquality()
                    .equals(other.messagePriority, messagePriority)) &&
            (identical(other.published, published) ||
                const DeepCollectionEquality()
                    .equals(other.published, published)) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(provider) ^
      const DeepCollectionEquality().hash(messageId) ^
      const DeepCollectionEquality().hash(messageGroup) ^
      const DeepCollectionEquality().hash(messageType) ^
      const DeepCollectionEquality().hash(messageTitle) ^
      const DeepCollectionEquality().hash(messagePayload) ^
      const DeepCollectionEquality().hash(messagePriority) ^
      const DeepCollectionEquality().hash(published) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $PushMessageExtension on PushMessage {
  PushMessage copyWith(
      {int? uid,
      int? userId,
      String? provider,
      String? messageId,
      String? messageGroup,
      String? messageType,
      String? messageTitle,
      Object? messagePayload,
      String? messagePriority,
      bool? published,
      DateTime? publishedAt,
      Object? extras,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return PushMessage(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        provider: provider ?? this.provider,
        messageId: messageId ?? this.messageId,
        messageGroup: messageGroup ?? this.messageGroup,
        messageType: messageType ?? this.messageType,
        messageTitle: messageTitle ?? this.messageTitle,
        messagePayload: messagePayload ?? this.messagePayload,
        messagePriority: messagePriority ?? this.messagePriority,
        published: published ?? this.published,
        publishedAt: publishedAt ?? this.publishedAt,
        extras: extras ?? this.extras,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Resource {
  Resource({
    required this.uid,
    this.resourceType,
    required this.resourceKey,
    this.resourceTag,
    this.resourceStatus,
    this.resourceHash,
    this.resourceUrl,
    this.resourceOrder,
    this.filetype,
    this.filesize,
    this.filename,
    this.extension,
    this.naturalWidth,
    this.naturalHeight,
    this.uploader,
    this.permission,
    required this.createdAt,
    required this.actived,
    required this.activedAt,
    this.archived,
    this.archivedAt,
  });

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'resource_type', includeIfNull: false, defaultValue: '')
  final String? resourceType;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resource_tag', includeIfNull: false, defaultValue: '')
  final String? resourceTag;
  @JsonKey(name: 'resource_status', includeIfNull: false, defaultValue: '')
  final String? resourceStatus;
  @JsonKey(name: 'resource_hash', includeIfNull: false, defaultValue: '')
  final String? resourceHash;
  @JsonKey(name: 'resource_url', includeIfNull: false, defaultValue: '')
  final String? resourceUrl;
  @JsonKey(name: 'resource_order', includeIfNull: false)
  final int? resourceOrder;
  @JsonKey(name: 'filetype', includeIfNull: false, defaultValue: '')
  final String? filetype;
  @JsonKey(name: 'filesize', includeIfNull: false)
  final int? filesize;
  @JsonKey(name: 'filename', includeIfNull: false, defaultValue: '')
  final String? filename;
  @JsonKey(name: 'extension', includeIfNull: false, defaultValue: '')
  final String? extension;
  @JsonKey(name: 'natural_width', includeIfNull: false)
  final int? naturalWidth;
  @JsonKey(name: 'natural_height', includeIfNull: false)
  final int? naturalHeight;
  @JsonKey(name: 'uploader', includeIfNull: false, defaultValue: '')
  final String? uploader;
  @JsonKey(name: 'permission', includeIfNull: false)
  final int? permission;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$ResourceFromJson;
  static const toJsonFactory = _$ResourceToJson;
  Map<String, dynamic> toJson() => _$ResourceToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Resource &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.resourceType, resourceType) ||
                const DeepCollectionEquality()
                    .equals(other.resourceType, resourceType)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resourceTag, resourceTag) ||
                const DeepCollectionEquality()
                    .equals(other.resourceTag, resourceTag)) &&
            (identical(other.resourceStatus, resourceStatus) ||
                const DeepCollectionEquality()
                    .equals(other.resourceStatus, resourceStatus)) &&
            (identical(other.resourceHash, resourceHash) ||
                const DeepCollectionEquality()
                    .equals(other.resourceHash, resourceHash)) &&
            (identical(other.resourceUrl, resourceUrl) ||
                const DeepCollectionEquality()
                    .equals(other.resourceUrl, resourceUrl)) &&
            (identical(other.resourceOrder, resourceOrder) ||
                const DeepCollectionEquality()
                    .equals(other.resourceOrder, resourceOrder)) &&
            (identical(other.filetype, filetype) ||
                const DeepCollectionEquality()
                    .equals(other.filetype, filetype)) &&
            (identical(other.filesize, filesize) ||
                const DeepCollectionEquality()
                    .equals(other.filesize, filesize)) &&
            (identical(other.filename, filename) ||
                const DeepCollectionEquality()
                    .equals(other.filename, filename)) &&
            (identical(other.extension, extension) ||
                const DeepCollectionEquality()
                    .equals(other.extension, extension)) &&
            (identical(other.naturalWidth, naturalWidth) ||
                const DeepCollectionEquality()
                    .equals(other.naturalWidth, naturalWidth)) &&
            (identical(other.naturalHeight, naturalHeight) ||
                const DeepCollectionEquality()
                    .equals(other.naturalHeight, naturalHeight)) &&
            (identical(other.uploader, uploader) ||
                const DeepCollectionEquality()
                    .equals(other.uploader, uploader)) &&
            (identical(other.permission, permission) ||
                const DeepCollectionEquality()
                    .equals(other.permission, permission)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(resourceType) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resourceTag) ^
      const DeepCollectionEquality().hash(resourceStatus) ^
      const DeepCollectionEquality().hash(resourceHash) ^
      const DeepCollectionEquality().hash(resourceUrl) ^
      const DeepCollectionEquality().hash(resourceOrder) ^
      const DeepCollectionEquality().hash(filetype) ^
      const DeepCollectionEquality().hash(filesize) ^
      const DeepCollectionEquality().hash(filename) ^
      const DeepCollectionEquality().hash(extension) ^
      const DeepCollectionEquality().hash(naturalWidth) ^
      const DeepCollectionEquality().hash(naturalHeight) ^
      const DeepCollectionEquality().hash(uploader) ^
      const DeepCollectionEquality().hash(permission) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $ResourceExtension on Resource {
  Resource copyWith(
      {int? uid,
      String? resourceType,
      String? resourceKey,
      String? resourceTag,
      String? resourceStatus,
      String? resourceHash,
      String? resourceUrl,
      int? resourceOrder,
      String? filetype,
      int? filesize,
      String? filename,
      String? extension,
      int? naturalWidth,
      int? naturalHeight,
      String? uploader,
      int? permission,
      DateTime? createdAt,
      bool? actived,
      DateTime? activedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Resource(
        uid: uid ?? this.uid,
        resourceType: resourceType ?? this.resourceType,
        resourceKey: resourceKey ?? this.resourceKey,
        resourceTag: resourceTag ?? this.resourceTag,
        resourceStatus: resourceStatus ?? this.resourceStatus,
        resourceHash: resourceHash ?? this.resourceHash,
        resourceUrl: resourceUrl ?? this.resourceUrl,
        resourceOrder: resourceOrder ?? this.resourceOrder,
        filetype: filetype ?? this.filetype,
        filesize: filesize ?? this.filesize,
        filename: filename ?? this.filename,
        extension: extension ?? this.extension,
        naturalWidth: naturalWidth ?? this.naturalWidth,
        naturalHeight: naturalHeight ?? this.naturalHeight,
        uploader: uploader ?? this.uploader,
        permission: permission ?? this.permission,
        createdAt: createdAt ?? this.createdAt,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ReviewCategory {
  ReviewCategory({
    required this.uid,
    this.reviewCode,
    this.reviewType,
    this.reviewDesc,
    required this.actived,
    required this.activedAt,
    this.archived,
    this.archivedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ReviewCategory.fromJson(Map<String, dynamic> json) =>
      _$ReviewCategoryFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'review_code', includeIfNull: false, defaultValue: '')
  final String? reviewCode;
  @JsonKey(name: 'review_type', includeIfNull: false, defaultValue: '')
  final String? reviewType;
  @JsonKey(name: 'review_desc', includeIfNull: false, defaultValue: '')
  final String? reviewDesc;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  static const fromJsonFactory = _$ReviewCategoryFromJson;
  static const toJsonFactory = _$ReviewCategoryToJson;
  Map<String, dynamic> toJson() => _$ReviewCategoryToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReviewCategory &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.reviewCode, reviewCode) ||
                const DeepCollectionEquality()
                    .equals(other.reviewCode, reviewCode)) &&
            (identical(other.reviewType, reviewType) ||
                const DeepCollectionEquality()
                    .equals(other.reviewType, reviewType)) &&
            (identical(other.reviewDesc, reviewDesc) ||
                const DeepCollectionEquality()
                    .equals(other.reviewDesc, reviewDesc)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(reviewCode) ^
      const DeepCollectionEquality().hash(reviewType) ^
      const DeepCollectionEquality().hash(reviewDesc) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $ReviewCategoryExtension on ReviewCategory {
  ReviewCategory copyWith(
      {int? uid,
      String? reviewCode,
      String? reviewType,
      String? reviewDesc,
      bool? actived,
      DateTime? activedAt,
      bool? archived,
      DateTime? archivedAt,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return ReviewCategory(
        uid: uid ?? this.uid,
        reviewCode: reviewCode ?? this.reviewCode,
        reviewType: reviewType ?? this.reviewType,
        reviewDesc: reviewDesc ?? this.reviewDesc,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class ReviewSeller {
  ReviewSeller({
    required this.uid,
    required this.reviewCode,
    required this.reviewerAccount,
    required this.reviewerName,
    this.storeId,
    this.sellerId,
    required this.sellerAccount,
    required this.reviewStatus,
    this.reviewDescription,
    required this.actived,
    required this.activedAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory ReviewSeller.fromJson(Map<String, dynamic> json) =>
      _$ReviewSellerFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'review_code', includeIfNull: false, defaultValue: '')
  final String reviewCode;
  @JsonKey(name: 'reviewer_account', includeIfNull: false, defaultValue: '')
  final String reviewerAccount;
  @JsonKey(name: 'reviewer_name', includeIfNull: false, defaultValue: '')
  final String reviewerName;
  @JsonKey(name: 'store_id', includeIfNull: false)
  final int? storeId;
  @JsonKey(name: 'seller_id', includeIfNull: false)
  final int? sellerId;
  @JsonKey(name: 'seller_account', includeIfNull: false, defaultValue: '')
  final String sellerAccount;
  @JsonKey(name: 'review_status', includeIfNull: false, defaultValue: '')
  final String reviewStatus;
  @JsonKey(name: 'review_description', includeIfNull: false, defaultValue: '')
  final String? reviewDescription;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$ReviewSellerFromJson;
  static const toJsonFactory = _$ReviewSellerToJson;
  Map<String, dynamic> toJson() => _$ReviewSellerToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ReviewSeller &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.reviewCode, reviewCode) ||
                const DeepCollectionEquality()
                    .equals(other.reviewCode, reviewCode)) &&
            (identical(other.reviewerAccount, reviewerAccount) ||
                const DeepCollectionEquality()
                    .equals(other.reviewerAccount, reviewerAccount)) &&
            (identical(other.reviewerName, reviewerName) ||
                const DeepCollectionEquality()
                    .equals(other.reviewerName, reviewerName)) &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality()
                    .equals(other.storeId, storeId)) &&
            (identical(other.sellerId, sellerId) ||
                const DeepCollectionEquality()
                    .equals(other.sellerId, sellerId)) &&
            (identical(other.sellerAccount, sellerAccount) ||
                const DeepCollectionEquality()
                    .equals(other.sellerAccount, sellerAccount)) &&
            (identical(other.reviewStatus, reviewStatus) ||
                const DeepCollectionEquality()
                    .equals(other.reviewStatus, reviewStatus)) &&
            (identical(other.reviewDescription, reviewDescription) ||
                const DeepCollectionEquality()
                    .equals(other.reviewDescription, reviewDescription)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(reviewCode) ^
      const DeepCollectionEquality().hash(reviewerAccount) ^
      const DeepCollectionEquality().hash(reviewerName) ^
      const DeepCollectionEquality().hash(storeId) ^
      const DeepCollectionEquality().hash(sellerId) ^
      const DeepCollectionEquality().hash(sellerAccount) ^
      const DeepCollectionEquality().hash(reviewStatus) ^
      const DeepCollectionEquality().hash(reviewDescription) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $ReviewSellerExtension on ReviewSeller {
  ReviewSeller copyWith(
      {int? uid,
      String? reviewCode,
      String? reviewerAccount,
      String? reviewerName,
      int? storeId,
      int? sellerId,
      String? sellerAccount,
      String? reviewStatus,
      String? reviewDescription,
      bool? actived,
      DateTime? activedAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return ReviewSeller(
        uid: uid ?? this.uid,
        reviewCode: reviewCode ?? this.reviewCode,
        reviewerAccount: reviewerAccount ?? this.reviewerAccount,
        reviewerName: reviewerName ?? this.reviewerName,
        storeId: storeId ?? this.storeId,
        sellerId: sellerId ?? this.sellerId,
        sellerAccount: sellerAccount ?? this.sellerAccount,
        reviewStatus: reviewStatus ?? this.reviewStatus,
        reviewDescription: reviewDescription ?? this.reviewDescription,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class BankAccount {
  BankAccount({
    required this.uid,
    required this.userId,
    required this.bankOwnerName,
    this.bankOwnerAddress,
    required this.bankCountry,
    required this.bankName,
    required this.bankCode,
    required this.bankAccount,
    this.bankRouting,
    this.bankSwiftCode,
    required this.isPrimary,
    this.isPrimaryAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory BankAccount.fromJson(Map<String, dynamic> json) =>
      _$BankAccountFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int userId;
  @JsonKey(name: 'bank_owner_name', includeIfNull: false, defaultValue: '')
  final String bankOwnerName;
  @JsonKey(name: 'bank_owner_address', includeIfNull: false, defaultValue: '')
  final String? bankOwnerAddress;
  @JsonKey(name: 'bank_country', includeIfNull: false, defaultValue: '')
  final String bankCountry;
  @JsonKey(name: 'bank_name', includeIfNull: false, defaultValue: '')
  final String bankName;
  @JsonKey(name: 'bank_code', includeIfNull: false, defaultValue: '')
  final String bankCode;
  @JsonKey(name: 'bank_account', includeIfNull: false, defaultValue: '')
  final String bankAccount;
  @JsonKey(name: 'bank_routing', includeIfNull: false, defaultValue: '')
  final String? bankRouting;
  @JsonKey(name: 'bank_swift_code', includeIfNull: false, defaultValue: '')
  final String? bankSwiftCode;
  @JsonKey(name: 'is_primary', includeIfNull: false)
  final bool isPrimary;
  @JsonKey(name: 'is_primary_at', includeIfNull: false)
  final DateTime? isPrimaryAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$BankAccountFromJson;
  static const toJsonFactory = _$BankAccountToJson;
  Map<String, dynamic> toJson() => _$BankAccountToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BankAccount &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.bankOwnerName, bankOwnerName) ||
                const DeepCollectionEquality()
                    .equals(other.bankOwnerName, bankOwnerName)) &&
            (identical(other.bankOwnerAddress, bankOwnerAddress) ||
                const DeepCollectionEquality()
                    .equals(other.bankOwnerAddress, bankOwnerAddress)) &&
            (identical(other.bankCountry, bankCountry) ||
                const DeepCollectionEquality()
                    .equals(other.bankCountry, bankCountry)) &&
            (identical(other.bankName, bankName) ||
                const DeepCollectionEquality()
                    .equals(other.bankName, bankName)) &&
            (identical(other.bankCode, bankCode) ||
                const DeepCollectionEquality()
                    .equals(other.bankCode, bankCode)) &&
            (identical(other.bankAccount, bankAccount) ||
                const DeepCollectionEquality()
                    .equals(other.bankAccount, bankAccount)) &&
            (identical(other.bankRouting, bankRouting) ||
                const DeepCollectionEquality()
                    .equals(other.bankRouting, bankRouting)) &&
            (identical(other.bankSwiftCode, bankSwiftCode) ||
                const DeepCollectionEquality()
                    .equals(other.bankSwiftCode, bankSwiftCode)) &&
            (identical(other.isPrimary, isPrimary) ||
                const DeepCollectionEquality()
                    .equals(other.isPrimary, isPrimary)) &&
            (identical(other.isPrimaryAt, isPrimaryAt) ||
                const DeepCollectionEquality()
                    .equals(other.isPrimaryAt, isPrimaryAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(bankOwnerName) ^
      const DeepCollectionEquality().hash(bankOwnerAddress) ^
      const DeepCollectionEquality().hash(bankCountry) ^
      const DeepCollectionEquality().hash(bankName) ^
      const DeepCollectionEquality().hash(bankCode) ^
      const DeepCollectionEquality().hash(bankAccount) ^
      const DeepCollectionEquality().hash(bankRouting) ^
      const DeepCollectionEquality().hash(bankSwiftCode) ^
      const DeepCollectionEquality().hash(isPrimary) ^
      const DeepCollectionEquality().hash(isPrimaryAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $BankAccountExtension on BankAccount {
  BankAccount copyWith(
      {int? uid,
      int? userId,
      String? bankOwnerName,
      String? bankOwnerAddress,
      String? bankCountry,
      String? bankName,
      String? bankCode,
      String? bankAccount,
      String? bankRouting,
      String? bankSwiftCode,
      bool? isPrimary,
      DateTime? isPrimaryAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return BankAccount(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        bankOwnerName: bankOwnerName ?? this.bankOwnerName,
        bankOwnerAddress: bankOwnerAddress ?? this.bankOwnerAddress,
        bankCountry: bankCountry ?? this.bankCountry,
        bankName: bankName ?? this.bankName,
        bankCode: bankCode ?? this.bankCode,
        bankAccount: bankAccount ?? this.bankAccount,
        bankRouting: bankRouting ?? this.bankRouting,
        bankSwiftCode: bankSwiftCode ?? this.bankSwiftCode,
        isPrimary: isPrimary ?? this.isPrimary,
        isPrimaryAt: isPrimaryAt ?? this.isPrimaryAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class BankCode {
  BankCode({
    required this.code,
    this.type,
    this.name,
    required this.actived,
    required this.activedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BankCode.fromJson(Map<String, dynamic> json) =>
      _$BankCodeFromJson(json);

  @JsonKey(name: 'code', includeIfNull: false, defaultValue: '')
  final String code;
  @JsonKey(name: 'type', includeIfNull: false, defaultValue: '')
  final String? type;
  @JsonKey(name: 'name', includeIfNull: false, defaultValue: '')
  final String? name;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  static const fromJsonFactory = _$BankCodeFromJson;
  static const toJsonFactory = _$BankCodeToJson;
  Map<String, dynamic> toJson() => _$BankCodeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BankCode &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $BankCodeExtension on BankCode {
  BankCode copyWith(
      {String? code,
      String? type,
      String? name,
      bool? actived,
      DateTime? activedAt,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return BankCode(
        code: code ?? this.code,
        type: type ?? this.type,
        name: name ?? this.name,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Profit {
  Profit({
    required this.uid,
    required this.userId,
    this.profitTarget,
    this.profitTargetId,
    this.profitRate,
    this.exchangeRate,
    this.settlementId,
    required this.settledDateStart,
    required this.settledDateEnd,
    required this.totalCount,
    required this.totalCompleteCount,
    required this.totalCancelCount,
    this.totalQuantitySmall,
    this.totalQuantityBig,
    this.totalUnit,
    this.totalOrdered,
    this.totalCancelled,
    this.totalOrigin,
    this.totalDiscount,
    this.totalSales,
    this.totalPayment,
    this.totalPaid,
    this.totalPending,
    this.totalRefunded,
    this.totalPaymentFee,
    this.totalCompleteExpense,
    this.totalCancelExpenses,
    this.totalEtcExpenses,
    this.totalEtcExpensesComment,
    this.totalExpenses,
    this.totalProfit,
    this.totalFee,
    this.totalAmount,
    this.status,
    this.extras,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Profit.fromJson(Map<String, dynamic> json) => _$ProfitFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int userId;
  @JsonKey(name: 'profit_target', includeIfNull: false, defaultValue: '')
  final String? profitTarget;
  @JsonKey(name: 'profit_target_id', includeIfNull: false, defaultValue: '')
  final String? profitTargetId;
  @JsonKey(name: 'profit_rate', includeIfNull: false)
  final double? profitRate;
  @JsonKey(name: 'exchange_rate', includeIfNull: false)
  final double? exchangeRate;
  @JsonKey(name: 'settlement_id', includeIfNull: false)
  final int? settlementId;
  @JsonKey(name: 'settled_date_start', includeIfNull: false, defaultValue: '')
  final String settledDateStart;
  @JsonKey(name: 'settled_date_end', includeIfNull: false, defaultValue: '')
  final String settledDateEnd;
  @JsonKey(name: 'total_count', includeIfNull: false)
  final int totalCount;
  @JsonKey(name: 'total_complete_count', includeIfNull: false)
  final int totalCompleteCount;
  @JsonKey(name: 'total_cancel_count', includeIfNull: false)
  final int totalCancelCount;
  @JsonKey(name: 'total_quantity_small', includeIfNull: false)
  final int? totalQuantitySmall;
  @JsonKey(name: 'total_quantity_big', includeIfNull: false)
  final int? totalQuantityBig;
  @JsonKey(name: 'total_unit', includeIfNull: false, defaultValue: '')
  final String? totalUnit;
  @JsonKey(name: 'total_ordered', includeIfNull: false)
  final double? totalOrdered;
  @JsonKey(name: 'total_cancelled', includeIfNull: false)
  final double? totalCancelled;
  @JsonKey(name: 'total_origin', includeIfNull: false)
  final double? totalOrigin;
  @JsonKey(name: 'total_discount', includeIfNull: false)
  final double? totalDiscount;
  @JsonKey(name: 'total_sales', includeIfNull: false)
  final double? totalSales;
  @JsonKey(name: 'total_payment', includeIfNull: false)
  final double? totalPayment;
  @JsonKey(name: 'total_paid', includeIfNull: false)
  final double? totalPaid;
  @JsonKey(name: 'total_pending', includeIfNull: false)
  final double? totalPending;
  @JsonKey(name: 'total_refunded', includeIfNull: false)
  final double? totalRefunded;
  @JsonKey(name: 'total_payment_fee', includeIfNull: false)
  final double? totalPaymentFee;
  @JsonKey(name: 'total_complete_expense', includeIfNull: false)
  final double? totalCompleteExpense;
  @JsonKey(name: 'total_cancel_expenses', includeIfNull: false)
  final double? totalCancelExpenses;
  @JsonKey(name: 'total_etc_expenses', includeIfNull: false)
  final double? totalEtcExpenses;
  @JsonKey(
      name: 'total_etc_expenses_comment',
      includeIfNull: false,
      defaultValue: '')
  final String? totalEtcExpensesComment;
  @JsonKey(name: 'total_expenses', includeIfNull: false)
  final double? totalExpenses;
  @JsonKey(name: 'total_profit', includeIfNull: false)
  final double? totalProfit;
  @JsonKey(name: 'total_fee', includeIfNull: false)
  final double? totalFee;
  @JsonKey(name: 'total_amount', includeIfNull: false)
  final double? totalAmount;
  @JsonKey(name: 'status', includeIfNull: false, defaultValue: '')
  final String? status;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$ProfitFromJson;
  static const toJsonFactory = _$ProfitToJson;
  Map<String, dynamic> toJson() => _$ProfitToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Profit &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.profitTarget, profitTarget) ||
                const DeepCollectionEquality()
                    .equals(other.profitTarget, profitTarget)) &&
            (identical(other.profitTargetId, profitTargetId) ||
                const DeepCollectionEquality()
                    .equals(other.profitTargetId, profitTargetId)) &&
            (identical(other.profitRate, profitRate) ||
                const DeepCollectionEquality()
                    .equals(other.profitRate, profitRate)) &&
            (identical(other.exchangeRate, exchangeRate) ||
                const DeepCollectionEquality()
                    .equals(other.exchangeRate, exchangeRate)) &&
            (identical(other.settlementId, settlementId) ||
                const DeepCollectionEquality()
                    .equals(other.settlementId, settlementId)) &&
            (identical(other.settledDateStart, settledDateStart) ||
                const DeepCollectionEquality()
                    .equals(other.settledDateStart, settledDateStart)) &&
            (identical(other.settledDateEnd, settledDateEnd) ||
                const DeepCollectionEquality()
                    .equals(other.settledDateEnd, settledDateEnd)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.totalCompleteCount, totalCompleteCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCompleteCount, totalCompleteCount)) &&
            (identical(other.totalCancelCount, totalCancelCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCancelCount, totalCancelCount)) &&
            (identical(other.totalQuantitySmall, totalQuantitySmall) ||
                const DeepCollectionEquality()
                    .equals(other.totalQuantitySmall, totalQuantitySmall)) &&
            (identical(other.totalQuantityBig, totalQuantityBig) ||
                const DeepCollectionEquality()
                    .equals(other.totalQuantityBig, totalQuantityBig)) &&
            (identical(other.totalUnit, totalUnit) ||
                const DeepCollectionEquality()
                    .equals(other.totalUnit, totalUnit)) &&
            (identical(other.totalOrdered, totalOrdered) ||
                const DeepCollectionEquality()
                    .equals(other.totalOrdered, totalOrdered)) &&
            (identical(other.totalCancelled, totalCancelled) ||
                const DeepCollectionEquality()
                    .equals(other.totalCancelled, totalCancelled)) &&
            (identical(other.totalOrigin, totalOrigin) ||
                const DeepCollectionEquality()
                    .equals(other.totalOrigin, totalOrigin)) &&
            (identical(other.totalDiscount, totalDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.totalDiscount, totalDiscount)) &&
            (identical(other.totalSales, totalSales) ||
                const DeepCollectionEquality()
                    .equals(other.totalSales, totalSales)) &&
            (identical(other.totalPayment, totalPayment) ||
                const DeepCollectionEquality()
                    .equals(other.totalPayment, totalPayment)) &&
            (identical(other.totalPaid, totalPaid) ||
                const DeepCollectionEquality()
                    .equals(other.totalPaid, totalPaid)) &&
            (identical(other.totalPending, totalPending) ||
                const DeepCollectionEquality().equals(other.totalPending, totalPending)) &&
            (identical(other.totalRefunded, totalRefunded) || const DeepCollectionEquality().equals(other.totalRefunded, totalRefunded)) &&
            (identical(other.totalPaymentFee, totalPaymentFee) || const DeepCollectionEquality().equals(other.totalPaymentFee, totalPaymentFee)) &&
            (identical(other.totalCompleteExpense, totalCompleteExpense) || const DeepCollectionEquality().equals(other.totalCompleteExpense, totalCompleteExpense)) &&
            (identical(other.totalCancelExpenses, totalCancelExpenses) || const DeepCollectionEquality().equals(other.totalCancelExpenses, totalCancelExpenses)) &&
            (identical(other.totalEtcExpenses, totalEtcExpenses) || const DeepCollectionEquality().equals(other.totalEtcExpenses, totalEtcExpenses)) &&
            (identical(other.totalEtcExpensesComment, totalEtcExpensesComment) || const DeepCollectionEquality().equals(other.totalEtcExpensesComment, totalEtcExpensesComment)) &&
            (identical(other.totalExpenses, totalExpenses) || const DeepCollectionEquality().equals(other.totalExpenses, totalExpenses)) &&
            (identical(other.totalProfit, totalProfit) || const DeepCollectionEquality().equals(other.totalProfit, totalProfit)) &&
            (identical(other.totalFee, totalFee) || const DeepCollectionEquality().equals(other.totalFee, totalFee)) &&
            (identical(other.totalAmount, totalAmount) || const DeepCollectionEquality().equals(other.totalAmount, totalAmount)) &&
            (identical(other.status, status) || const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.extras, extras) || const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) || const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) || const DeepCollectionEquality().equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) || const DeepCollectionEquality().equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(profitTarget) ^
      const DeepCollectionEquality().hash(profitTargetId) ^
      const DeepCollectionEquality().hash(profitRate) ^
      const DeepCollectionEquality().hash(exchangeRate) ^
      const DeepCollectionEquality().hash(settlementId) ^
      const DeepCollectionEquality().hash(settledDateStart) ^
      const DeepCollectionEquality().hash(settledDateEnd) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(totalCompleteCount) ^
      const DeepCollectionEquality().hash(totalCancelCount) ^
      const DeepCollectionEquality().hash(totalQuantitySmall) ^
      const DeepCollectionEquality().hash(totalQuantityBig) ^
      const DeepCollectionEquality().hash(totalUnit) ^
      const DeepCollectionEquality().hash(totalOrdered) ^
      const DeepCollectionEquality().hash(totalCancelled) ^
      const DeepCollectionEquality().hash(totalOrigin) ^
      const DeepCollectionEquality().hash(totalDiscount) ^
      const DeepCollectionEquality().hash(totalSales) ^
      const DeepCollectionEquality().hash(totalPayment) ^
      const DeepCollectionEquality().hash(totalPaid) ^
      const DeepCollectionEquality().hash(totalPending) ^
      const DeepCollectionEquality().hash(totalRefunded) ^
      const DeepCollectionEquality().hash(totalPaymentFee) ^
      const DeepCollectionEquality().hash(totalCompleteExpense) ^
      const DeepCollectionEquality().hash(totalCancelExpenses) ^
      const DeepCollectionEquality().hash(totalEtcExpenses) ^
      const DeepCollectionEquality().hash(totalEtcExpensesComment) ^
      const DeepCollectionEquality().hash(totalExpenses) ^
      const DeepCollectionEquality().hash(totalProfit) ^
      const DeepCollectionEquality().hash(totalFee) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $ProfitExtension on Profit {
  Profit copyWith(
      {int? uid,
      int? userId,
      String? profitTarget,
      String? profitTargetId,
      double? profitRate,
      double? exchangeRate,
      int? settlementId,
      String? settledDateStart,
      String? settledDateEnd,
      int? totalCount,
      int? totalCompleteCount,
      int? totalCancelCount,
      int? totalQuantitySmall,
      int? totalQuantityBig,
      String? totalUnit,
      double? totalOrdered,
      double? totalCancelled,
      double? totalOrigin,
      double? totalDiscount,
      double? totalSales,
      double? totalPayment,
      double? totalPaid,
      double? totalPending,
      double? totalRefunded,
      double? totalPaymentFee,
      double? totalCompleteExpense,
      double? totalCancelExpenses,
      double? totalEtcExpenses,
      String? totalEtcExpensesComment,
      double? totalExpenses,
      double? totalProfit,
      double? totalFee,
      double? totalAmount,
      String? status,
      Object? extras,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Profit(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        profitTarget: profitTarget ?? this.profitTarget,
        profitTargetId: profitTargetId ?? this.profitTargetId,
        profitRate: profitRate ?? this.profitRate,
        exchangeRate: exchangeRate ?? this.exchangeRate,
        settlementId: settlementId ?? this.settlementId,
        settledDateStart: settledDateStart ?? this.settledDateStart,
        settledDateEnd: settledDateEnd ?? this.settledDateEnd,
        totalCount: totalCount ?? this.totalCount,
        totalCompleteCount: totalCompleteCount ?? this.totalCompleteCount,
        totalCancelCount: totalCancelCount ?? this.totalCancelCount,
        totalQuantitySmall: totalQuantitySmall ?? this.totalQuantitySmall,
        totalQuantityBig: totalQuantityBig ?? this.totalQuantityBig,
        totalUnit: totalUnit ?? this.totalUnit,
        totalOrdered: totalOrdered ?? this.totalOrdered,
        totalCancelled: totalCancelled ?? this.totalCancelled,
        totalOrigin: totalOrigin ?? this.totalOrigin,
        totalDiscount: totalDiscount ?? this.totalDiscount,
        totalSales: totalSales ?? this.totalSales,
        totalPayment: totalPayment ?? this.totalPayment,
        totalPaid: totalPaid ?? this.totalPaid,
        totalPending: totalPending ?? this.totalPending,
        totalRefunded: totalRefunded ?? this.totalRefunded,
        totalPaymentFee: totalPaymentFee ?? this.totalPaymentFee,
        totalCompleteExpense: totalCompleteExpense ?? this.totalCompleteExpense,
        totalCancelExpenses: totalCancelExpenses ?? this.totalCancelExpenses,
        totalEtcExpenses: totalEtcExpenses ?? this.totalEtcExpenses,
        totalEtcExpensesComment:
            totalEtcExpensesComment ?? this.totalEtcExpensesComment,
        totalExpenses: totalExpenses ?? this.totalExpenses,
        totalProfit: totalProfit ?? this.totalProfit,
        totalFee: totalFee ?? this.totalFee,
        totalAmount: totalAmount ?? this.totalAmount,
        status: status ?? this.status,
        extras: extras ?? this.extras,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Settlement {
  Settlement({
    required this.uid,
    required this.userId,
    this.storeId,
    required this.settledDateStart,
    required this.settledDateEnd,
    this.exchangeRate,
    required this.totalCount,
    required this.totalCompleteCount,
    required this.totalCancelCount,
    this.totalQuantitySmall,
    this.totalQuantityBig,
    this.totalUnit,
    this.totalOrdered,
    this.totalCancelled,
    this.totalOrigin,
    this.totalDiscount,
    this.totalSales,
    this.totalPayment,
    this.totalPaid,
    this.totalPending,
    this.totalRefunded,
    this.totalProfit,
    this.totalFee,
    this.totalTax,
    this.totalAmount,
    this.totalPaymentFee,
    this.totalCompleteExpense,
    this.totalCancelExpenses,
    this.totalEtcExpenses,
    this.totalEtcExpensesComment,
    this.totalExpenses,
    this.settledMethod,
    this.settledBankOwnerName,
    this.settledBankName,
    this.settledBankCode,
    this.settledBankAccount,
    this.settledUnit,
    this.settledTotal,
    this.status,
    this.extras,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Settlement.fromJson(Map<String, dynamic> json) =>
      _$SettlementFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int userId;
  @JsonKey(name: 'store_id', includeIfNull: false)
  final int? storeId;
  @JsonKey(name: 'settled_date_start', includeIfNull: false, defaultValue: '')
  final String settledDateStart;
  @JsonKey(name: 'settled_date_end', includeIfNull: false, defaultValue: '')
  final String settledDateEnd;
  @JsonKey(name: 'exchange_rate', includeIfNull: false)
  final double? exchangeRate;
  @JsonKey(name: 'total_count', includeIfNull: false)
  final int totalCount;
  @JsonKey(name: 'total_complete_count', includeIfNull: false)
  final int totalCompleteCount;
  @JsonKey(name: 'total_cancel_count', includeIfNull: false)
  final int totalCancelCount;
  @JsonKey(name: 'total_quantity_small', includeIfNull: false)
  final int? totalQuantitySmall;
  @JsonKey(name: 'total_quantity_big', includeIfNull: false)
  final int? totalQuantityBig;
  @JsonKey(name: 'total_unit', includeIfNull: false, defaultValue: '')
  final String? totalUnit;
  @JsonKey(name: 'total_ordered', includeIfNull: false)
  final double? totalOrdered;
  @JsonKey(name: 'total_cancelled', includeIfNull: false)
  final double? totalCancelled;
  @JsonKey(name: 'total_origin', includeIfNull: false)
  final double? totalOrigin;
  @JsonKey(name: 'total_discount', includeIfNull: false)
  final double? totalDiscount;
  @JsonKey(name: 'total_sales', includeIfNull: false)
  final double? totalSales;
  @JsonKey(name: 'total_payment', includeIfNull: false)
  final double? totalPayment;
  @JsonKey(name: 'total_paid', includeIfNull: false)
  final double? totalPaid;
  @JsonKey(name: 'total_pending', includeIfNull: false)
  final double? totalPending;
  @JsonKey(name: 'total_refunded', includeIfNull: false)
  final double? totalRefunded;
  @JsonKey(name: 'total_profit', includeIfNull: false)
  final double? totalProfit;
  @JsonKey(name: 'total_fee', includeIfNull: false)
  final double? totalFee;
  @JsonKey(name: 'total_tax', includeIfNull: false)
  final double? totalTax;
  @JsonKey(name: 'total_amount', includeIfNull: false)
  final double? totalAmount;
  @JsonKey(name: 'total_payment_fee', includeIfNull: false)
  final double? totalPaymentFee;
  @JsonKey(name: 'total_complete_expense', includeIfNull: false)
  final double? totalCompleteExpense;
  @JsonKey(name: 'total_cancel_expenses', includeIfNull: false)
  final double? totalCancelExpenses;
  @JsonKey(name: 'total_etc_expenses', includeIfNull: false)
  final double? totalEtcExpenses;
  @JsonKey(
      name: 'total_etc_expenses_comment',
      includeIfNull: false,
      defaultValue: '')
  final String? totalEtcExpensesComment;
  @JsonKey(name: 'total_expenses', includeIfNull: false)
  final double? totalExpenses;
  @JsonKey(name: 'settled_method', includeIfNull: false, defaultValue: '')
  final String? settledMethod;
  @JsonKey(
      name: 'settled_bank_owner_name', includeIfNull: false, defaultValue: '')
  final String? settledBankOwnerName;
  @JsonKey(name: 'settled_bank_name', includeIfNull: false, defaultValue: '')
  final String? settledBankName;
  @JsonKey(name: 'settled_bank_code', includeIfNull: false, defaultValue: '')
  final String? settledBankCode;
  @JsonKey(name: 'settled_bank_account', includeIfNull: false, defaultValue: '')
  final String? settledBankAccount;
  @JsonKey(name: 'settled_unit', includeIfNull: false, defaultValue: '')
  final String? settledUnit;
  @JsonKey(name: 'settled_total', includeIfNull: false)
  final double? settledTotal;
  @JsonKey(name: 'status', includeIfNull: false, defaultValue: '')
  final String? status;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$SettlementFromJson;
  static const toJsonFactory = _$SettlementToJson;
  Map<String, dynamic> toJson() => _$SettlementToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Settlement &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality()
                    .equals(other.storeId, storeId)) &&
            (identical(other.settledDateStart, settledDateStart) ||
                const DeepCollectionEquality()
                    .equals(other.settledDateStart, settledDateStart)) &&
            (identical(other.settledDateEnd, settledDateEnd) ||
                const DeepCollectionEquality()
                    .equals(other.settledDateEnd, settledDateEnd)) &&
            (identical(other.exchangeRate, exchangeRate) ||
                const DeepCollectionEquality()
                    .equals(other.exchangeRate, exchangeRate)) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.totalCompleteCount, totalCompleteCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCompleteCount, totalCompleteCount)) &&
            (identical(other.totalCancelCount, totalCancelCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCancelCount, totalCancelCount)) &&
            (identical(other.totalQuantitySmall, totalQuantitySmall) ||
                const DeepCollectionEquality()
                    .equals(other.totalQuantitySmall, totalQuantitySmall)) &&
            (identical(other.totalQuantityBig, totalQuantityBig) ||
                const DeepCollectionEquality()
                    .equals(other.totalQuantityBig, totalQuantityBig)) &&
            (identical(other.totalUnit, totalUnit) ||
                const DeepCollectionEquality()
                    .equals(other.totalUnit, totalUnit)) &&
            (identical(other.totalOrdered, totalOrdered) ||
                const DeepCollectionEquality()
                    .equals(other.totalOrdered, totalOrdered)) &&
            (identical(other.totalCancelled, totalCancelled) ||
                const DeepCollectionEquality()
                    .equals(other.totalCancelled, totalCancelled)) &&
            (identical(other.totalOrigin, totalOrigin) ||
                const DeepCollectionEquality()
                    .equals(other.totalOrigin, totalOrigin)) &&
            (identical(other.totalDiscount, totalDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.totalDiscount, totalDiscount)) &&
            (identical(other.totalSales, totalSales) ||
                const DeepCollectionEquality()
                    .equals(other.totalSales, totalSales)) &&
            (identical(other.totalPayment, totalPayment) ||
                const DeepCollectionEquality()
                    .equals(other.totalPayment, totalPayment)) &&
            (identical(other.totalPaid, totalPaid) ||
                const DeepCollectionEquality()
                    .equals(other.totalPaid, totalPaid)) &&
            (identical(other.totalPending, totalPending) ||
                const DeepCollectionEquality()
                    .equals(other.totalPending, totalPending)) &&
            (identical(other.totalRefunded, totalRefunded) ||
                const DeepCollectionEquality()
                    .equals(other.totalRefunded, totalRefunded)) &&
            (identical(other.totalProfit, totalProfit) ||
                const DeepCollectionEquality()
                    .equals(other.totalProfit, totalProfit)) &&
            (identical(other.totalFee, totalFee) ||
                const DeepCollectionEquality().equals(other.totalFee, totalFee)) &&
            (identical(other.totalTax, totalTax) || const DeepCollectionEquality().equals(other.totalTax, totalTax)) &&
            (identical(other.totalAmount, totalAmount) || const DeepCollectionEquality().equals(other.totalAmount, totalAmount)) &&
            (identical(other.totalPaymentFee, totalPaymentFee) || const DeepCollectionEquality().equals(other.totalPaymentFee, totalPaymentFee)) &&
            (identical(other.totalCompleteExpense, totalCompleteExpense) || const DeepCollectionEquality().equals(other.totalCompleteExpense, totalCompleteExpense)) &&
            (identical(other.totalCancelExpenses, totalCancelExpenses) || const DeepCollectionEquality().equals(other.totalCancelExpenses, totalCancelExpenses)) &&
            (identical(other.totalEtcExpenses, totalEtcExpenses) || const DeepCollectionEquality().equals(other.totalEtcExpenses, totalEtcExpenses)) &&
            (identical(other.totalEtcExpensesComment, totalEtcExpensesComment) || const DeepCollectionEquality().equals(other.totalEtcExpensesComment, totalEtcExpensesComment)) &&
            (identical(other.totalExpenses, totalExpenses) || const DeepCollectionEquality().equals(other.totalExpenses, totalExpenses)) &&
            (identical(other.settledMethod, settledMethod) || const DeepCollectionEquality().equals(other.settledMethod, settledMethod)) &&
            (identical(other.settledBankOwnerName, settledBankOwnerName) || const DeepCollectionEquality().equals(other.settledBankOwnerName, settledBankOwnerName)) &&
            (identical(other.settledBankName, settledBankName) || const DeepCollectionEquality().equals(other.settledBankName, settledBankName)) &&
            (identical(other.settledBankCode, settledBankCode) || const DeepCollectionEquality().equals(other.settledBankCode, settledBankCode)) &&
            (identical(other.settledBankAccount, settledBankAccount) || const DeepCollectionEquality().equals(other.settledBankAccount, settledBankAccount)) &&
            (identical(other.settledUnit, settledUnit) || const DeepCollectionEquality().equals(other.settledUnit, settledUnit)) &&
            (identical(other.settledTotal, settledTotal) || const DeepCollectionEquality().equals(other.settledTotal, settledTotal)) &&
            (identical(other.status, status) || const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.extras, extras) || const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.createdAt, createdAt) || const DeepCollectionEquality().equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) || const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) || const DeepCollectionEquality().equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) || const DeepCollectionEquality().equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(storeId) ^
      const DeepCollectionEquality().hash(settledDateStart) ^
      const DeepCollectionEquality().hash(settledDateEnd) ^
      const DeepCollectionEquality().hash(exchangeRate) ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(totalCompleteCount) ^
      const DeepCollectionEquality().hash(totalCancelCount) ^
      const DeepCollectionEquality().hash(totalQuantitySmall) ^
      const DeepCollectionEquality().hash(totalQuantityBig) ^
      const DeepCollectionEquality().hash(totalUnit) ^
      const DeepCollectionEquality().hash(totalOrdered) ^
      const DeepCollectionEquality().hash(totalCancelled) ^
      const DeepCollectionEquality().hash(totalOrigin) ^
      const DeepCollectionEquality().hash(totalDiscount) ^
      const DeepCollectionEquality().hash(totalSales) ^
      const DeepCollectionEquality().hash(totalPayment) ^
      const DeepCollectionEquality().hash(totalPaid) ^
      const DeepCollectionEquality().hash(totalPending) ^
      const DeepCollectionEquality().hash(totalRefunded) ^
      const DeepCollectionEquality().hash(totalProfit) ^
      const DeepCollectionEquality().hash(totalFee) ^
      const DeepCollectionEquality().hash(totalTax) ^
      const DeepCollectionEquality().hash(totalAmount) ^
      const DeepCollectionEquality().hash(totalPaymentFee) ^
      const DeepCollectionEquality().hash(totalCompleteExpense) ^
      const DeepCollectionEquality().hash(totalCancelExpenses) ^
      const DeepCollectionEquality().hash(totalEtcExpenses) ^
      const DeepCollectionEquality().hash(totalEtcExpensesComment) ^
      const DeepCollectionEquality().hash(totalExpenses) ^
      const DeepCollectionEquality().hash(settledMethod) ^
      const DeepCollectionEquality().hash(settledBankOwnerName) ^
      const DeepCollectionEquality().hash(settledBankName) ^
      const DeepCollectionEquality().hash(settledBankCode) ^
      const DeepCollectionEquality().hash(settledBankAccount) ^
      const DeepCollectionEquality().hash(settledUnit) ^
      const DeepCollectionEquality().hash(settledTotal) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $SettlementExtension on Settlement {
  Settlement copyWith(
      {int? uid,
      int? userId,
      int? storeId,
      String? settledDateStart,
      String? settledDateEnd,
      double? exchangeRate,
      int? totalCount,
      int? totalCompleteCount,
      int? totalCancelCount,
      int? totalQuantitySmall,
      int? totalQuantityBig,
      String? totalUnit,
      double? totalOrdered,
      double? totalCancelled,
      double? totalOrigin,
      double? totalDiscount,
      double? totalSales,
      double? totalPayment,
      double? totalPaid,
      double? totalPending,
      double? totalRefunded,
      double? totalProfit,
      double? totalFee,
      double? totalTax,
      double? totalAmount,
      double? totalPaymentFee,
      double? totalCompleteExpense,
      double? totalCancelExpenses,
      double? totalEtcExpenses,
      String? totalEtcExpensesComment,
      double? totalExpenses,
      String? settledMethod,
      String? settledBankOwnerName,
      String? settledBankName,
      String? settledBankCode,
      String? settledBankAccount,
      String? settledUnit,
      double? settledTotal,
      String? status,
      Object? extras,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Settlement(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        storeId: storeId ?? this.storeId,
        settledDateStart: settledDateStart ?? this.settledDateStart,
        settledDateEnd: settledDateEnd ?? this.settledDateEnd,
        exchangeRate: exchangeRate ?? this.exchangeRate,
        totalCount: totalCount ?? this.totalCount,
        totalCompleteCount: totalCompleteCount ?? this.totalCompleteCount,
        totalCancelCount: totalCancelCount ?? this.totalCancelCount,
        totalQuantitySmall: totalQuantitySmall ?? this.totalQuantitySmall,
        totalQuantityBig: totalQuantityBig ?? this.totalQuantityBig,
        totalUnit: totalUnit ?? this.totalUnit,
        totalOrdered: totalOrdered ?? this.totalOrdered,
        totalCancelled: totalCancelled ?? this.totalCancelled,
        totalOrigin: totalOrigin ?? this.totalOrigin,
        totalDiscount: totalDiscount ?? this.totalDiscount,
        totalSales: totalSales ?? this.totalSales,
        totalPayment: totalPayment ?? this.totalPayment,
        totalPaid: totalPaid ?? this.totalPaid,
        totalPending: totalPending ?? this.totalPending,
        totalRefunded: totalRefunded ?? this.totalRefunded,
        totalProfit: totalProfit ?? this.totalProfit,
        totalFee: totalFee ?? this.totalFee,
        totalTax: totalTax ?? this.totalTax,
        totalAmount: totalAmount ?? this.totalAmount,
        totalPaymentFee: totalPaymentFee ?? this.totalPaymentFee,
        totalCompleteExpense: totalCompleteExpense ?? this.totalCompleteExpense,
        totalCancelExpenses: totalCancelExpenses ?? this.totalCancelExpenses,
        totalEtcExpenses: totalEtcExpenses ?? this.totalEtcExpenses,
        totalEtcExpensesComment:
            totalEtcExpensesComment ?? this.totalEtcExpensesComment,
        totalExpenses: totalExpenses ?? this.totalExpenses,
        settledMethod: settledMethod ?? this.settledMethod,
        settledBankOwnerName: settledBankOwnerName ?? this.settledBankOwnerName,
        settledBankName: settledBankName ?? this.settledBankName,
        settledBankCode: settledBankCode ?? this.settledBankCode,
        settledBankAccount: settledBankAccount ?? this.settledBankAccount,
        settledUnit: settledUnit ?? this.settledUnit,
        settledTotal: settledTotal ?? this.settledTotal,
        status: status ?? this.status,
        extras: extras ?? this.extras,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class SmsMessage {
  SmsMessage({
    required this.uid,
    required this.smsProvider,
    required this.smsFrom,
    required this.smsTo,
    this.smsMessage,
    required this.test,
    this.sent,
    this.sentResult,
    this.sentAt,
    required this.requestId,
    this.extras,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SmsMessage.fromJson(Map<String, dynamic> json) =>
      _$SmsMessageFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'sms_provider', includeIfNull: false, defaultValue: '')
  final String smsProvider;
  @JsonKey(name: 'sms_from', includeIfNull: false, defaultValue: '')
  final String smsFrom;
  @JsonKey(name: 'sms_to', includeIfNull: false, defaultValue: '')
  final String smsTo;
  @JsonKey(name: 'sms_message', includeIfNull: false, defaultValue: '')
  final String? smsMessage;
  @JsonKey(name: 'test', includeIfNull: false)
  final bool test;
  @JsonKey(name: 'sent', includeIfNull: false)
  final bool? sent;
  @JsonKey(name: 'sent_result', includeIfNull: false)
  final Object? sentResult;
  @JsonKey(name: 'sent_at', includeIfNull: false)
  final DateTime? sentAt;
  @JsonKey(name: 'request_id', includeIfNull: false, defaultValue: '')
  final String requestId;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  static const fromJsonFactory = _$SmsMessageFromJson;
  static const toJsonFactory = _$SmsMessageToJson;
  Map<String, dynamic> toJson() => _$SmsMessageToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SmsMessage &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.smsProvider, smsProvider) ||
                const DeepCollectionEquality()
                    .equals(other.smsProvider, smsProvider)) &&
            (identical(other.smsFrom, smsFrom) ||
                const DeepCollectionEquality()
                    .equals(other.smsFrom, smsFrom)) &&
            (identical(other.smsTo, smsTo) ||
                const DeepCollectionEquality().equals(other.smsTo, smsTo)) &&
            (identical(other.smsMessage, smsMessage) ||
                const DeepCollectionEquality()
                    .equals(other.smsMessage, smsMessage)) &&
            (identical(other.test, test) ||
                const DeepCollectionEquality().equals(other.test, test)) &&
            (identical(other.sent, sent) ||
                const DeepCollectionEquality().equals(other.sent, sent)) &&
            (identical(other.sentResult, sentResult) ||
                const DeepCollectionEquality()
                    .equals(other.sentResult, sentResult)) &&
            (identical(other.sentAt, sentAt) ||
                const DeepCollectionEquality().equals(other.sentAt, sentAt)) &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(smsProvider) ^
      const DeepCollectionEquality().hash(smsFrom) ^
      const DeepCollectionEquality().hash(smsTo) ^
      const DeepCollectionEquality().hash(smsMessage) ^
      const DeepCollectionEquality().hash(test) ^
      const DeepCollectionEquality().hash(sent) ^
      const DeepCollectionEquality().hash(sentResult) ^
      const DeepCollectionEquality().hash(sentAt) ^
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SmsMessageExtension on SmsMessage {
  SmsMessage copyWith(
      {int? uid,
      String? smsProvider,
      String? smsFrom,
      String? smsTo,
      String? smsMessage,
      bool? test,
      bool? sent,
      Object? sentResult,
      DateTime? sentAt,
      String? requestId,
      Object? extras,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return SmsMessage(
        uid: uid ?? this.uid,
        smsProvider: smsProvider ?? this.smsProvider,
        smsFrom: smsFrom ?? this.smsFrom,
        smsTo: smsTo ?? this.smsTo,
        smsMessage: smsMessage ?? this.smsMessage,
        test: test ?? this.test,
        sent: sent ?? this.sent,
        sentResult: sentResult ?? this.sentResult,
        sentAt: sentAt ?? this.sentAt,
        requestId: requestId ?? this.requestId,
        extras: extras ?? this.extras,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Verify {
  Verify({
    required this.uid,
    this.userId,
    required this.email,
    required this.validKey,
    required this.validType,
    required this.valid,
    this.validAt,
    this.expiredAt,
    required this.actived,
    required this.activedAt,
    this.extras,
    required this.resourceKey,
    this.resources,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Verify.fromJson(Map<String, dynamic> json) => _$VerifyFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int? userId;
  @JsonKey(name: 'email', includeIfNull: false, defaultValue: '')
  final String email;
  @JsonKey(name: 'valid_key', includeIfNull: false, defaultValue: '')
  final String validKey;
  @JsonKey(name: 'valid_type', includeIfNull: false)
  final bool validType;
  @JsonKey(name: 'valid', includeIfNull: false)
  final bool valid;
  @JsonKey(name: 'valid_at', includeIfNull: false)
  final DateTime? validAt;
  @JsonKey(name: 'expired_at', includeIfNull: false)
  final DateTime? expiredAt;
  @JsonKey(name: 'actived', includeIfNull: false)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: false)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: false, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: false)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$VerifyFromJson;
  static const toJsonFactory = _$VerifyToJson;
  Map<String, dynamic> toJson() => _$VerifyToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Verify &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.validKey, validKey) ||
                const DeepCollectionEquality()
                    .equals(other.validKey, validKey)) &&
            (identical(other.validType, validType) ||
                const DeepCollectionEquality()
                    .equals(other.validType, validType)) &&
            (identical(other.valid, valid) ||
                const DeepCollectionEquality().equals(other.valid, valid)) &&
            (identical(other.validAt, validAt) ||
                const DeepCollectionEquality()
                    .equals(other.validAt, validAt)) &&
            (identical(other.expiredAt, expiredAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiredAt, expiredAt)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality()
                    .equals(other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality()
                    .equals(other.activedAt, activedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality()
                    .equals(other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality()
                    .equals(other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(validKey) ^
      const DeepCollectionEquality().hash(validType) ^
      const DeepCollectionEquality().hash(valid) ^
      const DeepCollectionEquality().hash(validAt) ^
      const DeepCollectionEquality().hash(expiredAt) ^
      const DeepCollectionEquality().hash(actived) ^
      const DeepCollectionEquality().hash(activedAt) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(resourceKey) ^
      const DeepCollectionEquality().hash(resources) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $VerifyExtension on Verify {
  Verify copyWith(
      {int? uid,
      int? userId,
      String? email,
      String? validKey,
      bool? validType,
      bool? valid,
      DateTime? validAt,
      DateTime? expiredAt,
      bool? actived,
      DateTime? activedAt,
      Object? extras,
      String? resourceKey,
      Object? resources,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return Verify(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        email: email ?? this.email,
        validKey: validKey ?? this.validKey,
        validType: validType ?? this.validType,
        valid: valid ?? this.valid,
        validAt: validAt ?? this.validAt,
        expiredAt: expiredAt ?? this.expiredAt,
        actived: actived ?? this.actived,
        activedAt: activedAt ?? this.activedAt,
        extras: extras ?? this.extras,
        resourceKey: resourceKey ?? this.resourceKey,
        resources: resources ?? this.resources,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class VideoTransCode {
  VideoTransCode({
    required this.uid,
    this.convertType,
    this.convertFile,
    this.convertResult,
    this.userId,
    this.extras,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory VideoTransCode.fromJson(Map<String, dynamic> json) =>
      _$VideoTransCodeFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: false)
  final int uid;
  @JsonKey(name: 'convert_type', includeIfNull: false)
  final bool? convertType;
  @JsonKey(name: 'convert_file', includeIfNull: false, defaultValue: '')
  final String? convertFile;
  @JsonKey(name: 'convert_result', includeIfNull: false)
  final Object? convertResult;
  @JsonKey(name: 'user_id', includeIfNull: false)
  final int? userId;
  @JsonKey(name: 'extras', includeIfNull: false)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: false)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: false)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$VideoTransCodeFromJson;
  static const toJsonFactory = _$VideoTransCodeToJson;
  Map<String, dynamic> toJson() => _$VideoTransCodeToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is VideoTransCode &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.convertType, convertType) ||
                const DeepCollectionEquality()
                    .equals(other.convertType, convertType)) &&
            (identical(other.convertFile, convertFile) ||
                const DeepCollectionEquality()
                    .equals(other.convertFile, convertFile)) &&
            (identical(other.convertResult, convertResult) ||
                const DeepCollectionEquality()
                    .equals(other.convertResult, convertResult)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality()
                    .equals(other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(convertType) ^
      const DeepCollectionEquality().hash(convertFile) ^
      const DeepCollectionEquality().hash(convertResult) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $VideoTransCodeExtension on VideoTransCode {
  VideoTransCode copyWith(
      {int? uid,
      bool? convertType,
      String? convertFile,
      Object? convertResult,
      int? userId,
      Object? extras,
      DateTime? createdAt,
      DateTime? updatedAt,
      bool? archived,
      DateTime? archivedAt}) {
    return VideoTransCode(
        uid: uid ?? this.uid,
        convertType: convertType ?? this.convertType,
        convertFile: convertFile ?? this.convertFile,
        convertResult: convertResult ?? this.convertResult,
        userId: userId ?? this.userId,
        extras: extras ?? this.extras,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  chopper.Response<ResultType> convertResponse<ResultType, Item>(
      chopper.Response response) {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    final jsonRes = super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
        body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType);
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}
