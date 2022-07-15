// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'package:chopper/chopper.dart' as chopper;

part 'artiket_service_json.swagger.chopper.dart';

part 'artiket_service_json.swagger.g.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class ArtiketServiceJson extends ChopperService {
  static ArtiketServiceJson create({ChopperClient? client,
    Authenticator? authenticator,
    String? baseUrl,
    Iterable<dynamic>? interceptors}) {
    if (client != null) {
      return _$ArtiketServiceJson(client);
    }

    final newClient = ChopperClient(
        services: [_$ArtiketServiceJson()],
        converter: $JsonSerializableConverter(),
        interceptors: interceptors ?? [],
        authenticator: authenticator,
        baseUrl: baseUrl ?? 'https://devapi.artiket.io');
    return _$ArtiketServiceJson(newClient);
  }

  ///
  ///@param name 주소명 ex) 본가
  ///@param phone 전화번호 연락처
  ///@param states 시도 ex) 경기도
  ///@param city 구 ex) 분당구
  ///@param address1 기본 주소
  ///@param address2 상세 주소
  ///@param zipcode zip code
  Future<chopper.Response<BasicResult>> v1AddressPost({required String? name,
    required String? phone,
    required String? states,
    required String? city,
    required String? address1,
    required String? address2,
    required String? zipcode,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AddressPost(
        name: name,
        phone: phone,
        states: states,
        city: city,
        address1: address1,
        address2: address2,
        zipcode: zipcode,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param name 주소명 ex) 본가
  ///@param phone 전화번호 연락처
  ///@param states 시도 ex) 경기도
  ///@param city 구 ex) 분당구
  ///@param address1 기본 주소
  ///@param address2 상세 주소
  ///@param zipcode zip code
  @Post(path: '/v1/address', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AddressPost(
      {@Field('name') required String? name,
        @Field('phone') required String? phone,
        @Field('states') required String? states,
        @Field('city') required String? city,
        @Field('address1') required String? address1,
        @Field('address2') required String? address2,
        @Field('zipcode') required String? zipcode,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1AddressGet({required String? page,
    required String? size,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AddressGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/address')
  Future<chopper.Response<BasicResult>> _v1AddressGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid _id
  Future<chopper.Response<BasicResult>> v1AddressUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AddressUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid _id
  @Delete(path: '/v1/address/{uid}')
  Future<chopper.Response<BasicResult>> _v1AddressUidDelete(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid 주소록의 _id value
  Future<chopper.Response<BasicResult>> v1AddressUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AddressUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid 주소록의 _id value
  @Get(path: '/v1/address/{uid}')
  Future<chopper.Response<BasicResult>> _v1AddressUidGet(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid 관리 아이디 _id
  ///@param name 주소명 ex) 본가
  ///@param phone 전화번호 연락처
  ///@param states 시도 ex) 경기도
  ///@param city 구 ex) 분당구
  ///@param address1 기본 주소
  ///@param address2 상세 주소
  ///@param zipcode zip code
  Future<chopper.Response<BasicResult>> v1AddressUidPut({required String? uid,
    String? name,
    String? phone,
    String? states,
    String? city,
    String? address1,
    String? address2,
    String? zipcode,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AddressUidPut(
        uid: uid,
        name: name,
        phone: phone,
        states: states,
        city: city,
        address1: address1,
        address2: address2,
        zipcode: zipcode,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid 관리 아이디 _id
  ///@param name 주소명 ex) 본가
  ///@param phone 전화번호 연락처
  ///@param states 시도 ex) 경기도
  ///@param city 구 ex) 분당구
  ///@param address1 기본 주소
  ///@param address2 상세 주소
  ///@param zipcode zip code
  @Put(path: '/v1/address/{uid}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AddressUidPut(
      {@Path('uid') required String? uid,
        @Field('name') String? name,
        @Field('phone') String? phone,
        @Field('states') String? states,
        @Field('city') String? city,
        @Field('address1') String? address1,
        @Field('address2') String? address2,
        @Field('zipcode') String? zipcode,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param app_id Android: Package Name, iOS: Bundle Id
  ///@param app_os OS Type
  ///@param app_version 버전 값 0.0.0
  ///@param push_token FCM Token
  Future<chopper.Response<BasicResult>> v1AppInitializeGet(
      {required String? appId,
        String? appOs,
        String? appVersion,
        String? pushToken,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AppInitializeGet(
        appId: appId,
        appOs: appOs,
        appVersion: appVersion,
        pushToken: pushToken,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param app_id Android: Package Name, iOS: Bundle Id
  ///@param app_os OS Type
  ///@param app_version 버전 값 0.0.0
  ///@param push_token FCM Token
  @Get(path: '/v1/app/initialize')
  Future<chopper.Response<BasicResult>> _v1AppInitializeGet(
      {@Query('app_id') required String? appId,
        @Query('app_os') String? appOs,
        @Query('app_version') String? appVersion,
        @Query('push_token') String? pushToken,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AppLocationRegisterGet(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AppLocationRegisterGet(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/app/location/register')
  Future<chopper.Response<BasicResult>> _v1AppLocationRegisterGet(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param geo_latitude 위도
  ///@param geo_longitude 경도
  Future<chopper.Response<BasicResult>> v1AppLocationRegisterPost(
      {String? geoLatitude,
        String? geoLongitude,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AppLocationRegisterPost(
        geoLatitude: geoLatitude,
        geoLongitude: geoLongitude,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param geo_latitude 위도
  ///@param geo_longitude 경도
  @Post(path: '/v1/app/location/register', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1AppLocationRegisterPost(
      {@Field('geo_latitude') String? geoLatitude,
        @Field('geo_longitude') String? geoLongitude,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1AppLocationUnregisterDelete(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1AppLocationUnregisterDelete(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Delete(path: '/v1/app/location/unregister')
  Future<chopper.Response<BasicResult>> _v1AppLocationUnregisterDelete(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1ChannelsFollowingsGet(
      {required String? page,
        required String? size,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ChannelsFollowingsGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/channels/followings')
  Future<chopper.Response<BasicResult>> _v1ChannelsFollowingsGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param store_id store _id
  ///@param user_id 사용자의 user _id
  ///@param name channel name
  ///@param type Typeof channel: user, press, default: user
  ///@param logo_image logo image path
  ///@param cover_image path image path
  ///@param rules rule 설정 값, default: {}
  ///@param sort_order default: 0
  ///@param hidden hidden 처리, default: false
  ///@param blocked block 처리, default: false
  ///@param extras extra data, {"tags": ["tag1","tag2"]}
  Future<chopper.Response<BasicResult>> v1ChannelsPost(
      {required Object? storeId,
        required String? userId,
        String? name,
        required String? type,
        String? logoImage,
        String? coverImage,
        Object? rules,
        String? sortOrder,
        num? hidden,
        num? blocked,
        Object? extras,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ChannelsPost(
        storeId: storeId,
        userId: userId,
        name: name,
        type: type,
        logoImage: logoImage,
        coverImage: coverImage,
        rules: rules,
        sortOrder: sortOrder,
        hidden: hidden,
        blocked: blocked,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param store_id store _id
  ///@param user_id 사용자의 user _id
  ///@param name channel name
  ///@param type Typeof channel: user, press, default: user
  ///@param logo_image logo image path
  ///@param cover_image path image path
  ///@param rules rule 설정 값, default: {}
  ///@param sort_order default: 0
  ///@param hidden hidden 처리, default: false
  ///@param blocked block 처리, default: false
  ///@param extras extra data, {"tags": ["tag1","tag2"]}
  @Post(path: '/v1/channels', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1ChannelsPost(
      {@Field('store_id') required Object? storeId,
        @Field('user_id') required String? userId,
        @Field('name') String? name,
        @Field('type') required String? type,
        @Field('logo_image') String? logoImage,
        @Field('cover_image') String? coverImage,
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
  ///@param sort ['popular']
  Future<chopper.Response<BasicResult>> v1ChannelsGet({required String? page,
    required String? size,
    String? sort,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ChannelsGet(
        page: page,
        size: size,
        sort: sort,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param sort ['popular']
  @Get(path: '/v1/channels')
  Future<chopper.Response<BasicResult>> _v1ChannelsGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Query('sort') String? sort,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Channel ID
  Future<chopper.Response<BasicResult>> v1ChannelsUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ChannelsUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Channel ID
  @Get(path: '/v1/channels/{uid}')
  Future<chopper.Response<BasicResult>> _v1ChannelsUidGet(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param topic topic name: ['news','코로나','부동산','가상화폐']
  Future<chopper.Response<BasicResult>> v1ChannelsTopicFollowPost(
      {required String? topic, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ChannelsTopicFollowPost(
        topic: topic, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param topic topic name: ['news','코로나','부동산','가상화폐']
  @Post(path: '/v1/channels/{topic}/follow', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1ChannelsTopicFollowPost(
      {@Path('topic') required String? topic,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param topic topic name: ['news','코로나','부동산','가상화폐']
  Future<chopper.Response<BasicResult>> v1ChannelsTopicFollowGet(
      {required String? topic, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ChannelsTopicFollowGet(
        topic: topic, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param topic topic name: ['news','코로나','부동산','가상화폐']
  @Get(path: '/v1/channels/{topic}/follow')
  Future<chopper.Response<BasicResult>> _v1ChannelsTopicFollowGet(
      {@Path('topic') required String? topic,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param topic topic name: ['news','코로나','부동산','가상화폐']
  Future<chopper.Response<BasicResult>> v1ChannelsTopicFollowDelete(
      {required String? topic, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ChannelsTopicFollowDelete(
        topic: topic, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param topic topic name: ['news','코로나','부동산','가상화폐']
  @Delete(path: '/v1/channels/{topic}/follow')
  Future<chopper.Response<BasicResult>> _v1ChannelsTopicFollowDelete(
      {@Path('topic') required String? topic,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Comment UID
  ///@param title Comment Title
  ///@param content Comment Content
  ///@param password Writer Password
  ///@param extras No description
  Future<chopper.Response<BasicResult>> v1CommentsUidCommentsPost(
      {required String? uid,
        String? title,
        required String? content,
        String? password,
        String? extras,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CommentsUidCommentsPost(
        uid: uid,
        title: title,
        content: content,
        password: password,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid Comment UID
  ///@param title Comment Title
  ///@param content Comment Content
  ///@param password Writer Password
  ///@param extras No description
  @Post(path: '/v1/comments/{uid}/comments', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1CommentsUidCommentsPost(
      {@Path('uid') required String? uid,
        @Field('title') String? title,
        @Field('content') required String? content,
        @Field('password') String? password,
        @Field('extras') String? extras,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param uid Comment UID
  Future<chopper.Response<BasicResult>> v1CommentsUidCommentsGet(
      {required String? page,
        required String? size,
        required String? uid,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CommentsUidCommentsGet(
        page: page,
        size: size,
        uid: uid,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param uid Comment UID
  @Get(path: '/v1/comments/{uid}/comments')
  Future<chopper.Response<BasicResult>> _v1CommentsUidCommentsGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param comment_target Target
  ///@param comment_target_id Target Id
  ///@param comment_title Comment Title
  ///@param comment_content Comment Content
  ///@param user_id Writer Id
  ///@param user_name Writer Name
  ///@param user_password Writer Password
  ///@param extras No description
  Future<chopper.Response<BasicResult>> v1CommentPost(
      {required String? commentTarget,
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

    return _v1CommentPost(
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
  ///@param comment_target Target
  ///@param comment_target_id Target Id
  ///@param comment_title Comment Title
  ///@param comment_content Comment Content
  ///@param user_id Writer Id
  ///@param user_name Writer Name
  ///@param user_password Writer Password
  ///@param extras No description
  @Post(path: '/v1/comment', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1CommentPost(
      {@Field('comment_target') required String? commentTarget,
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
  Future<chopper.Response<BasicResult>> v1CommentGet({required String? page,
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

    return _v1CommentGet(
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
  @Get(path: '/v1/comment')
  Future<chopper.Response<BasicResult>> _v1CommentGet(
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
  ///@param uid Comment UID
  Future<chopper.Response<BasicResult>> v1CommentsUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CommentsUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Comment UID
  @Delete(path: '/v1/comments/{uid}')
  Future<chopper.Response<BasicResult>> _v1CommentsUidDelete(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Comment UID
  Future<chopper.Response<BasicResult>> v1CommentsUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CommentsUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Comment UID
  @Get(path: '/v1/comments/{uid}')
  Future<chopper.Response<BasicResult>> _v1CommentsUidGet(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  Future<chopper.Response<BasicResult>> v1CommentUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CommentUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  @Get(path: '/v1/comment/{uid}')
  Future<chopper.Response<BasicResult>> _v1CommentUidGet(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Comment ID
  ///@param link Comment Link
  ///@param image Share Image
  Future<chopper.Response<BasicResult>> v1CommentsUidLinkGet(
      {required String? uid,
        String? link,
        String? image,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CommentsUidLinkGet(
        uid: uid,
        link: link,
        image: image,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid Comment ID
  ///@param link Comment Link
  ///@param image Share Image
  @Get(path: '/v1/comments/{uid}/link')
  Future<chopper.Response<BasicResult>> _v1CommentsUidLinkGet(
      {@Path('uid') required String? uid,
        @Query('link') String? link,
        @Query('image') String? image,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Comment ID
  ///@param reaction Reaction Type
  Future<chopper.Response<BasicResult>> v1CommentsUidReactionPost(
      {required String? uid,
        required String? reaction,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CommentsUidReactionPost(
        uid: uid,
        reaction: reaction,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid Comment ID
  ///@param reaction Reaction Type
  @Post(path: '/v1/comments/{uid}/reaction', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1CommentsUidReactionPost(
      {@Path('uid') required String? uid,
        @Field('reaction') required String? reaction,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Post ID
  Future<chopper.Response<BasicResult>> v1CommentsUidReactionDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CommentsUidReactionDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Post ID
  @Delete(path: '/v1/comments/{uid}/reaction')
  Future<chopper.Response<BasicResult>> _v1CommentsUidReactionDelete(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Post ID
  Future<chopper.Response<BasicResult>> v1CommentsUidSharePost(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CommentsUidSharePost(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Post ID
  @Post(path: '/v1/comments/{uid}/share', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1CommentsUidSharePost(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///셀러가 등록한 인벤토리의 카테고리별 아이템
  ///@param cate_name 대분류 카테고리명
  ///@param page 페이지
  ///@param size 리스팅하고자하는 아이템 수
  Future<chopper.Response<BasicResult>> v1InventoryEachItemsGet(
      {String? cateName,
        required String? page,
        required String? size,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1InventoryEachItemsGet(
        cateName: cateName,
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///셀러가 등록한 인벤토리의 카테고리별 아이템
  ///@param cate_name 대분류 카테고리명
  ///@param page 페이지
  ///@param size 리스팅하고자하는 아이템 수
  @Get(path: '/v1/inventory/each/items')
  Future<chopper.Response<BasicResult>> _v1InventoryEachItemsGet(
      {@Query('cate_name') String? cateName,
        @Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///셀러가 등록한 인벤토리의 아이템을 아이템코드로 조회하기
  ///@param item_code 상세 검색할 아이템 코드
  Future<chopper.Response<BasicResult>> v1InventoryItemsItemCodeGet(
      {required String? itemCode, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1InventoryItemsItemCodeGet(
        itemCode: itemCode,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///셀러가 등록한 인벤토리의 아이템을 아이템코드로 조회하기
  ///@param item_code 상세 검색할 아이템 코드
  @Get(path: '/v1/inventory/items/{item_code}')
  Future<chopper.Response<BasicResult>> _v1InventoryItemsItemCodeGet(
      {@Path('item_code') required String? itemCode,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///셀러가 등록한 인벤토리의 아이템 전체 또는 카테고리에 맞춰서 리스트 조회하기
  ///@param page 페이지
  ///@param size 리스팅하고자하는 아이템 수
  ///@param c_0 대 카테고리
  ///@param c_1 중 카테고리
  ///@param c_2 소 카테고리
  Future<chopper.Response<BasicResult>> v1InventoryItemsGet(
      {required String? page,
        required String? size,
        String? c0,
        String? c1,
        String? c2,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1InventoryItemsGet(
        page: page,
        size: size,
        c0: c0,
        c1: c1,
        c2: c2,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///셀러가 등록한 인벤토리의 아이템 전체 또는 카테고리에 맞춰서 리스트 조회하기
  ///@param page 페이지
  ///@param size 리스팅하고자하는 아이템 수
  ///@param c_0 대 카테고리
  ///@param c_1 중 카테고리
  ///@param c_2 소 카테고리
  @Get(path: '/v1/inventory/items')
  Future<chopper.Response<BasicResult>> _v1InventoryItemsGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Query('c_0') String? c0,
        @Query('c_1') String? c1,
        @Query('c_2') String? c2,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param channel_id 채널 아이디
  ///@param message 메세지 text
  ///@param images url1,url2 (','콤마 로 구분)
  ///@param linkes url1,url2 (','콤마 로 구분)
  Future<chopper.Response<BasicResult>> v1MessagesPost(
      {required String? channelId,
        required String? message,
        String? images,
        String? linkes,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1MessagesPost(
        channelId: channelId,
        message: message,
        images: images,
        linkes: linkes,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param channel_id 채널 아이디
  ///@param message 메세지 text
  ///@param images url1,url2 (','콤마 로 구분)
  ///@param linkes url1,url2 (','콤마 로 구분)
  @Post(path: '/v1/messages', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1MessagesPost(
      {@Field('channel_id') required String? channelId,
        @Field('message') required String? message,
        @Field('images') String? images,
        @Field('linkes') String? linkes,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param channel_id channel_id
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1MessagesGet(
      {required String? channelId,
        required String? page,
        required String? size,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1MessagesGet(
        channelId: channelId,
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param channel_id channel_id
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/messages')
  Future<chopper.Response<BasicResult>> _v1MessagesGet(
      {@Query('channel_id') required String? channelId,
        @Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid _id
  Future<chopper.Response<BasicResult>> v1MessagesUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1MessagesUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid _id
  @Delete(path: '/v1/messages/{uid}')
  Future<chopper.Response<BasicResult>> _v1MessagesUidDelete(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid 메세지 _id value
  Future<chopper.Response<BasicResult>> v1MessagesUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1MessagesUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid 메세지 _id value
  @Get(path: '/v1/messages/{uid}')
  Future<chopper.Response<BasicResult>> _v1MessagesUidGet(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid 관리 아이디 _id
  ///@param inventory_id 인벤토리 아이디
  ///@param option_id 옵션 아이디
  ///@param item_code 아이템 코드
  ///@param count 아이템 코드
  ///@param orginal_price 상품 등록 가격
  ///@param option_price 옵션 가격
  ///@param discount_price 할인 금액
  ///@param payment_price 실제 판매금액 (결제액)
  Future<chopper.Response<BasicResult>> v1MessagesUidPut({required String? uid,
    required String? inventoryId,
    required String? optionId,
    required String? itemCode,
    required String? count,
    required String? orginalPrice,
    required String? optionPrice,
    required String? discountPrice,
    required String? paymentPrice,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1MessagesUidPut(
        uid: uid,
        inventoryId: inventoryId,
        optionId: optionId,
        itemCode: itemCode,
        count: count,
        orginalPrice: orginalPrice,
        optionPrice: optionPrice,
        discountPrice: discountPrice,
        paymentPrice: paymentPrice,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid 관리 아이디 _id
  ///@param inventory_id 인벤토리 아이디
  ///@param option_id 옵션 아이디
  ///@param item_code 아이템 코드
  ///@param count 아이템 코드
  ///@param orginal_price 상품 등록 가격
  ///@param option_price 옵션 가격
  ///@param discount_price 할인 금액
  ///@param payment_price 실제 판매금액 (결제액)
  @Put(path: '/v1/messages/{uid}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1MessagesUidPut(
      {@Path('uid') required String? uid,
        @Field('inventory_id') required String? inventoryId,
        @Field('option_id') required String? optionId,
        @Field('item_code') required String? itemCode,
        @Field('count') required String? count,
        @Field('orginal_price') required String? orginalPrice,
        @Field('option_price') required String? optionPrice,
        @Field('discount_price') required String? discountPrice,
        @Field('payment_price') required String? paymentPrice,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1NotificationsNotifyNotificationsGet(
      {required String? page,
        required String? size,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1NotificationsNotifyNotificationsGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/notifications/notify/notifications')
  Future<chopper.Response<BasicResult>> _v1NotificationsNotifyNotificationsGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1NotificationsPushRegisterGet(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1NotificationsPushRegisterGet(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/notifications/push/register')
  Future<chopper.Response<BasicResult>> _v1NotificationsPushRegisterGet(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param push_token FCM Token
  Future<chopper.Response<BasicResult>> v1NotificationsPushRegisterPost(
      {required String? pushToken,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1NotificationsPushRegisterPost(
        pushToken: pushToken,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param push_token FCM Token
  @Post(path: '/v1/notifications/push/register', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1NotificationsPushRegisterPost(
      {@Field('push_token') required String? pushToken,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param push_token FCM Token
  Future<chopper.Response<BasicResult>> v1NotificationsPushSubscribeGlobalPost(
      {required String? pushToken,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1NotificationsPushSubscribeGlobalPost(
        pushToken: pushToken,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param push_token FCM Token
  @Post(path: '/v1/notifications/push/subscribe/global', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1NotificationsPushSubscribeGlobalPost(
      {@Field('push_token') required String? pushToken,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1NotificationsPushUnregisterDelete(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1NotificationsPushUnregisterDelete(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Delete(path: '/v1/notifications/push/unregister')
  Future<chopper.Response<BasicResult>> _v1NotificationsPushUnregisterDelete(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param group No description
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1CmsNotificationsGroupGet(
      {required String? group,
        required String? page,
        required String? size,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CmsNotificationsGroupGet(
        group: group,
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param group No description
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/cms/notifications/{group}')
  Future<chopper.Response<BasicResult>> _v1CmsNotificationsGroupGet(
      {@Path('group') required String? group,
        @Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param option_id 옵션 아이디
  ///@param item_code 아이템 코드
  ///@param count 아이템 코드
  ///@param orginal_price 상품 등록 가격
  ///@param option_price 옵션 가격
  ///@param discount_price 할인 금액
  ///@param payment_price 실제 판매금액 (결제액)
  Future<chopper.Response<BasicResult>> v1CartPost({required String? optionId,
    required String? itemCode,
    required String? count,
    required String? orginalPrice,
    required String? optionPrice,
    required String? discountPrice,
    required String? paymentPrice,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CartPost(
        optionId: optionId,
        itemCode: itemCode,
        count: count,
        orginalPrice: orginalPrice,
        optionPrice: optionPrice,
        discountPrice: discountPrice,
        paymentPrice: paymentPrice,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param option_id 옵션 아이디
  ///@param item_code 아이템 코드
  ///@param count 아이템 코드
  ///@param orginal_price 상품 등록 가격
  ///@param option_price 옵션 가격
  ///@param discount_price 할인 금액
  ///@param payment_price 실제 판매금액 (결제액)
  @Post(path: '/v1/cart', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1CartPost(
      {@Field('option_id') required String? optionId,
        @Field('item_code') required String? itemCode,
        @Field('count') required String? count,
        @Field('orginal_price') required String? orginalPrice,
        @Field('option_price') required String? optionPrice,
        @Field('discount_price') required String? discountPrice,
        @Field('payment_price') required String? paymentPrice,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1CartGet({required String? page,
    required String? size,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CartGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/cart')
  Future<chopper.Response<BasicResult>> _v1CartGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid _id
  Future<chopper.Response<BasicResult>> v1CartUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CartUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid _id
  @Delete(path: '/v1/cart/{uid}')
  Future<chopper.Response<BasicResult>> _v1CartUidDelete(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid  _id value
  Future<chopper.Response<BasicResult>> v1CartUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1CartUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid  _id value
  @Get(path: '/v1/cart/{uid}')
  Future<chopper.Response<BasicResult>> _v1CartUidGet(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid 오더 _id
  ///@param store_id 스토어 _id
  ///@param cancel_reason 취소 사유
  Future<chopper.Response<BasicResult>> v1OrdersCancelUidPut(
      {required String? uid,
        required String? storeId,
        required String? cancelReason,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1OrdersCancelUidPut(
        uid: uid,
        storeId: storeId,
        cancelReason: cancelReason,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid 오더 _id
  ///@param store_id 스토어 _id
  ///@param cancel_reason 취소 사유
  @Put(path: '/v1/orders/cancel/{uid}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1OrdersCancelUidPut(
      {@Path('uid') required String? uid,
        @Field('store_id') required String? storeId,
        @Field('cancel_reason') required String? cancelReason,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param store_id 위탁자 아이디 (판매자)
  ///@param order_content 주문 상세
  ///@param goods_count 주문 상품 갯수
  ///@param goods_content 상품 상세 내용         goods : [           { inventory_id, option_id, item_code, count, orginal_price,             option_price, discount_price, payment_price }         ]
  ///@param orderer_name 주문자 이름 (판매자)
  ///@param orderer_account 주문자 아이디 (판매자)
  ///@param orderer_phone 주문자 연락처 (판매자)
  ///@param orderer_address 주문자 주소 (판매자)
  ///@param orderer_address_detail 주문자 주소상세 (판매자)
  ///@param orderer_address_postal_code 주문자 우편변호 (판매자)
  ///@param receiver_name 수취인 이름
  ///@param receiver_account 수취인 아이디
  ///@param receiver_phone 수취인 연락처
  ///@param receiver_address 수취인 주소
  ///@param receiver_address_detail 수취인 주소상세
  ///@param receiver_address_postal_code 수취인 우편변호
  ///@param price_shipping 배송비
  ///@param price_shipping_remoted 도서산간 배송비
  ///@param price_shipping_discount 배송비 할인
  ///@param total_payment_price 결제금액
  ///@param delivery_print_message 배송 메세지
  ///@param delivery_remoted 도서 산간 여부
  ///@param payment_info 결재정보
  Future<chopper.Response<BasicResult>> v1OrdersPost({required String? storeId,
    required String? orderContent,
    required String? goodsCount,
    required Object? goodsContent,
    required String? ordererName,
    required String? ordererAccount,
    required String? ordererPhone,
    required String? ordererAddress,
    required String? ordererAddressDetail,
    required String? ordererAddressPostalCode,
    required String? receiverName,
    required String? receiverAccount,
    required String? receiverPhone,
    required String? receiverAddress,
    required String? receiverAddressDetail,
    required String? receiverAddressPostalCode,
    required String? priceShipping,
    required String? priceShippingRemoted,
    required String? priceShippingDiscount,
    required String? totalPaymentPrice,
    String? deliveryPrintMessage,
    required String? deliveryRemoted,
    String? paymentInfo,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1OrdersPost(
        storeId: storeId,
        orderContent: orderContent,
        goodsCount: goodsCount,
        goodsContent: goodsContent,
        ordererName: ordererName,
        ordererAccount: ordererAccount,
        ordererPhone: ordererPhone,
        ordererAddress: ordererAddress,
        ordererAddressDetail: ordererAddressDetail,
        ordererAddressPostalCode: ordererAddressPostalCode,
        receiverName: receiverName,
        receiverAccount: receiverAccount,
        receiverPhone: receiverPhone,
        receiverAddress: receiverAddress,
        receiverAddressDetail: receiverAddressDetail,
        receiverAddressPostalCode: receiverAddressPostalCode,
        priceShipping: priceShipping,
        priceShippingRemoted: priceShippingRemoted,
        priceShippingDiscount: priceShippingDiscount,
        totalPaymentPrice: totalPaymentPrice,
        deliveryPrintMessage: deliveryPrintMessage,
        deliveryRemoted: deliveryRemoted,
        paymentInfo: paymentInfo,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param store_id 위탁자 아이디 (판매자)
  ///@param order_content 주문 상세
  ///@param goods_count 주문 상품 갯수
  ///@param goods_content 상품 상세 내용         goods : [           { inventory_id, option_id, item_code, count, orginal_price,             option_price, discount_price, payment_price }         ]
  ///@param orderer_name 주문자 이름 (판매자)
  ///@param orderer_account 주문자 아이디 (판매자)
  ///@param orderer_phone 주문자 연락처 (판매자)
  ///@param orderer_address 주문자 주소 (판매자)
  ///@param orderer_address_detail 주문자 주소상세 (판매자)
  ///@param orderer_address_postal_code 주문자 우편변호 (판매자)
  ///@param receiver_name 수취인 이름
  ///@param receiver_account 수취인 아이디
  ///@param receiver_phone 수취인 연락처
  ///@param receiver_address 수취인 주소
  ///@param receiver_address_detail 수취인 주소상세
  ///@param receiver_address_postal_code 수취인 우편변호
  ///@param price_shipping 배송비
  ///@param price_shipping_remoted 도서산간 배송비
  ///@param price_shipping_discount 배송비 할인
  ///@param total_payment_price 결제금액
  ///@param delivery_print_message 배송 메세지
  ///@param delivery_remoted 도서 산간 여부
  ///@param payment_info 결재정보
  @Post(path: '/v1/orders', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1OrdersPost(
      {@Field('store_id') required String? storeId,
        @Field('order_content') required String? orderContent,
        @Field('goods_count') required String? goodsCount,
        @Field('goods_content') required Object? goodsContent,
        @Field('orderer_name') required String? ordererName,
        @Field('orderer_account') required String? ordererAccount,
        @Field('orderer_phone') required String? ordererPhone,
        @Field('orderer_address') required String? ordererAddress,
        @Field('orderer_address_detail') required String? ordererAddressDetail,
        @Field(
            'orderer_address_postal_code') required String? ordererAddressPostalCode,
        @Field('receiver_name') required String? receiverName,
        @Field('receiver_account') required String? receiverAccount,
        @Field('receiver_phone') required String? receiverPhone,
        @Field('receiver_address') required String? receiverAddress,
        @Field(
            'receiver_address_detail') required String? receiverAddressDetail,
        @Field(
            'receiver_address_postal_code') required String? receiverAddressPostalCode,
        @Field('price_shipping') required String? priceShipping,
        @Field('price_shipping_remoted') required String? priceShippingRemoted,
        @Field(
            'price_shipping_discount') required String? priceShippingDiscount,
        @Field('total_payment_price') required String? totalPaymentPrice,
        @Field('delivery_print_message') String? deliveryPrintMessage,
        @Field('delivery_remoted') required String? deliveryRemoted,
        @Field('payment_info') String? paymentInfo,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1OrdersGet({required String? page,
    required String? size,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1OrdersGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/orders')
  Future<chopper.Response<BasicResult>> _v1OrdersGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid 오더 _id
  Future<chopper.Response<BasicResult>> v1OrdersUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1OrdersUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid 오더 _id
  @Get(path: '/v1/orders/{uid}')
  Future<chopper.Response<BasicResult>> _v1OrdersUidGet(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param code No description
  Future<chopper.Response<BasicResult>> v1PassportAuthAccessCodePost(
      {required String? code, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PassportAuthAccessCodePost(
        code: code, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param code No description
  @Post(path: '/v1/passport/auth/access/code', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PassportAuthAccessCodePost(
      {@Field('code') required String? code,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param access_token No description
  ///@param device_id No description ** Unsafe **
  ///@param force No description
  Future<chopper.Response<BasicResult>> v1PassportAuthCertPost(
      {required String? accessToken,
        required String? deviceId,
        bool? force,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PassportAuthCertPost(
        accessToken: accessToken,
        deviceId: deviceId,
        force: force,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param access_token No description
  ///@param device_id No description ** Unsafe **
  ///@param force No description
  @Post(path: '/v1/passport/auth/cert', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PassportAuthCertPost(
      {@Field('access_token') required String? accessToken,
        @Field('device_id') required String? deviceId,
        @Field('force') bool? force,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1PassportAuthCertOauthCallbackGet(
      {String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PassportAuthCertOauthCallbackGet(cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/passport/auth/cert/oauth/callback')
  Future<chopper.Response<BasicResult>> _v1PassportAuthCertOauthCallbackGet(
      {@Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1PassportAuthCertOauthGet(
      {String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PassportAuthCertOauthGet(cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/passport/auth/cert/oauth')
  Future<chopper.Response<BasicResult>> _v1PassportAuthCertOauthGet(
      {@Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1PassportAuthLogoutPost(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PassportAuthLogoutPost(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Post(path: '/v1/passport/auth/logout', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PassportAuthLogoutPost(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param account No description
  ///@param password No description
  Future<chopper.Response<BasicResult>> v1PassportAuthUserAccountPost(
      {required String? account,
        required String? password,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PassportAuthUserAccountPost(
        account: account,
        password: password,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param account No description
  ///@param password No description
  @Post(path: '/v1/passport/auth/user/account', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PassportAuthUserAccountPost(
      {@Field('account') required String? account,
        @Field('password') required String? password,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param device_id No description
  ///@param public_key No description
  ///@param candidates No description
  ///@param cipher No description
  ///@param proof No description
  ///@param code Access Code
  Future<chopper.Response<BasicResult>> v1PassportAuthUserAnonymousPost(
      {required String? deviceId,
        required String? publicKey,
        required Object? candidates,
        required String? cipher,
        required String? proof,
        String? code,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PassportAuthUserAnonymousPost(
        deviceId: deviceId,
        publicKey: publicKey,
        candidates: candidates,
        cipher: cipher,
        proof: proof,
        code: code,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param device_id No description
  ///@param public_key No description
  ///@param candidates No description
  ///@param cipher No description
  ///@param proof No description
  ///@param code Access Code
  @Post(path: '/v1/passport/auth/user/anonymous', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PassportAuthUserAnonymousPost(
      {@Field('device_id') required String? deviceId,
        @Field('public_key') required String? publicKey,
        @Field('candidates') required Object? candidates,
        @Field('cipher') required String? cipher,
        @Field('proof') required String? proof,
        @Field('code') String? code,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param password User 확인용 Password
  ///@param new_password User 새로운 Password
  Future<chopper.Response<BasicResult>> v1PassportAuthUserPasswordPut(
      {required String? password,
        required String? newPassword,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PassportAuthUserPasswordPut(
        password: password,
        newPassword: newPassword,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param password User 확인용 Password
  ///@param new_password User 새로운 Password
  @Put(path: '/v1/passport/auth/user/password', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PassportAuthUserPasswordPut(
      {@Field('password') required String? password,
        @Field('new_password') required String? newPassword,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param user_name No description
  ///@param user_nickname No description
  ///@param user_first_name No description
  ///@param user_last_name No description
  ///@param user_dial_code No description
  ///@param user_iso_code No description
  ///@param user_phone No description
  ///@param user_email No description
  ///@param user_gender No description
  ///@param profile_image No description
  Future<chopper.Response<BasicResult>> v1PassportAuthUserProfilePut(
      {String? userName,
        String? userNickname,
        String? userFirstName,
        String? userLastName,
        String? userDialCode,
        String? userIsoCode,
        String? userPhone,
        String? userEmail,
        String? userGender,
        String? profileImage,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PassportAuthUserProfilePut(
        userName: userName,
        userNickname: userNickname,
        userFirstName: userFirstName,
        userLastName: userLastName,
        userDialCode: userDialCode,
        userIsoCode: userIsoCode,
        userPhone: userPhone,
        userEmail: userEmail,
        userGender: userGender,
        profileImage: profileImage,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param user_name No description
  ///@param user_nickname No description
  ///@param user_first_name No description
  ///@param user_last_name No description
  ///@param user_dial_code No description
  ///@param user_iso_code No description
  ///@param user_phone No description
  ///@param user_email No description
  ///@param user_gender No description
  ///@param profile_image No description
  @Put(path: '/v1/passport/auth/user/profile', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PassportAuthUserProfilePut(
      {@Field('user_name') String? userName,
        @Field('user_nickname') String? userNickname,
        @Field('user_first_name') String? userFirstName,
        @Field('user_last_name') String? userLastName,
        @Field('user_dial_code') String? userDialCode,
        @Field('user_iso_code') String? userIsoCode,
        @Field('user_phone') String? userPhone,
        @Field('user_email') String? userEmail,
        @Field('user_gender') String? userGender,
        @Field('profile_image') String? profileImage,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param username No description
  ///@param password No description
  ///@param user_name No description
  ///@param user_email No description
  ///@param user_phone No description
  ///@param user_nickname No description
  ///@param user_birth No description
  ///@param user_gender No description
  Future<chopper.Response<BasicResult>> v1PassportAuthUserRegisterPost(
      {required String? username,
        required String? password,
        required String? userName,
        String? userEmail,
        String? userPhone,
        String? userNickname,
        String? userBirth,
        String? userGender,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PassportAuthUserRegisterPost(
        username: username,
        password: password,
        userName: userName,
        userEmail: userEmail,
        userPhone: userPhone,
        userNickname: userNickname,
        userBirth: userBirth,
        userGender: userGender,
        cacheControl: cacheControl);
  }

  ///
  ///@param username No description
  ///@param password No description
  ///@param user_name No description
  ///@param user_email No description
  ///@param user_phone No description
  ///@param user_nickname No description
  ///@param user_birth No description
  ///@param user_gender No description
  @Post(path: '/v1/passport/auth/user/register', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PassportAuthUserRegisterPost(
      {@Field('username') required String? username,
        @Field('password') required String? password,
        @Field('user_name') required String? userName,
        @Field('user_email') String? userEmail,
        @Field('user_phone') String? userPhone,
        @Field('user_nickname') String? userNickname,
        @Field('user_birth') String? userBirth,
        @Field('user_gender') String? userGender,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1PassportAuthVerifyGet(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PassportAuthVerifyGet(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/passport/auth/verify')
  Future<chopper.Response<BasicResult>> _v1PassportAuthVerifyGet(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param device_id No description
  ///@param public_key No description
  ///@param candidates No description
  ///@param cipher No description
  ///@param proof No description
  Future<chopper.Response<BasicResult>> v1PassportAuthVerifyPut(
      {required String? deviceId,
        required String? publicKey,
        required Object? candidates,
        required String? cipher,
        required String? proof,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PassportAuthVerifyPut(
        deviceId: deviceId,
        publicKey: publicKey,
        candidates: candidates,
        cipher: cipher,
        proof: proof,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param device_id No description
  ///@param public_key No description
  ///@param candidates No description
  ///@param cipher No description
  ///@param proof No description
  @Put(path: '/v1/passport/auth/verify', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PassportAuthVerifyPut(
      {@Field('device_id') required String? deviceId,
        @Field('public_key') required String? publicKey,
        @Field('candidates') required Object? candidates,
        @Field('cipher') required String? cipher,
        @Field('proof') required String? proof,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param session_token 리얼타임에 연결된 세션 토큰
  Future<chopper.Response<BasicResult>> v1UserAccessCodePost(
      {String? sessionToken, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserAccessCodePost(
        sessionToken: sessionToken,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param session_token 리얼타임에 연결된 세션 토큰
  @Post(path: '/v1/user/access/code', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1UserAccessCodePost(
      {@Field('session_token') String? sessionToken,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param field No description
  Future<chopper.Response<BasicResult>> v1UserAgreePut(
      {required String? field, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserAgreePut(
        field: field, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param field No description
  @Put(path: '/v1/user/agree', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1UserAgreePut(
      {@Field('field') required String? field,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1UserRelationsArtiketTotalGet(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserRelationsArtiketTotalGet(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/user/relations/artiket/total')
  Future<chopper.Response<BasicResult>> _v1UserRelationsArtiketTotalGet(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param account No description
  Future<chopper.Response<BasicResult>> v1UserCheckAccountGet(
      {required String? account, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserCheckAccountGet(account: account, cacheControl: cacheControl);
  }

  ///
  ///@param account No description
  @Get(path: '/v1/user/check/account')
  Future<chopper.Response<BasicResult>> _v1UserCheckAccountGet(
      {@Query('account') required String? account,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param email No description
  Future<chopper.Response<BasicResult>> v1UserCheckEmailGet(
      {required String? email, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserCheckEmailGet(email: email, cacheControl: cacheControl);
  }

  ///
  ///@param email No description
  @Get(path: '/v1/user/check/email')
  Future<chopper.Response<BasicResult>> _v1UserCheckEmailGet(
      {@Query('email') required String? email,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param username No description
  Future<chopper.Response<BasicResult>> v1UserCheckUsernameGet(
      {required String? username, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserCheckUsernameGet(
        username: username,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param username No description
  @Get(path: '/v1/user/check/username')
  Future<chopper.Response<BasicResult>> _v1UserCheckUsernameGet(
      {@Query('username') required String? username,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Paging Size
  Future<chopper.Response<BasicResult>> v1UserDevicesGet({required String? page,
    required String? size,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserDevicesGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Paging Size
  @Get(path: '/v1/user/devices')
  Future<chopper.Response<BasicResult>> _v1UserDevicesGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param device_id Device Id
  ///@param device_locale Device Locale
  ///@param device_type Device Type
  ///@param device_model Device Model
  ///@param device_user_agent Device User Agent
  ///@param os OS Type
  ///@param os_version OS Version
  ///@param app_version app_version
  ///@param push_token FCM Token
  Future<chopper.Response<BasicResult>> v1UserDevicesPost(
      {required String? deviceId,
        required String? deviceLocale,
        required String? deviceType,
        required String? deviceModel,
        required String? deviceUserAgent,
        required String? os,
        required String? osVersion,
        required String? appVersion,
        required String? pushToken,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserDevicesPost(
        deviceId: deviceId,
        deviceLocale: deviceLocale,
        deviceType: deviceType,
        deviceModel: deviceModel,
        deviceUserAgent: deviceUserAgent,
        os: os,
        osVersion: osVersion,
        appVersion: appVersion,
        pushToken: pushToken,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param device_id Device Id
  ///@param device_locale Device Locale
  ///@param device_type Device Type
  ///@param device_model Device Model
  ///@param device_user_agent Device User Agent
  ///@param os OS Type
  ///@param os_version OS Version
  ///@param app_version app_version
  ///@param push_token FCM Token
  @Post(path: '/v1/user/devices', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1UserDevicesPost(
      {@Field('device_id') required String? deviceId,
        @Field('device_locale') required String? deviceLocale,
        @Field('device_type') required String? deviceType,
        @Field('device_model') required String? deviceModel,
        @Field('device_user_agent') required String? deviceUserAgent,
        @Field('os') required String? os,
        @Field('os_version') required String? osVersion,
        @Field('app_version') required String? appVersion,
        @Field('push_token') required String? pushToken,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param device_id Device Id
  Future<chopper.Response<BasicResult>> v1UserDevicesDelete(
      {required String? deviceId, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserDevicesDelete(
        deviceId: deviceId,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param device_id Device Id
  @Delete(path: '/v1/user/devices')
  Future<chopper.Response<BasicResult>> _v1UserDevicesDelete(
      {@Query('device_id') required String? deviceId,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param request_id SMS Request ID
  ///@param code SMS Verify Code
  Future<chopper.Response<BasicResult>> v1UserFindAccountSmsGet(
      {required String? requestId,
        required String? code,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserFindAccountSmsGet(
        requestId: requestId, code: code, cacheControl: cacheControl);
  }

  ///
  ///@param request_id SMS Request ID
  ///@param code SMS Verify Code
  @Get(path: '/v1/user/find/account/sms')
  Future<chopper.Response<BasicResult>> _v1UserFindAccountSmsGet(
      {@Query('request_id') required String? requestId,
        @Query('code') required String? code,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param phone Phone Number
  Future<chopper.Response<BasicResult>> v1UserFindAccountSmsSendPost(
      {required String? phone, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserFindAccountSmsSendPost(
        phone: phone, cacheControl: cacheControl);
  }

  ///
  ///@param phone Phone Number
  @Post(path: '/v1/user/find/account/sms/send', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1UserFindAccountSmsSendPost(
      {@Field('phone') required String? phone,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid User ID
  Future<chopper.Response<BasicResult>> v1UserUidGet(
      {required String? uid, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserUidGet(uid: uid, cacheControl: cacheControl);
  }

  ///
  ///@param uid User ID
  @Get(path: '/v1/user/{uid}')
  Future<chopper.Response<BasicResult>> _v1UserUidGet(
      {@Path('uid') required String? uid,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param token 패스워드 변경용 토큰
  ///@param password 새로운 패스워드
  Future<chopper.Response<BasicResult>> v1UserPasswordResetPut(
      {required String? token,
        required String? password,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserPasswordResetPut(
        token: token, password: password, cacheControl: cacheControl);
  }

  ///
  ///@param token 패스워드 변경용 토큰
  ///@param password 새로운 패스워드
  @Put(path: '/v1/user/password/reset', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1UserPasswordResetPut(
      {@Field('token') required String? token,
        @Field('password') required String? password,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param account No description
  Future<chopper.Response<BasicResult>> v1UserPasswordResetSendPost(
      {required String? account, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserPasswordResetSendPost(
        account: account, cacheControl: cacheControl);
  }

  ///
  ///@param account No description
  @Post(path: '/v1/user/password/reset/send', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1UserPasswordResetSendPost(
      {@Field('account') required String? account,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1UserProfileMeGet(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserProfileMeGet(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/user/profile/me')
  Future<chopper.Response<BasicResult>> _v1UserProfileMeGet(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param user_name No description
  ///@param user_nickname No description
  ///@param user_first_name No description
  ///@param user_last_name No description
  ///@param user_dial_code No description
  ///@param user_iso_code No description
  ///@param user_phone No description
  ///@param user_email No description
  ///@param user_gender No description
  ///@param profile_image No description
  Future<chopper.Response<BasicResult>> v1UserProfilePut({String? userName,
    String? userNickname,
    String? userFirstName,
    String? userLastName,
    String? userDialCode,
    String? userIsoCode,
    String? userPhone,
    String? userEmail,
    String? userGender,
    String? profileImage,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserProfilePut(
        userName: userName,
        userNickname: userNickname,
        userFirstName: userFirstName,
        userLastName: userLastName,
        userDialCode: userDialCode,
        userIsoCode: userIsoCode,
        userPhone: userPhone,
        userEmail: userEmail,
        userGender: userGender,
        profileImage: profileImage,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param user_name No description
  ///@param user_nickname No description
  ///@param user_first_name No description
  ///@param user_last_name No description
  ///@param user_dial_code No description
  ///@param user_iso_code No description
  ///@param user_phone No description
  ///@param user_email No description
  ///@param user_gender No description
  ///@param profile_image No description
  @Put(path: '/v1/user/profile', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1UserProfilePut(
      {@Field('user_name') String? userName,
        @Field('user_nickname') String? userNickname,
        @Field('user_first_name') String? userFirstName,
        @Field('user_last_name') String? userLastName,
        @Field('user_dial_code') String? userDialCode,
        @Field('user_iso_code') String? userIsoCode,
        @Field('user_phone') String? userPhone,
        @Field('user_email') String? userEmail,
        @Field('user_gender') String? userGender,
        @Field('profile_image') String? profileImage,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param username No description
  ///@param password No description
  ///@param user_name No description
  ///@param user_email No description
  ///@param user_phone No description
  ///@param user_nickname No description
  ///@param user_first_name No description
  ///@param user_last_name No description
  ///@param user_birth No description
  ///@param user_gender No description
  Future<chopper.Response<BasicResult>> v1UserRegisterPost(
      {required String? username,
        required String? password,
        required String? userName,
        String? userEmail,
        String? userPhone,
        String? userNickname,
        String? userFirstName,
        String? userLastName,
        String? userBirth,
        String? userGender,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserRegisterPost(
        username: username,
        password: password,
        userName: userName,
        userEmail: userEmail,
        userPhone: userPhone,
        userNickname: userNickname,
        userFirstName: userFirstName,
        userLastName: userLastName,
        userBirth: userBirth,
        userGender: userGender,
        cacheControl: cacheControl);
  }

  ///
  ///@param username No description
  ///@param password No description
  ///@param user_name No description
  ///@param user_email No description
  ///@param user_phone No description
  ///@param user_nickname No description
  ///@param user_first_name No description
  ///@param user_last_name No description
  ///@param user_birth No description
  ///@param user_gender No description
  @Post(path: '/v1/user/register', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1UserRegisterPost(
      {@Field('username') required String? username,
        @Field('password') required String? password,
        @Field('user_name') required String? userName,
        @Field('user_email') String? userEmail,
        @Field('user_phone') String? userPhone,
        @Field('user_nickname') String? userNickname,
        @Field('user_first_name') String? userFirstName,
        @Field('user_last_name') String? userLastName,
        @Field('user_birth') String? userBirth,
        @Field('user_gender') String? userGender,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1UserRelationsTotalGet(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserRelationsTotalGet(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/user/relations/total')
  Future<chopper.Response<BasicResult>> _v1UserRelationsTotalGet(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1UserUnregisterPost(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1UserUnregisterPost(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Post(path: '/v1/user/unregister', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1UserUnregisterPost(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1PaymentBillingPrimaryGet(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentBillingPrimaryGet(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/payment/billing/primary')
  Future<chopper.Response<BasicResult>> _v1PaymentBillingPrimaryGet(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param billing_gateway Billing Gateway
  ///@param card_number Card Number
  ///@param card_password Card Password (NICEPAY)
  ///@param card_cvc Card CVC (EXIMBAY)
  ///@param id_number ID Number (생년월일 6자리 또는 사업자등록번호 10자리)
  ///@param expiration_year 유효기간 (년)
  ///@param expiration_month 유효기간 (월)
  ///@param placeholder_name 카드 이름
  ///@param is_primary 대표카드 여부
  ///@param card_nation 카드 국가정보
  Future<chopper.Response<BasicResult>> v1PaymentBillingPost(
      {required String? billingGateway,
        required String? cardNumber,
        String? cardPassword,
        String? cardCvc,
        String? idNumber,
        required String? expirationYear,
        required String? expirationMonth,
        String? placeholderName,
        String? isPrimary,
        String? cardNation,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentBillingPost(
        billingGateway: billingGateway,
        cardNumber: cardNumber,
        cardPassword: cardPassword,
        cardCvc: cardCvc,
        idNumber: idNumber,
        expirationYear: expirationYear,
        expirationMonth: expirationMonth,
        placeholderName: placeholderName,
        isPrimary: isPrimary,
        cardNation: cardNation,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param billing_gateway Billing Gateway
  ///@param card_number Card Number
  ///@param card_password Card Password (NICEPAY)
  ///@param card_cvc Card CVC (EXIMBAY)
  ///@param id_number ID Number (생년월일 6자리 또는 사업자등록번호 10자리)
  ///@param expiration_year 유효기간 (년)
  ///@param expiration_month 유효기간 (월)
  ///@param placeholder_name 카드 이름
  ///@param is_primary 대표카드 여부
  ///@param card_nation 카드 국가정보
  @Post(path: '/v1/payment/billing', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PaymentBillingPost(
      {@Field('billing_gateway') required String? billingGateway,
        @Field('card_number') required String? cardNumber,
        @Field('card_password') String? cardPassword,
        @Field('card_cvc') String? cardCvc,
        @Field('id_number') String? idNumber,
        @Field('expiration_year') required String? expirationYear,
        @Field('expiration_month') required String? expirationMonth,
        @Field('placeholder_name') String? placeholderName,
        @Field('is_primary') String? isPrimary,
        @Field('card_nation') String? cardNation,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1PaymentBillingGet(
      {required String? page,
        required String? size,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentBillingGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/payment/billing')
  Future<chopper.Response<BasicResult>> _v1PaymentBillingGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id 삭제하려는 카드 아이디
  Future<chopper.Response<BasicResult>> v1PaymentBillingIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentBillingIdDelete(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id 삭제하려는 카드 아이디
  @Delete(path: '/v1/payment/billing/{id}')
  Future<chopper.Response<BasicResult>> _v1PaymentBillingIdDelete(
      {@Path('id') required String? id,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1PaymentBillingIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentBillingIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Get(path: '/v1/payment/billing/{id}')
  Future<chopper.Response<BasicResult>> _v1PaymentBillingIdGet(
      {@Path('id') required String? id,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id 대표카드로 변경하려는 카드
  Future<chopper.Response<BasicResult>> v1PaymentBillingIdPrimaryPut(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentBillingIdPrimaryPut(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id 대표카드로 변경하려는 카드
  @Put(path: '/v1/payment/billing/{id}/primary', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PaymentBillingIdPrimaryPut(
      {@Path('id') required String? id,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Receipt ID
  Future<chopper.Response<BasicResult>> v1PaymentReceiptsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentReceiptsIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id Receipt ID
  @Get(path: '/v1/payment/receipts/{id}')
  Future<chopper.Response<BasicResult>> _v1PaymentReceiptsIdGet(
      {@Path('id') required String? id,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Receipt Id
  ///@param order_uid 거래 주문 코드
  ///@param transaction_type 결제 타입
  ///@param transaction_uid 거래 고유 코드
  Future<chopper.Response<BasicResult>> v1PaymentReceiptsIdCheckGet(
      {required String? id,
        required String? orderUid,
        required String? transactionType,
        required String? transactionUid,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentReceiptsIdCheckGet(
        id: id,
        orderUid: orderUid,
        transactionType: transactionType,
        transactionUid: transactionUid,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param id Receipt Id
  ///@param order_uid 거래 주문 코드
  ///@param transaction_type 결제 타입
  ///@param transaction_uid 거래 고유 코드
  @Get(path: '/v1/payment/receipts/{id}/check')
  Future<chopper.Response<BasicResult>> _v1PaymentReceiptsIdCheckGet(
      {@Path('id') required String? id,
        @Query('order_uid') required String? orderUid,
        @Query('transaction_type') required String? transactionType,
        @Query('transaction_uid') required String? transactionUid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param order_uid 거래 주문 코드
  ///@param transaction_type 결제 타입
  Future<chopper.Response<BasicResult>> v1PaymentSubscriptionsConfirmPost(
      {required String? orderUid,
        required String? transactionType,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentSubscriptionsConfirmPost(
        orderUid: orderUid,
        transactionType: transactionType,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param order_uid 거래 주문 코드
  ///@param transaction_type 결제 타입
  @Post(path: '/v1/payment/subscriptions/confirm', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PaymentSubscriptionsConfirmPost(
      {@Field('order_uid') required String? orderUid,
        @Field('transaction_type') required String? transactionType,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Subscription ID
  Future<chopper.Response<BasicResult>> v1PaymentSubscriptionsIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentSubscriptionsIdDelete(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id Subscription ID
  @Delete(path: '/v1/payment/subscriptions/{id}')
  Future<chopper.Response<BasicResult>> _v1PaymentSubscriptionsIdDelete(
      {@Path('id') required String? id,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Subscription ID
  Future<chopper.Response<BasicResult>> v1PaymentSubscriptionsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentSubscriptionsIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id Subscription ID
  @Get(path: '/v1/payment/subscriptions/{id}')
  Future<chopper.Response<BasicResult>> _v1PaymentSubscriptionsIdGet(
      {@Path('id') required String? id,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1PaymentSubscriptionsGet(
      {required String? page,
        required String? size,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentSubscriptionsGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/payment/subscriptions')
  Future<chopper.Response<BasicResult>> _v1PaymentSubscriptionsGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param billing_gateway Billing Gateway
  ///@param product_id 구독 상품 ID
  Future<chopper.Response<BasicResult>> v1PaymentSubscriptionsNewPost(
      {required String? billingGateway,
        required String? productId,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentSubscriptionsNewPost(
        billingGateway: billingGateway,
        productId: productId,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param billing_gateway Billing Gateway
  ///@param product_id 구독 상품 ID
  @Post(path: '/v1/payment/subscriptions/new', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PaymentSubscriptionsNewPost(
      {@Field('billing_gateway') required String? billingGateway,
        @Field('product_id') required String? productId,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id 조회하려는 transaction id
  Future<chopper.Response<BasicResult>> v1PaymentTransactionsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PaymentTransactionsIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id 조회하려는 transaction id
  @Get(path: '/v1/payment/transactions/{id}')
  Future<chopper.Response<BasicResult>> _v1PaymentTransactionsIdGet(
      {@Path('id') required String? id,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param topic Channel Name
  ///@param page Page
  ///@param size Size of page
  ///@param sort ['recent','popular']
  ///@param me 자신이 작성한 게시글, [true: 1, false: 0], default false
  ///@param article_key 기사에 연동된 포스트 가져오기
  ///@param include_types 콤마(,)로 구분['post.all','vote.all','post', 'post.news', 'post.photo', 'post.video', 'post.youtube', 'post.link', 'vote', 'vote.ox', 'banner', 'popup'
  ///@param exclude_types 콤마(,)로 구분['post.all','vote.all','post', 'post.news', 'post.photo', 'post.video', 'post.youtube', 'post.link', 'vote', 'vote.ox', 'banner', 'popup']
  Future<chopper.Response<BasicResult>> v1ChannelsTopicPostsGet(
      {required String? topic,
        required String? page,
        required String? size,
        String? sort,
        String? me,
        String? articleKey,
        String? includeTypes,
        String? excludeTypes,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ChannelsTopicPostsGet(
        topic: topic,
        page: page,
        size: size,
        sort: sort,
        me: me,
        articleKey: articleKey,
        includeTypes: includeTypes,
        excludeTypes: excludeTypes,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param topic Channel Name
  ///@param page Page
  ///@param size Size of page
  ///@param sort ['recent','popular']
  ///@param me 자신이 작성한 게시글, [true: 1, false: 0], default false
  ///@param article_key 기사에 연동된 포스트 가져오기
  ///@param include_types 콤마(,)로 구분['post.all','vote.all','post', 'post.news', 'post.photo', 'post.video', 'post.youtube', 'post.link', 'vote', 'vote.ox', 'banner', 'popup'
  ///@param exclude_types 콤마(,)로 구분['post.all','vote.all','post', 'post.news', 'post.photo', 'post.video', 'post.youtube', 'post.link', 'vote', 'vote.ox', 'banner', 'popup']
  @Get(path: '/v1/channels/{topic}/posts')
  Future<chopper.Response<BasicResult>> _v1ChannelsTopicPostsGet(
      {@Path('topic') required String? topic,
        @Query('page') required String? page,
        @Query('size') required String? size,
        @Query('sort') String? sort,
        @Query('me') String? me,
        @Query('article_key') String? articleKey,
        @Query('include_types') String? includeTypes,
        @Query('exclude_types') String? excludeTypes,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param topic Channel Name
  ///@param type Post Type
  ///@param content Post Content
  ///@param title Post Title
  ///@param summary Post Summary
  ///@param tags 콤마(,)로 구분
  ///@param resource_key Resource Key
  ///@param resources Resource Data
  ///@param extras Extra Data if(type === vote) extras: {votes: { title: '', keys: [ {key, thumbnail},... ] }} ** Unsafe **
  Future<chopper.Response<BasicResult>> v1ChannelsTopicPostsPost(
      {required String? topic,
        required String? type,
        String? content,
        String? title,
        String? summary,
        String? tags,
        String? resourceKey,
        String? resources,
        Object? extras,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ChannelsTopicPostsPost(
        topic: topic,
        type: type,
        content: content,
        title: title,
        summary: summary,
        tags: tags,
        resourceKey: resourceKey,
        resources: resources,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param topic Channel Name
  ///@param type Post Type
  ///@param content Post Content
  ///@param title Post Title
  ///@param summary Post Summary
  ///@param tags 콤마(,)로 구분
  ///@param resource_key Resource Key
  ///@param resources Resource Data
  ///@param extras Extra Data if(type === vote) extras: {votes: { title: '', keys: [ {key, thumbnail},... ] }} ** Unsafe **
  @Post(path: '/v1/channels/{topic}/posts', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1ChannelsTopicPostsPost(
      {@Path('topic') required String? topic,
        @Field('type') required String? type,
        @Field('content') String? content,
        @Field('title') String? title,
        @Field('summary') String? summary,
        @Field('tags') String? tags,
        @Field('resource_key') String? resourceKey,
        @Field('resources') String? resources,
        @Field('extras') Object? extras,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1PostsBookmarkGet(
      {required String? page,
        required String? size,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsBookmarkGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/posts/bookmark')
  Future<chopper.Response<BasicResult>> _v1PostsBookmarkGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1PostsReactionGet(
      {required String? page,
        required String? size,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsReactionGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/posts/reaction')
  Future<chopper.Response<BasicResult>> _v1PostsReactionGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param channel Channel Name
  Future<chopper.Response<BasicResult>> v1ChannelsChannelVideosGet(
      {required String? page,
        required String? size,
        required String? channel,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ChannelsChannelVideosGet(
        page: page, size: size, channel: channel, cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param channel Channel Name
  @Get(path: '/v1/channels/{channel}/videos')
  Future<chopper.Response<BasicResult>> _v1ChannelsChannelVideosGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Path('channel') required String? channel,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  ///@param title Comment Title
  ///@param content Comment Content
  ///@param password Writer Password
  ///@param extras No description
  Future<chopper.Response<BasicResult>> v1PostsUidCommentsPost(
      {required String? uid,
        String? title,
        required String? content,
        String? password,
        String? extras,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidCommentsPost(
        uid: uid,
        title: title,
        content: content,
        password: password,
        extras: extras,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  ///@param title Comment Title
  ///@param content Comment Content
  ///@param password Writer Password
  ///@param extras No description
  @Post(path: '/v1/posts/{uid}/comments', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PostsUidCommentsPost(
      {@Path('uid') required String? uid,
        @Field('title') String? title,
        @Field('content') required String? content,
        @Field('password') String? password,
        @Field('extras') String? extras,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param uid Post ID
  Future<chopper.Response<BasicResult>> v1PostsUidCommentsGet(
      {required String? page,
        required String? size,
        required int uid,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidCommentsGet(
        page: page,
        size: size,
        uid: uid,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param uid Post ID
  @Get(path: '/v1/posts/{uid}/comments')
  Future<chopper.Response<BasicResult>> _v1PostsUidCommentsGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Path('uid') required int uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  ///@param comment_id No description
  Future<chopper.Response<BasicResult>> v1PostsUidCommentsCommentIdDelete(
      {required String? uid,
        required String? commentId,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidCommentsCommentIdDelete(
        uid: uid,
        commentId: commentId,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  ///@param comment_id No description
  @Delete(path: '/v1/posts/{uid}/comments/{comment_id}')
  Future<chopper.Response<BasicResult>> _v1PostsUidCommentsCommentIdDelete(
      {@Path('uid') required String? uid,
        @Path('comment_id') required String? commentId,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  Future<chopper.Response<BasicResult>> v1PostsUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  @Delete(path: '/v1/posts/{uid}')
  Future<chopper.Response<BasicResult>> _v1PostsUidDelete(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  Future<chopper.Response<BasicResult>> v1PostsUidGet(
      {required int uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid No description
  @Get(path: '/v1/posts/{uid}')
  Future<chopper.Response<BasicResult>> _v1PostsUidGet(
      {@Path('uid') required int uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  @Get(path: '/v1/posts/{uid}/like/me')
  Future<chopper.Response<BasicResult>> getV1PostsLikeMe(
      {@Path('uid') required int uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid No description
  @Get(path: '/v1/posts/{uid}/like')
  Future<chopper.Response<BasicResult>> fetchV1PostsLike(
      {@Path('uid') required int uid,
        @Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Post ID
  ///@param link Post Link
  ///@param image Share Image
  Future<chopper.Response<BasicResult>> v1PostsUidLinkGet({required String? uid,
    required String? link,
    String? image,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidLinkGet(
        uid: uid,
        link: link,
        image: image,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid Post ID
  ///@param link Post Link
  ///@param image Share Image
  @Get(path: '/v1/posts/{uid}/link')
  Future<chopper.Response<BasicResult>> _v1PostsUidLinkGet(
      {@Path('uid') required String? uid,
        @Query('link') required String? link,
        @Query('image') String? image,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param sort ['recent','popular']
  ///@param group Group
  ///@param content 작성 내용 like 검색
  ///@param me 자신이 작성한 게시글, [true: 1, false: 0], default false
  ///@param article_key 기사에 연동된 포스트 가져오기
  ///@param include_types 콤마(,)로 구분['post.all','vote.all','post', 'post.news', 'post.photo', 'post.video', 'post.youtube', 'post.link', 'vote', 'vote.ox', 'banner', 'popup']
  ///@param exclude_types 콤마(,)로 구분['post.all','vote.all','post', 'post.news', 'post.photo', 'post.video', 'post.youtube', 'post.link', 'vote', 'vote.ox', 'banner', 'popup']
  Future<chopper.Response<BasicResult>> v1PostsGet({required String? page,
    required String? size,
    String? sort,
    String? group,
    String? content,
    String? me,
    String? articleKey,
    String? includeTypes,
    String? excludeTypes,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsGet(
        page: page,
        size: size,
        sort: sort,
        group: group,
        content: content,
        me: me,
        articleKey: articleKey,
        includeTypes: includeTypes,
        excludeTypes: excludeTypes,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param sort ['recent','popular']
  ///@param group Group
  ///@param content 작성 내용 like 검색
  ///@param me 자신이 작성한 게시글, [true: 1, false: 0], default false
  ///@param article_key 기사에 연동된 포스트 가져오기
  ///@param include_types 콤마(,)로 구분['post.all','vote.all','post', 'post.news', 'post.photo', 'post.video', 'post.youtube', 'post.link', 'vote', 'vote.ox', 'banner', 'popup']
  ///@param exclude_types 콤마(,)로 구분['post.all','vote.all','post', 'post.news', 'post.photo', 'post.video', 'post.youtube', 'post.link', 'vote', 'vote.ox', 'banner', 'popup']
  @Get(path: '/v1/posts')
  Future<chopper.Response<BasicResult>> _v1PostsGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Query('sort') String? sort,
        @Query('group') String? group,
        @Query('content') String? content,
        @Query('me') String? me,
        @Query('article_key') String? articleKey,
        @Query('include_types') String? includeTypes,
        @Query('exclude_types') String? excludeTypes,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Post uid
  Future<chopper.Response<BasicResult>> v1PostsUidBookmarkPost(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidBookmarkPost(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Post uid
  @Post(path: '/v1/posts/{uid}/bookmark', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PostsUidBookmarkPost(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Post uid
  Future<chopper.Response<BasicResult>> v1PostsUidBookmarkDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidBookmarkDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Post uid
  @Delete(path: '/v1/posts/{uid}/bookmark')
  Future<chopper.Response<BasicResult>> _v1PostsUidBookmarkDelete(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Post uid
  ///@param reaction Reaction Type ['like']
  Future<chopper.Response<BasicResult>> v1PostsUidReactionPost(
      {required int uid,
        required String? reaction,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidReactionPost(
        uid: uid,
        reaction: reaction,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid Post uid
  ///@param reaction Reaction Type ['like']
  @Post(path: '/v1/posts/{uid}/reaction', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PostsUidReactionPost(
      {@Path('uid') required int uid,
        @Field('reaction') required String? reaction,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Post uid
  Future<chopper.Response<BasicResult>> v1PostsUidReactionDelete(
      {required int uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidReactionDelete(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Post uid
  @Delete(path: '/v1/posts/{uid}/reaction')
  Future<chopper.Response<BasicResult>> _v1PostsUidReactionDelete(
      {@Path('uid') required int uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param post_group Post Group
  Future<chopper.Response<BasicResult>> v1PostsReadAllPut(
      {required String? postGroup,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsReadAllPut(
        postGroup: postGroup,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param post_group Post Group
  @Put(path: '/v1/posts/read/all', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PostsReadAllPut(
      {@Field('post_group') required String? postGroup,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Post ID
  Future<chopper.Response<BasicResult>> v1PostsUidSharePost(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidSharePost(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Post ID
  @Post(path: '/v1/posts/{uid}/share', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PostsUidSharePost(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Post uid
  Future<chopper.Response<BasicResult>> v1PostsUidVoteGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidVoteGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid Post uid
  @Get(path: '/v1/posts/{uid}/vote')
  Future<chopper.Response<BasicResult>> _v1PostsUidVoteGet(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid Post uid
  ///@param vote Vote Key
  Future<chopper.Response<BasicResult>> v1PostsUidVotePost({required int uid,
    required String? vote,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PostsUidVotePost(
        uid: uid,
        vote: vote,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param uid Post uid
  ///@param vote Vote Key
  @Post(path: '/v1/posts/{uid}/vote', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PostsUidVotePost(
      {@Path('uid') required int uid,
        @Field('vote') required String? vote,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param type ALL, FREE_PASS
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1ProductsListMyGet(
      {required String? type,
        required String? page,
        required String? size,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ProductsListMyGet(
        type: type,
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param type ALL, FREE_PASS
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/products/list/my')
  Future<chopper.Response<BasicResult>> _v1ProductsListMyGet(
      {@Query('type') required String? type,
        @Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Product Id
  Future<chopper.Response<BasicResult>> v1ProductsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ProductsIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id Product Id
  @Get(path: '/v1/products/{id}')
  Future<chopper.Response<BasicResult>> _v1ProductsIdGet(
      {@Path('id') required String? id,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param type ALL, FREE_PASS
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1ProductsGet({required String? type,
    required String? page,
    required String? size,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ProductsGet(
        type: type,
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param type ALL, FREE_PASS
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/products')
  Future<chopper.Response<BasicResult>> _v1ProductsGet(
      {@Query('type') required String? type,
        @Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Product Id
  ///@param quantity 수량
  Future<chopper.Response<BasicResult>> v1ProductsIdPurchaseNewPost(
      {required String? id,
        required String? quantity,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ProductsIdPurchaseNewPost(
        id: id,
        quantity: quantity,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param id Product Id
  ///@param quantity 수량
  @Post(path: '/v1/products/{id}/purchase/new', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1ProductsIdPurchaseNewPost(
      {@Path('id') required String? id,
        @Field('quantity') required String? quantity,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Receipt Id
  ///@param reserve 주문자 정보 (JSON)
  ///@param billing 결제 정보 (JSON)
  Future<chopper.Response<BasicResult>> v1ProductsPurchaseIdCompletePost(
      {required String? id,
        required String? reserve,
        required String? billing,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ProductsPurchaseIdCompletePost(
        id: id,
        reserve: reserve,
        billing: billing,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param id Receipt Id
  ///@param reserve 주문자 정보 (JSON)
  ///@param billing 결제 정보 (JSON)
  @Post(path: '/v1/products/purchase/{id}/complete', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1ProductsPurchaseIdCompletePost(
      {@Path('id') required String? id,
        @Field('reserve') required String? reserve,
        @Field('billing') required String? billing,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id Receipt Id
  ///@param quantity 수량
  ///@param discount_code 할인 적용할 Code
  ///@param coupon_code 쿠폰 Code
  Future<chopper.Response<BasicResult>> v1ProductsPurchaseIdUpdatePut(
      {required String? id,
        required String? quantity,
        String? discountCode,
        String? couponCode,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ProductsPurchaseIdUpdatePut(
        id: id,
        quantity: quantity,
        discountCode: discountCode,
        couponCode: couponCode,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param id Receipt Id
  ///@param quantity 수량
  ///@param discount_code 할인 적용할 Code
  ///@param coupon_code 쿠폰 Code
  @Put(path: '/v1/products/purchase/{id}/update', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1ProductsPurchaseIdUpdatePut(
      {@Path('id') required String? id,
        @Field('quantity') required String? quantity,
        @Field('discount_code') String? discountCode,
        @Field('coupon_code') String? couponCode,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1NotifyNotificationsGet(
      {required String? page,
        required String? size,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1NotifyNotificationsGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/notify/notifications')
  Future<chopper.Response<BasicResult>> _v1NotifyNotificationsGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1PushRegisterGet(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PushRegisterGet(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/push/register')
  Future<chopper.Response<BasicResult>> _v1PushRegisterGet(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param push_token FCM Token
  Future<chopper.Response<BasicResult>> v1PushRegisterPost(
      {required String? pushToken,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PushRegisterPost(
        pushToken: pushToken,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param push_token FCM Token
  @Post(path: '/v1/push/register', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PushRegisterPost(
      {@Field('push_token') required String? pushToken,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param device_id Device Id
  Future<chopper.Response<BasicResult>> v1PushUserRegisterGet(
      {required String? deviceId, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PushUserRegisterGet(
        deviceId: deviceId,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param device_id Device Id
  @Get(path: '/v1/push/user/register')
  Future<chopper.Response<BasicResult>> _v1PushUserRegisterGet(
      {@Query('device_id') required String? deviceId,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param device_id Device Id
  ///@param push_token FCM Token
  Future<chopper.Response<BasicResult>> v1PushUserRegisterPost(
      {required String? deviceId,
        required String? pushToken,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PushUserRegisterPost(
        deviceId: deviceId,
        pushToken: pushToken,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param device_id Device Id
  ///@param push_token FCM Token
  @Post(path: '/v1/push/user/register', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PushUserRegisterPost(
      {@Field('device_id') required String? deviceId,
        @Field('push_token') required String? pushToken,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param push_token FCM Token
  Future<chopper.Response<BasicResult>> v1PushSubscribeGlobalPost(
      {required String? pushToken,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PushSubscribeGlobalPost(
        pushToken: pushToken,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param push_token FCM Token
  @Post(path: '/v1/push/subscribe/global', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1PushSubscribeGlobalPost(
      {@Field('push_token') required String? pushToken,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1PushUnregisterDelete(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1PushUnregisterDelete(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Delete(path: '/v1/push/unregister')
  Future<chopper.Response<BasicResult>> _v1PushUnregisterDelete(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param key Resource Key
  ///@param tag Resource Tag
  ///@param pv 0 = private
  ///@param file Upload File
  Future<chopper.Response<BasicResult>> v1ResourcesUploadPost(
      {required String? key,
        required String? tag,
        required num? pv,
        required List<String>? file,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ResourcesUploadPost(
        key: key,
        tag: tag,
        pv: pv,
        file: file,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param key Resource Key
  ///@param tag Resource Tag
  ///@param pv 0 = private
  ///@param file Upload File
  @Post(path: '/v1/resources/upload', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1ResourcesUploadPost(
      {@Field('key') required String? key,
        @Field('tag') required String? tag,
        @Field('pv') required num? pv,
        @Field('file') required List<String>? file,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param uid 카테고리 _id value
  Future<chopper.Response<BasicResult>> v1ReviewsCodeUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ReviewsCodeUidGet(
        uid: uid, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param uid 카테고리 _id value
  @Get(path: '/v1/reviews/code/{uid}')
  Future<chopper.Response<BasicResult>> _v1ReviewsCodeUidGet(
      {@Path('uid') required String? uid,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1ReviewsCodeGet({required String? page,
    required String? size,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ReviewsCodeGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/reviews/code')
  Future<chopper.Response<BasicResult>> _v1ReviewsCodeGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param order_id 주문 아이디
  ///@param item_id 인벤토리 아이디
  ///@param review_type No description
  ///@param rates  점수에 0점은 없음. 무조건 1점 이상 {"rates": [{"001":5},{"002":5} ]}
  ///@param image_url No description
  ///@param message No description
  Future<chopper.Response<BasicResult>> v1ReviewsPost({required Object? orderId,
    required Object? itemId,
    required String? reviewType,
    Object? rates,
    String? imageUrl,
    String? message,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ReviewsPost(
        orderId: orderId,
        itemId: itemId,
        reviewType: reviewType,
        rates: rates,
        imageUrl: imageUrl,
        message: message,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param order_id 주문 아이디
  ///@param item_id 인벤토리 아이디
  ///@param review_type No description
  ///@param rates  점수에 0점은 없음. 무조건 1점 이상 {"rates": [{"001":5},{"002":5} ]}
  ///@param image_url No description
  ///@param message No description
  @Post(path: '/v1/reviews', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1ReviewsPost(
      {@Field('order_id') required Object? orderId,
        @Field('item_id') required Object? itemId,
        @Field('review_type') required String? reviewType,
        @Field('rates') Object? rates,
        @Field('image_url') String? imageUrl,
        @Field('message') String? message,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param start_date 2021-04-01
  ///@param end_date 2021-04-01
  ///@param review_type No description
  ///@param review_star 0은 all
  ///@param review_comment 0: 코멘트 없음, 1: 코멘트 있음
  ///@param item_code 상품코드
  ///@param oreder_number 주문번호
  ///@param review_key 리뷰 코드 (comment_key)
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1ReviewsGet(
      {required String? startDate,
        required String? endDate,
        String? reviewType,
        num? reviewStar,
        num? reviewComment,
        Object? itemCode,
        Object? orederNumber,
        Object? reviewKey,
        required String? page,
        required String? size,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ReviewsGet(
        startDate: startDate,
        endDate: endDate,
        reviewType: reviewType,
        reviewStar: reviewStar,
        reviewComment: reviewComment,
        itemCode: itemCode,
        orederNumber: orederNumber,
        reviewKey: reviewKey,
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param start_date 2021-04-01
  ///@param end_date 2021-04-01
  ///@param review_type No description
  ///@param review_star 0은 all
  ///@param review_comment 0: 코멘트 없음, 1: 코멘트 있음
  ///@param item_code 상품코드
  ///@param oreder_number 주문번호
  ///@param review_key 리뷰 코드 (comment_key)
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/reviews')
  Future<chopper.Response<BasicResult>> _v1ReviewsGet(
      {@Query('start_date') required String? startDate,
        @Query('end_date') required String? endDate,
        @Query('review_type') String? reviewType,
        @Query('review_star') num? reviewStar,
        @Query('review_comment') num? reviewComment,
        @Query('item_code') Object? itemCode,
        @Query('oreder_number') Object? orederNumber,
        @Query('review_key') Object? reviewKey,
        @Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1ReviewsIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ReviewsIdDelete(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Delete(path: '/v1/reviews/{id}')
  Future<chopper.Response<BasicResult>> _v1ReviewsIdDelete(
      {@Path('id') required String? id,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1ReviewsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ReviewsIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Get(path: '/v1/reviews/{id}')
  Future<chopper.Response<BasicResult>> _v1ReviewsIdGet(
      {@Path('id') required String? id,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  ///@param rates extra data {"rates": [{"001":5},{"002":5} ]}
  ///@param image_url No description
  ///@param message No description
  Future<chopper.Response<BasicResult>> v1ReviewsIdPut({required String? id,
    Object? rates,
    String? imageUrl,
    String? message,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1ReviewsIdPut(
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
  @Put(path: '/v1/reviews/{id}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1ReviewsIdPut(
      {@Path('id') required String? id,
        @Field('rates') Object? rates,
        @Field('image_url') String? imageUrl,
        @Field('message') String? message,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  ///@param keyword Keyword
  Future<chopper.Response<BasicResult>> v1BankCodesGet({required String? page,
    required String? size,
    String? keyword,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1BankCodesGet(
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
  @Get(path: '/v1/bank/codes')
  Future<chopper.Response<BasicResult>> _v1BankCodesGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Query('keyword') String? keyword,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param bank_owner_name No description
  ///@param bank_owner_address No description
  ///@param bank_country No description
  ///@param bank_name No description
  ///@param bank_code No description
  ///@param bank_account No description
  ///@param bank_routing No description
  ///@param bank_swift_code No description
  Future<chopper.Response<BasicResult>> v1BankAccountPost(
      {required String? bankOwnerName,
        String? bankOwnerAddress,
        required String? bankCountry,
        required String? bankName,
        required String? bankCode,
        required String? bankAccount,
        String? bankRouting,
        String? bankSwiftCode,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1BankAccountPost(
        bankOwnerName: bankOwnerName,
        bankOwnerAddress: bankOwnerAddress,
        bankCountry: bankCountry,
        bankName: bankName,
        bankCode: bankCode,
        bankAccount: bankAccount,
        bankRouting: bankRouting,
        bankSwiftCode: bankSwiftCode,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param bank_owner_name No description
  ///@param bank_owner_address No description
  ///@param bank_country No description
  ///@param bank_name No description
  ///@param bank_code No description
  ///@param bank_account No description
  ///@param bank_routing No description
  ///@param bank_swift_code No description
  @Post(path: '/v1/bank/account', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1BankAccountPost(
      {@Field('bank_owner_name') required String? bankOwnerName,
        @Field('bank_owner_address') String? bankOwnerAddress,
        @Field('bank_country') required String? bankCountry,
        @Field('bank_name') required String? bankName,
        @Field('bank_code') required String? bankCode,
        @Field('bank_account') required String? bankAccount,
        @Field('bank_routing') String? bankRouting,
        @Field('bank_swift_code') String? bankSwiftCode,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param page Page
  ///@param size Size of page
  Future<chopper.Response<BasicResult>> v1BankAccountGet({required String? page,
    required String? size,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1BankAccountGet(
        page: page,
        size: size,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param page Page
  ///@param size Size of page
  @Get(path: '/v1/bank/account')
  Future<chopper.Response<BasicResult>> _v1BankAccountGet(
      {@Query('page') required String? page,
        @Query('size') required String? size,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1BankAccountIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1BankAccountIdDelete(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Delete(path: '/v1/bank/account/{id}')
  Future<chopper.Response<BasicResult>> _v1BankAccountIdDelete(
      {@Path('id') required String? id,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param id No description
  Future<chopper.Response<BasicResult>> v1BankAccountIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1BankAccountIdGet(
        id: id, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param id No description
  @Get(path: '/v1/bank/account/{id}')
  Future<chopper.Response<BasicResult>> _v1BankAccountIdGet(
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
  Future<chopper.Response<BasicResult>> v1BankAccountIdPut({required String? id,
    required String? bankOwnerName,
    String? bankOwnerAddress,
    required String? bankCountry,
    required String? bankName,
    required String? bankCode,
    required String? bankAccount,
    String? bankRouting,
    String? bankSwiftCode,
    String? xAccessToken,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1BankAccountIdPut(
        id: id,
        bankOwnerName: bankOwnerName,
        bankOwnerAddress: bankOwnerAddress,
        bankCountry: bankCountry,
        bankName: bankName,
        bankCode: bankCode,
        bankAccount: bankAccount,
        bankRouting: bankRouting,
        bankSwiftCode: bankSwiftCode,
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
  @Put(path: '/v1/bank/account/{id}', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1BankAccountIdPut(
      {@Path('id') required String? id,
        @Field('bank_owner_name') required String? bankOwnerName,
        @Field('bank_owner_address') String? bankOwnerAddress,
        @Field('bank_country') required String? bankCountry,
        @Field('bank_name') required String? bankName,
        @Field('bank_code') required String? bankCode,
        @Field('bank_account') required String? bankAccount,
        @Field('bank_routing') String? bankRouting,
        @Field('bank_swift_code') String? bankSwiftCode,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  Future<chopper.Response<BasicResult>> v1TrackingCompanyGet(
      {String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1TrackingCompanyGet(
        xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  @Get(path: '/v1/tracking/company')
  Future<chopper.Response<BasicResult>> _v1TrackingCompanyGet(
      {@Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param code 택배사 코드
  ///@param invoice 운송장 번호
  Future<chopper.Response<BasicResult>> v1TrackingInfoGet(
      {required String? code,
        required String? invoice,
        String? xAccessToken,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1TrackingInfoGet(
        code: code,
        invoice: invoice,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param code 택배사 코드
  ///@param invoice 운송장 번호
  @Get(path: '/v1/tracking/info')
  Future<chopper.Response<BasicResult>> _v1TrackingInfoGet(
      {@Query('code') required String? code,
        @Query('invoice') required String? invoice,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param invoice 운송장 번호
  Future<chopper.Response<BasicResult>> v1TrackingRecommendedCompanyGet(
      {required String? invoice, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1TrackingRecommendedCompanyGet(
        invoice: invoice,
        xAccessToken: xAccessToken,
        cacheControl: cacheControl);
  }

  ///
  ///@param invoice 운송장 번호
  @Get(path: '/v1/tracking/recommended/company')
  Future<chopper.Response<BasicResult>> _v1TrackingRecommendedCompanyGet(
      {@Query('invoice') required String? invoice,
        @Header('x-access-token') String? xAccessToken,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param email No description
  ///@param key No description ** Unsafe **
  ///@param type sender 타입
  Future<chopper.Response<BasicResult>> v1VerifyEmailGet(
      {required String? email,
        required String? key,
        required String? type,
        String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1VerifyEmailGet(
        email: email, key: key, type: type, cacheControl: cacheControl);
  }

  ///
  ///@param email No description
  ///@param key No description ** Unsafe **
  ///@param type sender 타입
  @Get(path: '/v1/verify/email')
  Future<chopper.Response<BasicResult>> _v1VerifyEmailGet(
      {@Query('email') required String? email,
        @Query('key') required String? key,
        @Query('type') required String? type,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param user_id 가입한 user_id : _id값
  ///@param account 아이디
  ///@param username No description
  ///@param email No description ** Unsafe **
  ///@param title No description
  ///@param desc 메일 내용 ** Unsafe **
  ///@param mailtype 메일 내용
  Future<chopper.Response<BasicResult>> v1VerifySendMailPost({String? userId,
    required String? account,
    required String? username,
    required String? email,
    required String? title,
    String? desc,
    required String? mailtype,
    String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1VerifySendMailPost(
        userId: userId,
        account: account,
        username: username,
        email: email,
        title: title,
        desc: desc,
        mailtype: mailtype,
        cacheControl: cacheControl);
  }

  ///
  ///@param user_id 가입한 user_id : _id값
  ///@param account 아이디
  ///@param username No description
  ///@param email No description ** Unsafe **
  ///@param title No description
  ///@param desc 메일 내용 ** Unsafe **
  ///@param mailtype 메일 내용
  @Post(path: '/v1/verify/send/mail', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1VerifySendMailPost(
      {@Field('user_id') String? userId,
        @Field('account') required String? account,
        @Field('username') required String? username,
        @Field('email') required String? email,
        @Field('title') required String? title,
        @Field('desc') String? desc,
        @Field('mailtype') required String? mailtype,
        @Header('Cache-Control') String? cacheControl});

  ///
  ///@param key key = resource_hash + "." + extension
  Future<chopper.Response<BasicResult>> v1TranscodeHls2mPost(
      {required String? key, String? xAccessToken, String? cacheControl}) {
    generatedMapping.putIfAbsent(
        BasicResult, () => BasicResult.fromJsonFactory);

    return _v1TranscodeHls2mPost(
        key: key, xAccessToken: xAccessToken, cacheControl: cacheControl);
  }

  ///
  ///@param key key = resource_hash + "." + extension
  @Post(path: '/v1/transcode/hls/2m', optionalBody: true)
  Future<chopper.Response<BasicResult>> _v1TranscodeHls2mPost(
      {@Field('key') required String? key,
        @Header('x-access-token') String? xAccessToken,
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

  @JsonKey(name: 'error', includeIfNull: true)
  final CommonError? error;
  @JsonKey(name: 'status', includeIfNull: true, defaultValue: '')
  final String? status;
  @JsonKey(name: 'data', includeIfNull: true)
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'account', includeIfNull: true, defaultValue: '')
  final String account;
  @JsonKey(name: 'address_type', includeIfNull: true, defaultValue: '')
  final String addressType;
  @JsonKey(name: 'name', includeIfNull: true, defaultValue: '')
  final String? name;
  @JsonKey(name: 'phone', includeIfNull: true, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'country', includeIfNull: true, defaultValue: '')
  final String? country;
  @JsonKey(name: 'states', includeIfNull: true, defaultValue: '')
  final String? states;
  @JsonKey(name: 'city', includeIfNull: true, defaultValue: '')
  final String? city;
  @JsonKey(name: 'address1', includeIfNull: true, defaultValue: '')
  final String address1;
  @JsonKey(name: 'address2', includeIfNull: true, defaultValue: '')
  final String? address2;
  @JsonKey(name: 'zipcode', includeIfNull: true, defaultValue: '')
  final String? zipcode;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  AddressBook copyWith({int? uid,
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
    this.phone,
    this.nickName,
    this.adminPosition,
    this.adminDepartment,
    this.createdAt,
    this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Admin.fromJson(Map<String, dynamic> json) => _$AdminFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'admin_id', includeIfNull: true, defaultValue: '')
  final String? adminId;
  @JsonKey(name: 'admin_password', includeIfNull: true, defaultValue: '')
  final String? adminPassword;
  @JsonKey(name: 'admin_type', includeIfNull: true, defaultValue: '')
  final String? adminType;
  @JsonKey(name: 'admin_name', includeIfNull: true, defaultValue: '')
  final String? adminName;
  @JsonKey(name: 'phone', includeIfNull: true, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'nick_name', includeIfNull: true, defaultValue: '')
  final String? nickName;
  @JsonKey(name: 'admin_position', includeIfNull: true, defaultValue: '')
  final String? adminPosition;
  @JsonKey(name: 'admin_department', includeIfNull: true, defaultValue: '')
  final String? adminDepartment;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime? createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime? updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.nickName, nickName) ||
                const DeepCollectionEquality()
                    .equals(other.nickName, nickName)) &&
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
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(nickName) ^
      const DeepCollectionEquality().hash(adminPosition) ^
      const DeepCollectionEquality().hash(adminDepartment) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $AdminExtension on Admin {
  Admin copyWith({int? uid,
    String? adminId,
    String? adminPassword,
    String? adminType,
    String? adminName,
    String? phone,
    String? nickName,
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
        phone: phone ?? this.phone,
        nickName: nickName ?? this.nickName,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'hash_key', includeIfNull: true, defaultValue: '')
  final String? hashKey;
  @JsonKey(name: 'inflow_user', includeIfNull: true)
  final int? inflowUser;
  @JsonKey(name: 'authorized_user', includeIfNull: true)
  final int? authorizedUser;
  @JsonKey(name: 'bounced_user', includeIfNull: true)
  final int? bouncedUser;
  @JsonKey(name: 'dau', includeIfNull: true)
  final int? dau;
  @JsonKey(name: 'wau', includeIfNull: true)
  final int? wau;
  @JsonKey(name: 'guest_user', includeIfNull: true)
  final int? guestUser;
  @JsonKey(name: 'authorized_rate', includeIfNull: true)
  final double? authorizedRate;
  @JsonKey(name: 'bounced_rate', includeIfNull: true)
  final double? bouncedRate;
  @JsonKey(name: 'retention', includeIfNull: true)
  final double? retention;
  @JsonKey(name: 'date_group', includeIfNull: true, defaultValue: '')
  final String? dateGroup;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
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
  Analytics copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'hash_key', includeIfNull: true, defaultValue: '')
  final String? hashKey;
  @JsonKey(name: 'log_type', includeIfNull: true, defaultValue: '')
  final String? logType;
  @JsonKey(name: 'timestamp', includeIfNull: true)
  final DateTime timestamp;
  @JsonKey(name: 'provider', includeIfNull: true, defaultValue: '')
  final String? provider;
  @JsonKey(name: 'content_id', includeIfNull: true, defaultValue: '')
  final String? contentId;
  @JsonKey(name: 'content_parent_id', includeIfNull: true, defaultValue: '')
  final String? contentParentId;
  @JsonKey(name: 'parent_user_id', includeIfNull: true)
  final int? parentUserId;
  @JsonKey(name: 'content_type', includeIfNull: true, defaultValue: '')
  final String? contentType;
  @JsonKey(name: 'action', includeIfNull: true, defaultValue: '')
  final String? action;
  @JsonKey(name: 'action_content', includeIfNull: true, defaultValue: '')
  final String? actionContent;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'type', includeIfNull: true, defaultValue: '')
  final String? type;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int? userId;
  @JsonKey(name: 'group_id', includeIfNull: true, defaultValue: '')
  final String? groupId;
  @JsonKey(name: 'username', includeIfNull: true, defaultValue: '')
  final String? username;
  @JsonKey(name: 'user_name', includeIfNull: true, defaultValue: '')
  final String? userName;
  @JsonKey(name: 'user_type', includeIfNull: true, defaultValue: '')
  final String? userType;
  @JsonKey(name: 'role_type', includeIfNull: true, defaultValue: '')
  final String? roleType;
  @JsonKey(name: 'role_level', includeIfNull: true)
  final int? roleLevel;
  @JsonKey(name: 'app_id', includeIfNull: true, defaultValue: '')
  final String? appId;
  @JsonKey(name: 'app_version', includeIfNull: true, defaultValue: '')
  final String? appVersion;
  @JsonKey(name: 'os_type', includeIfNull: true, defaultValue: '')
  final String? osType;
  @JsonKey(name: 'os_version', includeIfNull: true, defaultValue: '')
  final String? osVersion;
  @JsonKey(name: 'device_id', includeIfNull: true, defaultValue: '')
  final String? deviceId;
  @JsonKey(name: 'device_type', includeIfNull: true, defaultValue: '')
  final String? deviceType;
  @JsonKey(name: 'device_name', includeIfNull: true, defaultValue: '')
  final String? deviceName;
  @JsonKey(name: 'device_locale', includeIfNull: true, defaultValue: '')
  final String? deviceLocale;
  @JsonKey(name: 'device_model', includeIfNull: true, defaultValue: '')
  final String? deviceModel;
  @JsonKey(name: 'device_user_agent', includeIfNull: true, defaultValue: '')
  final String? deviceUserAgent;
  @JsonKey(name: 'push_token', includeIfNull: true, defaultValue: '')
  final String? pushToken;
  @JsonKey(name: 'invite_code', includeIfNull: true, defaultValue: '')
  final String? inviteCode;
  @JsonKey(name: 'reward_user_id', includeIfNull: true, defaultValue: '')
  final String? rewardUserId;
  @JsonKey(name: 'reward_code', includeIfNull: true, defaultValue: '')
  final String? rewardCode;
  @JsonKey(name: 'reward_value', includeIfNull: true, defaultValue: '')
  final String? rewardValue;
  @JsonKey(name: 'bonus_value', includeIfNull: true, defaultValue: '')
  final String? bonusValue;
  @JsonKey(name: 'bonus_reason', includeIfNull: true, defaultValue: '')
  final String? bonusReason;
  @JsonKey(name: 'value', includeIfNull: true, defaultValue: '')
  final String? value;
  @JsonKey(name: 'voting_code', includeIfNull: true, defaultValue: '')
  final String? votingCode;
  @JsonKey(name: 'voting_power', includeIfNull: true, defaultValue: '')
  final String? votingPower;
  @JsonKey(name: 'req_ip', includeIfNull: true, defaultValue: '')
  final String? reqIp;
  @JsonKey(name: 'req_agent', includeIfNull: true, defaultValue: '')
  final String? reqAgent;
  @JsonKey(name: 'req_path', includeIfNull: true, defaultValue: '')
  final String? reqPath;
  @JsonKey(name: 'req_method', includeIfNull: true, defaultValue: '')
  final String? reqMethod;
  @JsonKey(name: 'req_params', includeIfNull: true, defaultValue: '')
  final String? reqParams;
  @JsonKey(name: 'req_body', includeIfNull: true, defaultValue: '')
  final String? reqBody;
  @JsonKey(name: 'res_status_code', includeIfNull: true, defaultValue: '')
  final String? resStatusCode;
  @JsonKey(name: 'res_content_type', includeIfNull: true, defaultValue: '')
  final String? resContentType;
  @JsonKey(
      name: 'res_access_control_allow_origin',
      includeIfNull: true,
      defaultValue: '')
  final String? resAccessControlAllowOrigin;
  @JsonKey(name: 'res_error', includeIfNull: true, defaultValue: '')
  final String? resError;
  @JsonKey(name: 'date_group', includeIfNull: true, defaultValue: '')
  final String? dateGroup;
  @JsonKey(name: 'status', includeIfNull: true, defaultValue: '')
  final String? status;
  @JsonKey(name: 'created_at', includeIfNull: true)
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
            (identical(other.deviceType, deviceType) ||
                const DeepCollectionEquality().equals(
                    other.deviceType, deviceType)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality().equals(
                    other.deviceName, deviceName)) &&
            (identical(other.deviceLocale, deviceLocale) ||
                const DeepCollectionEquality().equals(
                    other.deviceLocale, deviceLocale)) &&
            (identical(other.deviceModel, deviceModel) ||
                const DeepCollectionEquality().equals(
                    other.deviceModel, deviceModel)) &&
            (identical(other.deviceUserAgent, deviceUserAgent) ||
                const DeepCollectionEquality().equals(
                    other.deviceUserAgent, deviceUserAgent)) &&
            (identical(other.pushToken, pushToken) ||
                const DeepCollectionEquality().equals(
                    other.pushToken, pushToken)) &&
            (identical(other.inviteCode, inviteCode) ||
                const DeepCollectionEquality().equals(
                    other.inviteCode, inviteCode)) &&
            (identical(other.rewardUserId, rewardUserId) ||
                const DeepCollectionEquality().equals(
                    other.rewardUserId, rewardUserId)) &&
            (identical(other.rewardCode, rewardCode) ||
                const DeepCollectionEquality().equals(
                    other.rewardCode, rewardCode)) &&
            (identical(other.rewardValue, rewardValue) ||
                const DeepCollectionEquality().equals(
                    other.rewardValue, rewardValue)) &&
            (identical(other.bonusValue, bonusValue) ||
                const DeepCollectionEquality().equals(
                    other.bonusValue, bonusValue)) &&
            (identical(other.bonusReason, bonusReason) ||
                const DeepCollectionEquality().equals(
                    other.bonusReason, bonusReason)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.votingCode, votingCode) ||
                const DeepCollectionEquality().equals(
                    other.votingCode, votingCode)) &&
            (identical(other.votingPower, votingPower) ||
                const DeepCollectionEquality().equals(
                    other.votingPower, votingPower)) &&
            (identical(other.reqIp, reqIp) ||
                const DeepCollectionEquality().equals(other.reqIp, reqIp)) &&
            (identical(other.reqAgent, reqAgent) ||
                const DeepCollectionEquality().equals(
                    other.reqAgent, reqAgent)) &&
            (identical(other.reqPath, reqPath) ||
                const DeepCollectionEquality().equals(
                    other.reqPath, reqPath)) &&
            (identical(other.reqMethod, reqMethod) ||
                const DeepCollectionEquality().equals(
                    other.reqMethod, reqMethod)) &&
            (identical(other.reqParams, reqParams) ||
                const DeepCollectionEquality().equals(
                    other.reqParams, reqParams)) &&
            (identical(other.reqBody, reqBody) ||
                const DeepCollectionEquality().equals(
                    other.reqBody, reqBody)) &&
            (identical(other.resStatusCode, resStatusCode) ||
                const DeepCollectionEquality().equals(
                    other.resStatusCode, resStatusCode)) &&
            (identical(other.resContentType, resContentType) ||
                const DeepCollectionEquality().equals(
                    other.resContentType, resContentType)) &&
            (identical(other.resAccessControlAllowOrigin,
                resAccessControlAllowOrigin) ||
                const DeepCollectionEquality().equals(
                    other.resAccessControlAllowOrigin,
                    resAccessControlAllowOrigin)) &&
            (identical(other.resError, resError) ||
                const DeepCollectionEquality().equals(
                    other.resError, resError)) &&
            (identical(other.dateGroup, dateGroup) ||
                const DeepCollectionEquality().equals(
                    other.dateGroup, dateGroup)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                    other.createdAt, createdAt)));
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
  Log copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'app_id', includeIfNull: true, defaultValue: '')
  final String appId;
  @JsonKey(name: 'app_name', includeIfNull: true, defaultValue: '')
  final String? appName;
  @JsonKey(name: 'app_os', includeIfNull: true, defaultValue: '')
  final String appOs;
  @JsonKey(name: 'app_version', includeIfNull: true, defaultValue: '')
  final String? appVersion;
  @JsonKey(name: 'app_version_minimum', includeIfNull: true, defaultValue: '')
  final String? appVersionMinimum;
  @JsonKey(name: 'app_version_review', includeIfNull: true, defaultValue: '')
  final String? appVersionReview;
  @JsonKey(name: 'app_update_link', includeIfNull: true, defaultValue: '')
  final String? appUpdateLink;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  App copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'store_id', includeIfNull: true)
  final int? storeId;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int? userId;
  @JsonKey(name: 'rules', includeIfNull: true)
  final Object? rules;
  @JsonKey(name: 'name', includeIfNull: true, defaultValue: '')
  final String name;
  @JsonKey(name: 'type', includeIfNull: true, defaultValue: '')
  final String? type;
  @JsonKey(name: 'logo_image', includeIfNull: true, defaultValue: '')
  final String? logoImage;
  @JsonKey(name: 'cover_image', includeIfNull: true, defaultValue: '')
  final String? coverImage;
  @JsonKey(name: 'description', includeIfNull: true, defaultValue: '')
  final String? description;
  @JsonKey(name: 'sort_order', includeIfNull: true)
  final int sortOrder;
  @JsonKey(name: 'hidden', includeIfNull: true)
  final bool hidden;
  @JsonKey(name: 'hidden_at', includeIfNull: true)
  final DateTime? hiddenAt;
  @JsonKey(name: 'blocked', includeIfNull: true)
  final bool blocked;
  @JsonKey(name: 'blocked_at', includeIfNull: true)
  final DateTime? blockedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  Channel copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'item_code', includeIfNull: true, defaultValue: '')
  final String? itemCode;
  @JsonKey(name: 'order_number', includeIfNull: true, defaultValue: '')
  final String? orderNumber;
  @JsonKey(name: 'comment_key', includeIfNull: true, defaultValue: '')
  final String commentKey;
  @JsonKey(name: 'comment_provider', includeIfNull: true, defaultValue: '')
  final String commentProvider;
  @JsonKey(name: 'comment_target', includeIfNull: true, defaultValue: '')
  final String? commentTarget;
  @JsonKey(name: 'comment_target_id', includeIfNull: true, defaultValue: '')
  final String? commentTargetId;
  @JsonKey(name: 'comment_type', includeIfNull: true, defaultValue: '')
  final String? commentType;
  @JsonKey(name: 'comment_parent_target', includeIfNull: true, defaultValue: '')
  final String? commentParentTarget;
  @JsonKey(name: 'comment_parent_id', includeIfNull: true)
  final int? commentParentId;
  @JsonKey(name: 'comment_depth', includeIfNull: true)
  final int? commentDepth;
  @JsonKey(name: 'comment_order', includeIfNull: true)
  final int? commentOrder;
  @JsonKey(name: 'comment_title', includeIfNull: true, defaultValue: '')
  final String? commentTitle;
  @JsonKey(name: 'comment_content', includeIfNull: true, defaultValue: '')
  final String commentContent;
  @JsonKey(name: 'comment_emotion', includeIfNull: true, defaultValue: '')
  final String commentEmotion;
  @JsonKey(name: 'comment_image_url', includeIfNull: true, defaultValue: '')
  final String commentImageUrl;
  @JsonKey(name: 'linked_target', includeIfNull: true, defaultValue: '')
  final String? linkedTarget;
  @JsonKey(name: 'linked_target_id', includeIfNull: true, defaultValue: '')
  final String? linkedTargetId;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int? userId;
  @JsonKey(name: 'user_name', includeIfNull: true, defaultValue: '')
  final String? userName;
  @JsonKey(name: 'user_password', includeIfNull: true, defaultValue: '')
  final String? userPassword;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'hidden', includeIfNull: true)
  final bool hidden;
  @JsonKey(name: 'hidden_at', includeIfNull: true)
  final DateTime? hiddenAt;
  @JsonKey(name: 'blocked', includeIfNull: true)
  final bool blocked;
  @JsonKey(name: 'blocked_at', includeIfNull: true)
  final DateTime? blockedAt;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'replied', includeIfNull: true)
  final bool replied;
  @JsonKey(name: 'replied_at', includeIfNull: true)
  final DateTime? repliedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
                const DeepCollectionEquality().equals(
                    other.hiddenAt, hiddenAt)) &&
            (identical(other.blocked, blocked) ||
                const DeepCollectionEquality().equals(
                    other.blocked, blocked)) &&
            (identical(other.blockedAt, blockedAt) ||
                const DeepCollectionEquality().equals(
                    other.blockedAt, blockedAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                    other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                    other.updatedAt, updatedAt)) &&
            (identical(other.replied, replied) ||
                const DeepCollectionEquality().equals(
                    other.replied, replied)) &&
            (identical(other.repliedAt, repliedAt) ||
                const DeepCollectionEquality().equals(
                    other.repliedAt, repliedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality().equals(
                    other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality().equals(
                    other.archivedAt, archivedAt)));
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
  Comment copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'admin_id', includeIfNull: true)
  final int? adminId;
  @JsonKey(name: 'content_group', includeIfNull: true, defaultValue: '')
  final String? contentGroup;
  @JsonKey(name: 'content_type', includeIfNull: true, defaultValue: '')
  final String? contentType;
  @JsonKey(name: 'content_language', includeIfNull: true, defaultValue: '')
  final String? contentLanguage;
  @JsonKey(name: 'content_title', includeIfNull: true, defaultValue: '')
  final String? contentTitle;
  @JsonKey(name: 'content_html', includeIfNull: true, defaultValue: '')
  final String? contentHtml;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  Content copyWith({int? uid,
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
class ShippingTracking {
  ShippingTracking({
    required this.uid,
    this.orderNumber,
    this.details,
    required this.status,
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

  factory ShippingTracking.fromJson(Map<String, dynamic> json) =>
      _$ShippingTrackingFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'order_number', includeIfNull: true, defaultValue: '')
  final String? orderNumber;
  @JsonKey(name: 'details', includeIfNull: true)
  final Object? details;
  @JsonKey(name: 'status', includeIfNull: true, defaultValue: '')
  final String status;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$ShippingTrackingFromJson;
  static const toJsonFactory = _$ShippingTrackingToJson;

  Map<String, dynamic> toJson() => _$ShippingTrackingToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShippingTracking &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.orderNumber, orderNumber) ||
                const DeepCollectionEquality()
                    .equals(other.orderNumber, orderNumber)) &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
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
      const DeepCollectionEquality().hash(orderNumber) ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(status) ^
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

extension $ShippingTrackingExtension on ShippingTracking {
  ShippingTracking copyWith({int? uid,
    String? orderNumber,
    Object? details,
    String? status,
    bool? actived,
    DateTime? activedAt,
    Object? extras,
    String? resourceKey,
    Object? resources,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? archived,
    DateTime? archivedAt}) {
    return ShippingTracking(
        uid: uid ?? this.uid,
        orderNumber: orderNumber ?? this.orderNumber,
        details: details ?? this.details,
        status: status ?? this.status,
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
class DisturbUsers {
  DisturbUsers({
    required this.uid,
    this.storeId,
    this.sellerId,
    this.sellerName,
    this.userId,
    this.userName,
    required this.itemCode,
    required this.reasonType,
    required this.regReason,
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

  factory DisturbUsers.fromJson(Map<String, dynamic> json) =>
      _$DisturbUsersFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'store_id', includeIfNull: true)
  final int? storeId;
  @JsonKey(name: 'seller_id', includeIfNull: true)
  final int? sellerId;
  @JsonKey(name: 'seller_name', includeIfNull: true, defaultValue: '')
  final String? sellerName;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int? userId;
  @JsonKey(name: 'user_name', includeIfNull: true, defaultValue: '')
  final String? userName;
  @JsonKey(name: 'item_code', includeIfNull: true, defaultValue: '')
  final String itemCode;
  @JsonKey(name: 'reason_type', includeIfNull: true)
  final bool reasonType;
  @JsonKey(name: 'reg_reason', includeIfNull: true, defaultValue: '')
  final String regReason;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$DisturbUsersFromJson;
  static const toJsonFactory = _$DisturbUsersToJson;

  Map<String, dynamic> toJson() => _$DisturbUsersToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DisturbUsers &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality()
                    .equals(other.storeId, storeId)) &&
            (identical(other.sellerId, sellerId) ||
                const DeepCollectionEquality()
                    .equals(other.sellerId, sellerId)) &&
            (identical(other.sellerName, sellerName) ||
                const DeepCollectionEquality()
                    .equals(other.sellerName, sellerName)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.itemCode, itemCode) ||
                const DeepCollectionEquality()
                    .equals(other.itemCode, itemCode)) &&
            (identical(other.reasonType, reasonType) ||
                const DeepCollectionEquality()
                    .equals(other.reasonType, reasonType)) &&
            (identical(other.regReason, regReason) ||
                const DeepCollectionEquality()
                    .equals(other.regReason, regReason)) &&
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
      const DeepCollectionEquality().hash(storeId) ^
      const DeepCollectionEquality().hash(sellerId) ^
      const DeepCollectionEquality().hash(sellerName) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(itemCode) ^
      const DeepCollectionEquality().hash(reasonType) ^
      const DeepCollectionEquality().hash(regReason) ^
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

extension $DisturbUsersExtension on DisturbUsers {
  DisturbUsers copyWith({int? uid,
    int? storeId,
    int? sellerId,
    String? sellerName,
    int? userId,
    String? userName,
    String? itemCode,
    bool? reasonType,
    String? regReason,
    bool? actived,
    DateTime? activedAt,
    Object? extras,
    String? resourceKey,
    Object? resources,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? archived,
    DateTime? archivedAt}) {
    return DisturbUsers(
        uid: uid ?? this.uid,
        storeId: storeId ?? this.storeId,
        sellerId: sellerId ?? this.sellerId,
        sellerName: sellerName ?? this.sellerName,
        userId: userId ?? this.userId,
        userName: userName ?? this.userName,
        itemCode: itemCode ?? this.itemCode,
        reasonType: reasonType ?? this.reasonType,
        regReason: regReason ?? this.regReason,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'code', includeIfNull: true, defaultValue: '')
  final String code;
  @JsonKey(name: 'category1Code', includeIfNull: true)
  final int category1Code;
  @JsonKey(name: 'category1Name', includeIfNull: true, defaultValue: '')
  final String? category1Name;
  @JsonKey(name: 'category2Code', includeIfNull: true)
  final int category2Code;
  @JsonKey(name: 'category2Name', includeIfNull: true, defaultValue: '')
  final String? category2Name;
  @JsonKey(name: 'category3Code', includeIfNull: true)
  final int category3Code;
  @JsonKey(name: 'category3Name', includeIfNull: true, defaultValue: '')
  final String? category3Name;
  @JsonKey(name: 'categoryCode', includeIfNull: true)
  final int categoryCode;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  Category copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'categoryNotice', includeIfNull: true, defaultValue: '')
  final String? categoryNotice;
  @JsonKey(name: 'categoryNoticeList', includeIfNull: true, defaultValue: '')
  final String? categoryNoticeList;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
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
  CategoryNotice copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'item_code', includeIfNull: true, defaultValue: '')
  final String itemCode;
  @JsonKey(name: 'delivery_template', includeIfNull: true, defaultValue: '')
  final String? deliveryTemplate;
  @JsonKey(name: 'delivery_method', includeIfNull: true, defaultValue: '')
  final String? deliveryMethod;
  @JsonKey(name: 'delivery_fee_0', includeIfNull: true)
  final int? deliveryFee0;
  @JsonKey(name: 'delivery_island', includeIfNull: true, defaultValue: '')
  final String? deliveryIsland;
  @JsonKey(name: 'delivery_fee_1', includeIfNull: true)
  final int? deliveryFee1;
  @JsonKey(name: 'delivery_fee_2', includeIfNull: true)
  final int? deliveryFee2;
  @JsonKey(name: 'place_of_shipment', includeIfNull: true, defaultValue: '')
  final String? placeOfShipment;
  @JsonKey(
      name: 'refund_delivery_template', includeIfNull: true, defaultValue: '')
  final String? refundDeliveryTemplate;
  @JsonKey(
      name: 'refund_delivery_method', includeIfNull: true, defaultValue: '')
  final String refundDeliveryMethod;
  @JsonKey(
      name: 'refund_courier_company', includeIfNull: true, defaultValue: '')
  final String refundCourierCompany;
  @JsonKey(name: 'refund_delivery_fee_0', includeIfNull: true)
  final int? refundDeliveryFee0;
  @JsonKey(name: 'refund_delivery_fee_1', includeIfNull: true)
  final int? refundDeliveryFee1;
  @JsonKey(name: 'refund_address', includeIfNull: true, defaultValue: '')
  final String? refundAddress;
  @JsonKey(name: 'refund_notice', includeIfNull: true, defaultValue: '')
  final String? refundNotice;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                    other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality().equals(
                    other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality().equals(
                    other.archivedAt, archivedAt)));
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
  Delivery copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'store_id', includeIfNull: true)
  final int storeId;
  @JsonKey(name: 'account', includeIfNull: true, defaultValue: '')
  final String account;
  @JsonKey(name: 'item_status', includeIfNull: true, defaultValue: '')
  final String itemStatus;
  @JsonKey(name: 'item_code', includeIfNull: true, defaultValue: '')
  final String itemCode;
  @JsonKey(name: 'item_name', includeIfNull: true, defaultValue: '')
  final String itemName;
  @JsonKey(name: 'item_price', includeIfNull: true)
  final int itemPrice;
  @JsonKey(name: 'item_discount_price', includeIfNull: true)
  final int itemDiscountPrice;
  @JsonKey(name: 'item_described', includeIfNull: true, defaultValue: '')
  final String itemDescribed;
  @JsonKey(name: 'item_detail', includeIfNull: true, defaultValue: '')
  final String? itemDetail;
  @JsonKey(name: 'item_total_count', includeIfNull: true)
  final int itemTotalCount;
  @JsonKey(name: 'item_sold_count', includeIfNull: true)
  final int itemSoldCount;
  @JsonKey(name: 'item_category_0', includeIfNull: true, defaultValue: '')
  final String itemCategory0;
  @JsonKey(name: 'item_category_1', includeIfNull: true, defaultValue: '')
  final String itemCategory1;
  @JsonKey(name: 'item_category_2', includeIfNull: true, defaultValue: '')
  final String itemCategory2;
  @JsonKey(name: 'item_notice', includeIfNull: true, defaultValue: '')
  final String? itemNotice;
  @JsonKey(name: 'item_notice_detail', includeIfNull: true, defaultValue: '')
  final String? itemNoticeDetail;
  @JsonKey(name: 'option_list0', includeIfNull: true, defaultValue: '')
  final String? optionList0;
  @JsonKey(name: 'option_list1', includeIfNull: true, defaultValue: '')
  final String? optionList1;
  @JsonKey(name: 'handmade_item', includeIfNull: true, defaultValue: '')
  final String handmadeItem;
  @JsonKey(name: 'handmade_period', includeIfNull: true, defaultValue: '')
  final String? handmadePeriod;
  @JsonKey(name: 'sales_start_at', includeIfNull: true)
  final DateTime salesStartAt;
  @JsonKey(name: 'sales_end_at', includeIfNull: true)
  final DateTime salesEndAt;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
            (identical(other.salesEndAt, salesEndAt) ||
                const DeepCollectionEquality().equals(
                    other.salesEndAt, salesEndAt)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality().equals(
                    other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality().equals(
                    other.activedAt, activedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality().equals(
                    other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality().equals(
                    other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                    other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                    other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality().equals(
                    other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality().equals(
                    other.archivedAt, archivedAt)));
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
  Inventory copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'item_code', includeIfNull: true, defaultValue: '')
  final String itemCode;
  @JsonKey(name: 'option_type', includeIfNull: true, defaultValue: '')
  final String optionType;
  @JsonKey(name: 'option_template', includeIfNull: true, defaultValue: '')
  final String? optionTemplate;
  @JsonKey(name: 'option_name', includeIfNull: true, defaultValue: '')
  final String? optionName;
  @JsonKey(name: 'option_value', includeIfNull: true, defaultValue: '')
  final String? optionValue;
  @JsonKey(name: 'option_price', includeIfNull: true)
  final int? optionPrice;
  @JsonKey(name: 'option_count', includeIfNull: true)
  final int? optionCount;
  @JsonKey(name: 'base_option', includeIfNull: true, defaultValue: '')
  final String? baseOption;
  @JsonKey(name: 'question_option', includeIfNull: true, defaultValue: '')
  final String? questionOption;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  Options copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'item_code', includeIfNull: true, defaultValue: '')
  final String itemCode;
  @JsonKey(name: 'tag_0', includeIfNull: true, defaultValue: '')
  final String? tag0;
  @JsonKey(name: 'tag_1', includeIfNull: true, defaultValue: '')
  final String? tag1;
  @JsonKey(name: 'tag_2', includeIfNull: true, defaultValue: '')
  final String? tag2;
  @JsonKey(name: 'tag_3', includeIfNull: true, defaultValue: '')
  final String? tag3;
  @JsonKey(name: 'tag_4', includeIfNull: true, defaultValue: '')
  final String? tag4;
  @JsonKey(name: 'tag_5', includeIfNull: true, defaultValue: '')
  final String? tag5;
  @JsonKey(name: 'tag_6', includeIfNull: true, defaultValue: '')
  final String? tag6;
  @JsonKey(name: 'tag_7', includeIfNull: true, defaultValue: '')
  final String? tag7;
  @JsonKey(name: 'tag_8', includeIfNull: true, defaultValue: '')
  final String? tag8;
  @JsonKey(name: 'tag_9', includeIfNull: true, defaultValue: '')
  final String? tag9;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  Tags copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'channel_id', includeIfNull: true, defaultValue: '')
  final String channelId;
  @JsonKey(name: 'message', includeIfNull: true)
  final Object? message;
  @JsonKey(name: 'images', includeIfNull: true)
  final Object? images;
  @JsonKey(name: 'links', includeIfNull: true)
  final Object? links;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int? userId;
  @JsonKey(name: 'user_name', includeIfNull: true, defaultValue: '')
  final String? userName;
  @JsonKey(name: 'user_email', includeIfNull: true, defaultValue: '')
  final String? userEmail;
  @JsonKey(name: 'profile_image', includeIfNull: true, defaultValue: '')
  final String? profileImage;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  Messages copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int userId;
  @JsonKey(name: 'provider', includeIfNull: true, defaultValue: '')
  final String provider;
  @JsonKey(name: 'message_id', includeIfNull: true, defaultValue: '')
  final String messageId;
  @JsonKey(name: 'message_group', includeIfNull: true, defaultValue: '')
  final String messageGroup;
  @JsonKey(name: 'message_type', includeIfNull: true, defaultValue: '')
  final String messageType;
  @JsonKey(name: 'message_title', includeIfNull: true, defaultValue: '')
  final String? messageTitle;
  @JsonKey(name: 'message_payload', includeIfNull: true)
  final Object messagePayload;
  @JsonKey(name: 'message_priority', includeIfNull: true, defaultValue: '')
  final String messagePriority;
  @JsonKey(name: 'published', includeIfNull: true)
  final bool published;
  @JsonKey(name: 'published_at', includeIfNull: true)
  final DateTime publishedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
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
  PushMessage copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int? userId;
  @JsonKey(name: 'inventory_id', includeIfNull: true)
  final int? inventoryId;
  @JsonKey(name: 'option_id', includeIfNull: true)
  final int? optionId;
  @JsonKey(name: 'item_code', includeIfNull: true, defaultValue: '')
  final String itemCode;
  @JsonKey(name: 'count', includeIfNull: true)
  final int count;
  @JsonKey(name: 'orginal_price', includeIfNull: true)
  final double? orginalPrice;
  @JsonKey(name: 'option_price', includeIfNull: true)
  final double? optionPrice;
  @JsonKey(name: 'discount_price', includeIfNull: true)
  final double? discountPrice;
  @JsonKey(name: 'payment_price', includeIfNull: true)
  final double? paymentPrice;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
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
  Cart copyWith({int? uid,
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
    this.paymentId,
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
    this.deliveredAt,
    this.deliveryCompleteAt,
    required this.createdAt,
    required this.updatedAt,
    this.progressedAt,
    this.orderPurchaseConformedAt,
    this.orderCompleteAt,
    this.cancelReqAt,
    this.cancelReqUserName,
    this.cancelReqUserAccount,
    this.cancelConfirmUserName,
    this.cancelConfirmUserAccount,
    this.cancelConfirmedAt,
    this.cancelReason,
    this.canceledAt,
    this.returnReqAt,
    this.returnReqUserName,
    this.returnReqUserAccount,
    this.returnConfirmUserName,
    this.returnConfirmUserAccount,
    this.returnConfirmedAt,
    this.returnReason,
    this.returnedAt,
    this.exchangeReqAt,
    this.exchangeReqUserName,
    this.exchangeReqUserAccount,
    this.exchangeConfirmUserName,
    this.exchangeConfirmUserAccount,
    this.exchangeConfirmedAt,
    this.exchangeReason,
    this.exchangedAt,
  });

  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'payment_id', includeIfNull: true)
  final int? paymentId;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int userId;
  @JsonKey(name: 'consignor_id', includeIfNull: true)
  final int consignorId;
  @JsonKey(name: 'order_key', includeIfNull: true, defaultValue: '')
  final String orderKey;
  @JsonKey(name: 'order_type', includeIfNull: true, defaultValue: '')
  final String orderType;
  @JsonKey(name: 'order_provider', includeIfNull: true, defaultValue: '')
  final String? orderProvider;
  @JsonKey(name: 'order_number', includeIfNull: true, defaultValue: '')
  final String? orderNumber;
  @JsonKey(name: 'order_content', includeIfNull: true)
  final Object? orderContent;
  @JsonKey(name: 'ordered_at', includeIfNull: true)
  final DateTime orderedAt;
  @JsonKey(name: 'goods_count', includeIfNull: true)
  final int goodsCount;
  @JsonKey(name: 'goods_content', includeIfNull: true)
  final Object? goodsContent;
  @JsonKey(name: 'orderer_name', includeIfNull: true, defaultValue: '')
  final String? ordererName;
  @JsonKey(name: 'orderer_account', includeIfNull: true, defaultValue: '')
  final String? ordererAccount;
  @JsonKey(name: 'orderer_phone', includeIfNull: true, defaultValue: '')
  final String? ordererPhone;
  @JsonKey(name: 'orderer_phone_safe', includeIfNull: true, defaultValue: '')
  final String? ordererPhoneSafe;
  @JsonKey(name: 'orderer_address', includeIfNull: true, defaultValue: '')
  final String? ordererAddress;
  @JsonKey(
      name: 'orderer_address_detail', includeIfNull: true, defaultValue: '')
  final String? ordererAddressDetail;
  @JsonKey(
      name: 'orderer_address_postal_code',
      includeIfNull: true,
      defaultValue: '')
  final String? ordererAddressPostalCode;
  @JsonKey(name: 'receiver_name', includeIfNull: true, defaultValue: '')
  final String? receiverName;
  @JsonKey(name: 'receiver_account', includeIfNull: true, defaultValue: '')
  final String? receiverAccount;
  @JsonKey(name: 'receiver_phone', includeIfNull: true, defaultValue: '')
  final String? receiverPhone;
  @JsonKey(name: 'receiver_phone_safe', includeIfNull: true, defaultValue: '')
  final String? receiverPhoneSafe;
  @JsonKey(name: 'receiver_address', includeIfNull: true, defaultValue: '')
  final String? receiverAddress;
  @JsonKey(
      name: 'receiver_address_detail', includeIfNull: true, defaultValue: '')
  final String? receiverAddressDetail;
  @JsonKey(
      name: 'receiver_address_postal_code',
      includeIfNull: true,
      defaultValue: '')
  final String? receiverAddressPostalCode;
  @JsonKey(name: 'price_unit', includeIfNull: true, defaultValue: '')
  final String? priceUnit;
  @JsonKey(name: 'price_exchange', includeIfNull: true)
  final double? priceExchange;
  @JsonKey(name: 'price_shipping', includeIfNull: true)
  final double? priceShipping;
  @JsonKey(name: 'price_shipping_remoted', includeIfNull: true)
  final double? priceShippingRemoted;
  @JsonKey(name: 'price_shipping_discount', includeIfNull: true)
  final double? priceShippingDiscount;
  @JsonKey(name: 'tax_price', includeIfNull: true)
  final double? taxPrice;
  @JsonKey(name: 'total_payment_price', includeIfNull: true)
  final double? totalPaymentPrice;
  @JsonKey(name: 'paid_at', includeIfNull: true)
  final DateTime? paidAt;
  @JsonKey(
      name: 'shipping_personal_code', includeIfNull: true, defaultValue: '')
  final String? shippingPersonalCode;
  @JsonKey(name: 'shipping_orderer_ssn', includeIfNull: true, defaultValue: '')
  final String? shippingOrdererSsn;
  @JsonKey(
      name: 'shipping_orderer_phone', includeIfNull: true, defaultValue: '')
  final String? shippingOrdererPhone;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'status', includeIfNull: true, defaultValue: '')
  final String status;
  @JsonKey(name: 'delivery_type', includeIfNull: true, defaultValue: '')
  final String? deliveryType;
  @JsonKey(name: 'delivery_load_size', includeIfNull: true, defaultValue: '')
  final String? deliveryLoadSize;
  @JsonKey(
      name: 'delivery_print_message', includeIfNull: true, defaultValue: '')
  final String? deliveryPrintMessage;
  @JsonKey(name: 'delivery_remoted', includeIfNull: true)
  final bool? deliveryRemoted;
  @JsonKey(name: 'delivery_splited', includeIfNull: true)
  final bool? deliverySplited;
  @JsonKey(name: 'delivery_splitable', includeIfNull: true)
  final bool? deliverySplitable;
  @JsonKey(name: 'delivery_company_code', includeIfNull: true, defaultValue: '')
  final String? deliveryCompanyCode;
  @JsonKey(name: 'delivery_company_name', includeIfNull: true, defaultValue: '')
  final String? deliveryCompanyName;
  @JsonKey(
      name: 'delivery_invoice_number', includeIfNull: true, defaultValue: '')
  final String? deliveryInvoiceNumber;
  @JsonKey(name: 'delivery_expired_at', includeIfNull: true)
  final DateTime? deliveryExpiredAt;
  @JsonKey(name: 'delivered_at', includeIfNull: true)
  final DateTime? deliveredAt;
  @JsonKey(name: 'delivery_complete_at', includeIfNull: true)
  final DateTime? deliveryCompleteAt;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'progressed_at', includeIfNull: true)
  final DateTime? progressedAt;
  @JsonKey(name: 'order_purchase_conformed_at', includeIfNull: true)
  final DateTime? orderPurchaseConformedAt;
  @JsonKey(name: 'order_complete_at', includeIfNull: true)
  final DateTime? orderCompleteAt;
  @JsonKey(name: 'cancel_req_at', includeIfNull: true)
  final DateTime? cancelReqAt;
  @JsonKey(name: 'cancel_req_user_name', includeIfNull: true, defaultValue: '')
  final String? cancelReqUserName;
  @JsonKey(
      name: 'cancel_req_user_account', includeIfNull: true, defaultValue: '')
  final String? cancelReqUserAccount;
  @JsonKey(
      name: 'cancel_confirm_user_name', includeIfNull: true, defaultValue: '')
  final String? cancelConfirmUserName;
  @JsonKey(
      name: 'cancel_confirm_user_account',
      includeIfNull: true,
      defaultValue: '')
  final String? cancelConfirmUserAccount;
  @JsonKey(name: 'cancel_confirmed_at', includeIfNull: true)
  final DateTime? cancelConfirmedAt;
  @JsonKey(name: 'cancel_reason', includeIfNull: true, defaultValue: '')
  final String? cancelReason;
  @JsonKey(name: 'canceled_at', includeIfNull: true)
  final DateTime? canceledAt;
  @JsonKey(name: 'return_req_at', includeIfNull: true)
  final DateTime? returnReqAt;
  @JsonKey(name: 'return_req_user_name', includeIfNull: true, defaultValue: '')
  final String? returnReqUserName;
  @JsonKey(
      name: 'return_req_user_account', includeIfNull: true, defaultValue: '')
  final String? returnReqUserAccount;
  @JsonKey(
      name: 'return_confirm_user_name', includeIfNull: true, defaultValue: '')
  final String? returnConfirmUserName;
  @JsonKey(
      name: 'return_confirm_user_account',
      includeIfNull: true,
      defaultValue: '')
  final String? returnConfirmUserAccount;
  @JsonKey(name: 'return_confirmed_at', includeIfNull: true)
  final DateTime? returnConfirmedAt;
  @JsonKey(name: 'return_reason', includeIfNull: true, defaultValue: '')
  final String? returnReason;
  @JsonKey(name: 'returned_at', includeIfNull: true)
  final DateTime? returnedAt;
  @JsonKey(name: 'exchange_req_at', includeIfNull: true)
  final DateTime? exchangeReqAt;
  @JsonKey(
      name: 'exchange_req_user_name', includeIfNull: true, defaultValue: '')
  final String? exchangeReqUserName;
  @JsonKey(
      name: 'exchange_req_user_account', includeIfNull: true, defaultValue: '')
  final String? exchangeReqUserAccount;
  @JsonKey(
      name: 'exchange_confirm_user_name', includeIfNull: true, defaultValue: '')
  final String? exchangeConfirmUserName;
  @JsonKey(
      name: 'exchange_confirm_user_account',
      includeIfNull: true,
      defaultValue: '')
  final String? exchangeConfirmUserAccount;
  @JsonKey(name: 'exchange_confirmed_at', includeIfNull: true)
  final DateTime? exchangeConfirmedAt;
  @JsonKey(name: 'exchange_reason', includeIfNull: true, defaultValue: '')
  final String? exchangeReason;
  @JsonKey(name: 'exchanged_at', includeIfNull: true)
  final DateTime? exchangedAt;
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
            (identical(other.paymentId, paymentId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentId, paymentId)) &&
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
            (identical(
                other.ordererAddressPostalCode, ordererAddressPostalCode) ||
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
                const DeepCollectionEquality().equals(
                    other.receiverPhone, receiverPhone)) &&
            (identical(other.receiverPhoneSafe, receiverPhoneSafe) ||
                const DeepCollectionEquality().equals(
                    other.receiverPhoneSafe, receiverPhoneSafe)) &&
            (identical(other.receiverAddress, receiverAddress) ||
                const DeepCollectionEquality().equals(
                    other.receiverAddress, receiverAddress)) &&
            (identical(other.receiverAddressDetail, receiverAddressDetail) ||
                const DeepCollectionEquality().equals(
                    other.receiverAddressDetail, receiverAddressDetail)) &&
            (identical(
                other.receiverAddressPostalCode, receiverAddressPostalCode) ||
                const DeepCollectionEquality().equals(
                    other.receiverAddressPostalCode,
                    receiverAddressPostalCode)) &&
            (identical(other.priceUnit, priceUnit) ||
                const DeepCollectionEquality().equals(
                    other.priceUnit, priceUnit)) &&
            (identical(other.priceExchange, priceExchange) ||
                const DeepCollectionEquality().equals(
                    other.priceExchange, priceExchange)) &&
            (identical(other.priceShipping, priceShipping) ||
                const DeepCollectionEquality().equals(
                    other.priceShipping, priceShipping)) &&
            (identical(other.priceShippingRemoted, priceShippingRemoted) ||
                const DeepCollectionEquality().equals(
                    other.priceShippingRemoted, priceShippingRemoted)) &&
            (identical(other.priceShippingDiscount, priceShippingDiscount) ||
                const DeepCollectionEquality().equals(
                    other.priceShippingDiscount, priceShippingDiscount)) &&
            (identical(other.taxPrice, taxPrice) ||
                const DeepCollectionEquality().equals(
                    other.taxPrice, taxPrice)) &&
            (identical(other.totalPaymentPrice, totalPaymentPrice) ||
                const DeepCollectionEquality().equals(
                    other.totalPaymentPrice, totalPaymentPrice)) &&
            (identical(other.paidAt, paidAt) ||
                const DeepCollectionEquality().equals(other.paidAt, paidAt)) &&
            (identical(other.shippingPersonalCode, shippingPersonalCode) ||
                const DeepCollectionEquality().equals(
                    other.shippingPersonalCode, shippingPersonalCode)) &&
            (identical(other.shippingOrdererSsn, shippingOrdererSsn) ||
                const DeepCollectionEquality().equals(
                    other.shippingOrdererSsn, shippingOrdererSsn)) &&
            (identical(other.shippingOrdererPhone, shippingOrdererPhone) ||
                const DeepCollectionEquality().equals(
                    other.shippingOrdererPhone, shippingOrdererPhone)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.deliveryType, deliveryType) ||
                const DeepCollectionEquality().equals(
                    other.deliveryType, deliveryType)) &&
            (identical(other.deliveryLoadSize, deliveryLoadSize) ||
                const DeepCollectionEquality().equals(
                    other.deliveryLoadSize, deliveryLoadSize)) &&
            (identical(other.deliveryPrintMessage, deliveryPrintMessage) ||
                const DeepCollectionEquality().equals(
                    other.deliveryPrintMessage, deliveryPrintMessage)) &&
            (identical(other.deliveryRemoted, deliveryRemoted) ||
                const DeepCollectionEquality().equals(
                    other.deliveryRemoted, deliveryRemoted)) &&
            (identical(other.deliverySplited, deliverySplited) ||
                const DeepCollectionEquality().equals(
                    other.deliverySplited, deliverySplited)) &&
            (identical(other.deliverySplitable, deliverySplitable) ||
                const DeepCollectionEquality().equals(other.deliverySplitable,
                    deliverySplitable)) &&
            (identical(other.deliveryCompanyCode, deliveryCompanyCode) ||
                const DeepCollectionEquality().equals(other.deliveryCompanyCode,
                    deliveryCompanyCode)) &&
            (identical(other.deliveryCompanyName, deliveryCompanyName) ||
                const DeepCollectionEquality().equals(
                    other.deliveryCompanyName, deliveryCompanyName)) &&
            (identical(other.deliveryInvoiceNumber, deliveryInvoiceNumber) ||
                const DeepCollectionEquality().equals(
                    other.deliveryInvoiceNumber, deliveryInvoiceNumber)) &&
            (identical(other.deliveryExpiredAt, deliveryExpiredAt) ||
                const DeepCollectionEquality().equals(
                    other.deliveryExpiredAt, deliveryExpiredAt)) &&
            (identical(other.deliveredAt, deliveredAt) ||
                const DeepCollectionEquality().equals(
                    other.deliveredAt, deliveredAt)) &&
            (identical(other.deliveryCompleteAt, deliveryCompleteAt) ||
                const DeepCollectionEquality().equals(
                    other.deliveryCompleteAt, deliveryCompleteAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                    other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                    other.updatedAt, updatedAt)) &&
            (identical(other.progressedAt, progressedAt) ||
                const DeepCollectionEquality().equals(
                    other.progressedAt, progressedAt)) &&
            (identical(
                other.orderPurchaseConformedAt, orderPurchaseConformedAt) ||
                const DeepCollectionEquality().equals(
                    other.orderPurchaseConformedAt,
                    orderPurchaseConformedAt)) &&
            (identical(other.orderCompleteAt, orderCompleteAt) ||
                const DeepCollectionEquality().equals(
                    other.orderCompleteAt, orderCompleteAt)) &&
            (identical(other.cancelReqAt, cancelReqAt) ||
                const DeepCollectionEquality().equals(
                    other.cancelReqAt, cancelReqAt)) &&
            (identical(other.cancelReqUserName, cancelReqUserName) ||
                const DeepCollectionEquality().equals(
                    other.cancelReqUserName, cancelReqUserName)) &&
            (identical(other.cancelReqUserAccount, cancelReqUserAccount) ||
                const DeepCollectionEquality().equals(
                    other.cancelReqUserAccount, cancelReqUserAccount)) &&
            (identical(other.cancelConfirmUserName, cancelConfirmUserName) ||
                const DeepCollectionEquality().equals(
                    other.cancelConfirmUserName, cancelConfirmUserName)) &&
            (identical(
                other.cancelConfirmUserAccount, cancelConfirmUserAccount) ||
                const DeepCollectionEquality().equals(
                    other.cancelConfirmUserAccount,
                    cancelConfirmUserAccount)) &&
            (identical(other.cancelConfirmedAt, cancelConfirmedAt) ||
                const DeepCollectionEquality().equals(
                    other.cancelConfirmedAt, cancelConfirmedAt)) &&
            (identical(other.cancelReason, cancelReason) ||
                const DeepCollectionEquality().equals(
                    other.cancelReason, cancelReason)) &&
            (identical(other.canceledAt, canceledAt) ||
                const DeepCollectionEquality().equals(
                    other.canceledAt, canceledAt)) &&
            (identical(other.returnReqAt, returnReqAt) ||
                const DeepCollectionEquality().equals(
                    other.returnReqAt, returnReqAt)) &&
            (identical(other.returnReqUserName, returnReqUserName) ||
                const DeepCollectionEquality().equals(
                    other.returnReqUserName, returnReqUserName)) &&
            (identical(other.returnReqUserAccount, returnReqUserAccount) ||
                const DeepCollectionEquality().equals(
                    other.returnReqUserAccount, returnReqUserAccount)) &&
            (identical(other.returnConfirmUserName, returnConfirmUserName) ||
                const DeepCollectionEquality().equals(
                    other.returnConfirmUserName, returnConfirmUserName)) &&
            (identical(
                other.returnConfirmUserAccount, returnConfirmUserAccount) ||
                const DeepCollectionEquality().equals(
                    other.returnConfirmUserAccount,
                    returnConfirmUserAccount)) &&
            (identical(other.returnConfirmedAt, returnConfirmedAt) ||
                const DeepCollectionEquality().equals(
                    other.returnConfirmedAt, returnConfirmedAt)) &&
            (identical(other.returnReason, returnReason) ||
                const DeepCollectionEquality().equals(
                    other.returnReason, returnReason)) &&
            (identical(other.returnedAt, returnedAt) ||
                const DeepCollectionEquality().equals(
                    other.returnedAt, returnedAt)) &&
            (identical(other.exchangeReqAt, exchangeReqAt) ||
                const DeepCollectionEquality().equals(
                    other.exchangeReqAt, exchangeReqAt)) &&
            (identical(other.exchangeReqUserName, exchangeReqUserName) ||
                const DeepCollectionEquality().equals(
                    other.exchangeReqUserName, exchangeReqUserName)) &&
            (identical(other.exchangeReqUserAccount, exchangeReqUserAccount) ||
                const DeepCollectionEquality().equals(
                    other.exchangeReqUserAccount, exchangeReqUserAccount)) &&
            (identical(
                other.exchangeConfirmUserName, exchangeConfirmUserName) ||
                const DeepCollectionEquality().equals(
                    other.exchangeConfirmUserName, exchangeConfirmUserName)) &&
            (identical(
                other.exchangeConfirmUserAccount, exchangeConfirmUserAccount) ||
                const DeepCollectionEquality().equals(
                    other.exchangeConfirmUserAccount,
                    exchangeConfirmUserAccount)) &&
            (identical(other.exchangeConfirmedAt, exchangeConfirmedAt) ||
                const DeepCollectionEquality().equals(
                    other.exchangeConfirmedAt, exchangeConfirmedAt)) &&
            (identical(other.exchangeReason, exchangeReason) ||
                const DeepCollectionEquality().equals(
                    other.exchangeReason, exchangeReason)) &&
            (identical(other.exchangedAt, exchangedAt) ||
                const DeepCollectionEquality().equals(
                    other.exchangedAt, exchangedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(paymentId) ^
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
      const DeepCollectionEquality().hash(deliveredAt) ^
      const DeepCollectionEquality().hash(deliveryCompleteAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(progressedAt) ^
      const DeepCollectionEquality().hash(orderPurchaseConformedAt) ^
      const DeepCollectionEquality().hash(orderCompleteAt) ^
      const DeepCollectionEquality().hash(cancelReqAt) ^
      const DeepCollectionEquality().hash(cancelReqUserName) ^
      const DeepCollectionEquality().hash(cancelReqUserAccount) ^
      const DeepCollectionEquality().hash(cancelConfirmUserName) ^
      const DeepCollectionEquality().hash(cancelConfirmUserAccount) ^
      const DeepCollectionEquality().hash(cancelConfirmedAt) ^
      const DeepCollectionEquality().hash(cancelReason) ^
      const DeepCollectionEquality().hash(canceledAt) ^
      const DeepCollectionEquality().hash(returnReqAt) ^
      const DeepCollectionEquality().hash(returnReqUserName) ^
      const DeepCollectionEquality().hash(returnReqUserAccount) ^
      const DeepCollectionEquality().hash(returnConfirmUserName) ^
      const DeepCollectionEquality().hash(returnConfirmUserAccount) ^
      const DeepCollectionEquality().hash(returnConfirmedAt) ^
      const DeepCollectionEquality().hash(returnReason) ^
      const DeepCollectionEquality().hash(returnedAt) ^
      const DeepCollectionEquality().hash(exchangeReqAt) ^
      const DeepCollectionEquality().hash(exchangeReqUserName) ^
      const DeepCollectionEquality().hash(exchangeReqUserAccount) ^
      const DeepCollectionEquality().hash(exchangeConfirmUserName) ^
      const DeepCollectionEquality().hash(exchangeConfirmUserAccount) ^
      const DeepCollectionEquality().hash(exchangeConfirmedAt) ^
      const DeepCollectionEquality().hash(exchangeReason) ^
      const DeepCollectionEquality().hash(exchangedAt) ^
      runtimeType.hashCode;
}

extension $OrdersExtension on Orders {
  Orders copyWith({int? uid,
    int? paymentId,
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
    DateTime? deliveredAt,
    DateTime? deliveryCompleteAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? progressedAt,
    DateTime? orderPurchaseConformedAt,
    DateTime? orderCompleteAt,
    DateTime? cancelReqAt,
    String? cancelReqUserName,
    String? cancelReqUserAccount,
    String? cancelConfirmUserName,
    String? cancelConfirmUserAccount,
    DateTime? cancelConfirmedAt,
    String? cancelReason,
    DateTime? canceledAt,
    DateTime? returnReqAt,
    String? returnReqUserName,
    String? returnReqUserAccount,
    String? returnConfirmUserName,
    String? returnConfirmUserAccount,
    DateTime? returnConfirmedAt,
    String? returnReason,
    DateTime? returnedAt,
    DateTime? exchangeReqAt,
    String? exchangeReqUserName,
    String? exchangeReqUserAccount,
    String? exchangeConfirmUserName,
    String? exchangeConfirmUserAccount,
    DateTime? exchangeConfirmedAt,
    String? exchangeReason,
    DateTime? exchangedAt}) {
    return Orders(
        uid: uid ?? this.uid,
        paymentId: paymentId ?? this.paymentId,
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
        deliveredAt: deliveredAt ?? this.deliveredAt,
        deliveryCompleteAt: deliveryCompleteAt ?? this.deliveryCompleteAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        progressedAt: progressedAt ?? this.progressedAt,
        orderPurchaseConformedAt:
        orderPurchaseConformedAt ?? this.orderPurchaseConformedAt,
        orderCompleteAt: orderCompleteAt ?? this.orderCompleteAt,
        cancelReqAt: cancelReqAt ?? this.cancelReqAt,
        cancelReqUserName: cancelReqUserName ?? this.cancelReqUserName,
        cancelReqUserAccount: cancelReqUserAccount ?? this.cancelReqUserAccount,
        cancelConfirmUserName:
        cancelConfirmUserName ?? this.cancelConfirmUserName,
        cancelConfirmUserAccount:
        cancelConfirmUserAccount ?? this.cancelConfirmUserAccount,
        cancelConfirmedAt: cancelConfirmedAt ?? this.cancelConfirmedAt,
        cancelReason: cancelReason ?? this.cancelReason,
        canceledAt: canceledAt ?? this.canceledAt,
        returnReqAt: returnReqAt ?? this.returnReqAt,
        returnReqUserName: returnReqUserName ?? this.returnReqUserName,
        returnReqUserAccount: returnReqUserAccount ?? this.returnReqUserAccount,
        returnConfirmUserName:
        returnConfirmUserName ?? this.returnConfirmUserName,
        returnConfirmUserAccount:
        returnConfirmUserAccount ?? this.returnConfirmUserAccount,
        returnConfirmedAt: returnConfirmedAt ?? this.returnConfirmedAt,
        returnReason: returnReason ?? this.returnReason,
        returnedAt: returnedAt ?? this.returnedAt,
        exchangeReqAt: exchangeReqAt ?? this.exchangeReqAt,
        exchangeReqUserName: exchangeReqUserName ?? this.exchangeReqUserName,
        exchangeReqUserAccount:
        exchangeReqUserAccount ?? this.exchangeReqUserAccount,
        exchangeConfirmUserName:
        exchangeConfirmUserName ?? this.exchangeConfirmUserName,
        exchangeConfirmUserAccount:
        exchangeConfirmUserAccount ?? this.exchangeConfirmUserAccount,
        exchangeConfirmedAt: exchangeConfirmedAt ?? this.exchangeConfirmedAt,
        exchangeReason: exchangeReason ?? this.exchangeReason,
        exchangedAt: exchangedAt ?? this.exchangedAt);
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'account', includeIfNull: true, defaultValue: '')
  final String account;
  @JsonKey(name: 'user_mode', includeIfNull: true, defaultValue: '')
  final String userMode;
  @JsonKey(name: 'vacation_reason', includeIfNull: true, defaultValue: '')
  final String? vacationReason;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  SellerVacation copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'store_status', includeIfNull: true, defaultValue: '')
  final String storeStatus;
  @JsonKey(name: 'account', includeIfNull: true, defaultValue: '')
  final String account;
  @JsonKey(name: 'store_name', includeIfNull: true, defaultValue: '')
  final String storeName;
  @JsonKey(
      name: 'artiket_representative_category',
      includeIfNull: true,
      defaultValue: '')
  final String? artiketRepresentativeCategory;
  @JsonKey(
      name: 'artiket_representative_image',
      includeIfNull: true,
      defaultValue: '')
  final String? artiketRepresentativeImage;
  @JsonKey(
      name: 'store_status_description', includeIfNull: true, defaultValue: '')
  final String? storeStatusDescription;
  @JsonKey(name: 'business_number0', includeIfNull: true, defaultValue: '')
  final String? businessNumber0;
  @JsonKey(name: 'business_number1', includeIfNull: true, defaultValue: '')
  final String? businessNumber1;
  @JsonKey(name: 'business_company_name', includeIfNull: true, defaultValue: '')
  final String? businessCompanyName;
  @JsonKey(name: 'business_type', includeIfNull: true, defaultValue: '')
  final String? businessType;
  @JsonKey(name: 'business_ceo_name', includeIfNull: true, defaultValue: '')
  final String? businessCeoName;
  @JsonKey(
      name: 'business_company_address', includeIfNull: true, defaultValue: '')
  final String? businessCompanyAddress;
  @JsonKey(
      name: 'online_marketing_business_number',
      includeIfNull: true,
      defaultValue: '')
  final String? onlineMarketingBusinessNumber;
  @JsonKey(
      name: 'business_license_image0', includeIfNull: true, defaultValue: '')
  final String? businessLicenseImage0;
  @JsonKey(
      name: 'business_license_image1', includeIfNull: true, defaultValue: '')
  final String? businessLicenseImage1;
  @JsonKey(
      name: 'artiket_place_of_shipment_name',
      includeIfNull: true,
      defaultValue: '')
  final String? artiketPlaceOfShipmentName;
  @JsonKey(
      name: 'artiket_place_of_shipment', includeIfNull: true, defaultValue: '')
  final String? artiketPlaceOfShipment;
  @JsonKey(
      name: 'artiket_place_of_shipment_number0',
      includeIfNull: true,
      defaultValue: '')
  final String? artiketPlaceOfShipmentNumber0;
  @JsonKey(
      name: 'artiket_place_of_shipment_number1',
      includeIfNull: true,
      defaultValue: '')
  final String? artiketPlaceOfShipmentNumber1;
  @JsonKey(name: 'refund_address_name', includeIfNull: true, defaultValue: '')
  final String? refundAddressName;
  @JsonKey(name: 'refund_address', includeIfNull: true, defaultValue: '')
  final String? refundAddress;
  @JsonKey(name: 'refund_number0', includeIfNull: true, defaultValue: '')
  final String? refundNumber0;
  @JsonKey(name: 'refund_number1', includeIfNull: true, defaultValue: '')
  final String? refundNumber1;
  @JsonKey(name: 'user_bank', includeIfNull: true, defaultValue: '')
  final String? userBank;
  @JsonKey(name: 'user_account_name', includeIfNull: true, defaultValue: '')
  final String? userAccountName;
  @JsonKey(name: 'user_account_number', includeIfNull: true, defaultValue: '')
  final String? userAccountNumber;
  @JsonKey(name: 'user_account_image', includeIfNull: true, defaultValue: '')
  final String? userAccountImage;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
            (identical(other.artiketRepresentativeCategory,
                artiketRepresentativeCategory) ||
                const DeepCollectionEquality().equals(
                    other.artiketRepresentativeCategory,
                    artiketRepresentativeCategory)) &&
            (identical(
                other.artiketRepresentativeImage, artiketRepresentativeImage) ||
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
            (identical(other.onlineMarketingBusinessNumber,
                onlineMarketingBusinessNumber) ||
                const DeepCollectionEquality()
                    .equals(other.onlineMarketingBusinessNumber,
                    onlineMarketingBusinessNumber)) &&
            (identical(other.businessLicenseImage0, businessLicenseImage0) ||
                const DeepCollectionEquality().equals(
                    other.businessLicenseImage0, businessLicenseImage0)) &&
            (identical(other.businessLicenseImage1, businessLicenseImage1) ||
                const DeepCollectionEquality().equals(
                    other.businessLicenseImage1, businessLicenseImage1)) &&
            (identical(
                other.artiketPlaceOfShipmentName, artiketPlaceOfShipmentName) ||
                const DeepCollectionEquality().equals(
                    other.artiketPlaceOfShipmentName,
                    artiketPlaceOfShipmentName)) &&
            (identical(other.artiketPlaceOfShipment, artiketPlaceOfShipment) ||
                const DeepCollectionEquality().equals(
                    other.artiketPlaceOfShipment, artiketPlaceOfShipment)) &&
            (identical(other.artiketPlaceOfShipmentNumber0,
                artiketPlaceOfShipmentNumber0) ||
                const DeepCollectionEquality().equals(
                    other.artiketPlaceOfShipmentNumber0,
                    artiketPlaceOfShipmentNumber0)) &&
            (identical(other.artiketPlaceOfShipmentNumber1,
                artiketPlaceOfShipmentNumber1) ||
                const DeepCollectionEquality().equals(
                    other.artiketPlaceOfShipmentNumber1,
                    artiketPlaceOfShipmentNumber1)) &&
            (identical(other.refundAddressName, refundAddressName) ||
                const DeepCollectionEquality().equals(
                    other.refundAddressName, refundAddressName)) &&
            (identical(other.refundAddress, refundAddress) ||
                const DeepCollectionEquality().equals(
                    other.refundAddress, refundAddress)) &&
            (identical(other.refundNumber0, refundNumber0) ||
                const DeepCollectionEquality().equals(
                    other.refundNumber0, refundNumber0)) &&
            (identical(other.refundNumber1, refundNumber1) ||
                const DeepCollectionEquality().equals(
                    other.refundNumber1, refundNumber1)) &&
            (identical(other.userBank, userBank) ||
                const DeepCollectionEquality().equals(
                    other.userBank, userBank)) &&
            (identical(other.userAccountName, userAccountName) ||
                const DeepCollectionEquality().equals(
                    other.userAccountName, userAccountName)) &&
            (identical(other.userAccountNumber, userAccountNumber) ||
                const DeepCollectionEquality().equals(
                    other.userAccountNumber, userAccountNumber)) &&
            (identical(other.userAccountImage, userAccountImage) ||
                const DeepCollectionEquality().equals(
                    other.userAccountImage, userAccountImage)) &&
            (identical(other.actived, actived) ||
                const DeepCollectionEquality().equals(
                    other.actived, actived)) &&
            (identical(other.activedAt, activedAt) ||
                const DeepCollectionEquality().equals(
                    other.activedAt, activedAt)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality().equals(
                    other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality().equals(
                    other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                    other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                    other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality().equals(
                    other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality().equals(
                    other.archivedAt, archivedAt)));
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
  Store copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'store_id', includeIfNull: true)
  final int storeId;
  @JsonKey(name: 'account', includeIfNull: true, defaultValue: '')
  final String account;
  @JsonKey(name: 'user_mode', includeIfNull: true, defaultValue: '')
  final String userMode;
  @JsonKey(name: 'user_password', includeIfNull: true, defaultValue: '')
  final String userPassword;
  @JsonKey(name: 'user_type', includeIfNull: true, defaultValue: '')
  final String? userType;
  @JsonKey(name: 'seller_type', includeIfNull: true, defaultValue: '')
  final String sellerType;
  @JsonKey(name: 'user_number', includeIfNull: true, defaultValue: '')
  final String? userNumber;
  @JsonKey(name: 'user_name', includeIfNull: true, defaultValue: '')
  final String? userName;
  @JsonKey(name: 'user_email', includeIfNull: true, defaultValue: '')
  final String? userEmail;
  @JsonKey(name: 'user_birthday', includeIfNull: true)
  final DateTime? userBirthday;
  @JsonKey(name: 'user_gender', includeIfNull: true, defaultValue: '')
  final String? userGender;
  @JsonKey(name: 'user_address', includeIfNull: true, defaultValue: '')
  final String? userAddress;
  @JsonKey(name: 'artiket_name', includeIfNull: true, defaultValue: '')
  final String? artiketName;
  @JsonKey(
      name: 'artiket_introduce_content', includeIfNull: true, defaultValue: '')
  final String? artiketIntroduceContent;
  @JsonKey(
      name: 'artiket_profile_image_approve',
      includeIfNull: true,
      defaultValue: '')
  final String? artiketProfileImageApprove;
  @JsonKey(name: 'artiket_profile_image', includeIfNull: true, defaultValue: '')
  final String? artiketProfileImage;
  @JsonKey(
      name: 'artiket_cover_image_approve',
      includeIfNull: true,
      defaultValue: '')
  final String? artiketCoverImageApprove;
  @JsonKey(name: 'artiket_cover_image', includeIfNull: true, defaultValue: '')
  final String? artiketCoverImage;
  @JsonKey(name: 'artiket_s_c_number', includeIfNull: true, defaultValue: '')
  final String? artiketSCNumber;
  @JsonKey(name: 'store_status', includeIfNull: true, defaultValue: '')
  final String storeStatus;
  @JsonKey(
      name: 'store_status_description', includeIfNull: true, defaultValue: '')
  final String? storeStatusDescription;
  @JsonKey(
      name: 'artiket_representative_category',
      includeIfNull: true,
      defaultValue: '')
  final String? artiketRepresentativeCategory;
  @JsonKey(
      name: 'artiket_representative_image',
      includeIfNull: true,
      defaultValue: '')
  final String? artiketRepresentativeImage;
  @JsonKey(name: 'business_number0', includeIfNull: true, defaultValue: '')
  final String? businessNumber0;
  @JsonKey(name: 'business_number1', includeIfNull: true, defaultValue: '')
  final String? businessNumber1;
  @JsonKey(name: 'business_company_name', includeIfNull: true, defaultValue: '')
  final String? businessCompanyName;
  @JsonKey(name: 'business_type', includeIfNull: true, defaultValue: '')
  final String? businessType;
  @JsonKey(name: 'business_ceo_name', includeIfNull: true, defaultValue: '')
  final String? businessCeoName;
  @JsonKey(
      name: 'business_company_address', includeIfNull: true, defaultValue: '')
  final String? businessCompanyAddress;
  @JsonKey(
      name: 'online_marketing_business_number',
      includeIfNull: true,
      defaultValue: '')
  final String? onlineMarketingBusinessNumber;
  @JsonKey(
      name: 'business_license_image0', includeIfNull: true, defaultValue: '')
  final String? businessLicenseImage0;
  @JsonKey(
      name: 'business_license_image1', includeIfNull: true, defaultValue: '')
  final String? businessLicenseImage1;
  @JsonKey(
      name: 'artiket_place_of_shipment_name',
      includeIfNull: true,
      defaultValue: '')
  final String? artiketPlaceOfShipmentName;
  @JsonKey(
      name: 'artiket_place_of_shipment', includeIfNull: true, defaultValue: '')
  final String? artiketPlaceOfShipment;
  @JsonKey(
      name: 'artiket_place_of_shipment_number0',
      includeIfNull: true,
      defaultValue: '')
  final String? artiketPlaceOfShipmentNumber0;
  @JsonKey(
      name: 'artiket_place_of_shipment_number1',
      includeIfNull: true,
      defaultValue: '')
  final String? artiketPlaceOfShipmentNumber1;
  @JsonKey(name: 'refund_address_name', includeIfNull: true, defaultValue: '')
  final String? refundAddressName;
  @JsonKey(name: 'refund_address', includeIfNull: true, defaultValue: '')
  final String? refundAddress;
  @JsonKey(name: 'refund_number0', includeIfNull: true, defaultValue: '')
  final String? refundNumber0;
  @JsonKey(name: 'refund_number1', includeIfNull: true, defaultValue: '')
  final String? refundNumber1;
  @JsonKey(name: 'user_bank', includeIfNull: true, defaultValue: '')
  final String? userBank;
  @JsonKey(name: 'user_account_name', includeIfNull: true, defaultValue: '')
  final String? userAccountName;
  @JsonKey(name: 'user_account_number', includeIfNull: true, defaultValue: '')
  final String? userAccountNumber;
  @JsonKey(name: 'user_account_image', includeIfNull: true, defaultValue: '')
  final String? userAccountImage;
  @JsonKey(name: 'username_used', includeIfNull: true)
  final bool? usernameUsed;
  @JsonKey(name: 'username_used_at', includeIfNull: true)
  final DateTime? usernameUsedAt;
  @JsonKey(name: 'email', includeIfNull: true, defaultValue: '')
  final String? email;
  @JsonKey(name: 'email_valid', includeIfNull: true)
  final bool? emailValid;
  @JsonKey(name: 'phone', includeIfNull: true, defaultValue: '')
  final String? phone;
  @JsonKey(name: 'phone_valid', includeIfNull: true)
  final bool? phoneValid;
  @JsonKey(name: 'user_phone', includeIfNull: true, defaultValue: '')
  final String? userPhone;
  @JsonKey(name: 'user_first_name', includeIfNull: true, defaultValue: '')
  final String? userFirstName;
  @JsonKey(name: 'user_last_name', includeIfNull: true, defaultValue: '')
  final String? userLastName;
  @JsonKey(name: 'user_nickname', includeIfNull: true, defaultValue: '')
  final String? userNickname;
  @JsonKey(name: 'user_birth', includeIfNull: true, defaultValue: '')
  final String? userBirth;
  @JsonKey(name: 'user_dial_code', includeIfNull: true, defaultValue: '')
  final String? userDialCode;
  @JsonKey(name: 'user_iso_code', includeIfNull: true, defaultValue: '')
  final String? userIsoCode;
  @JsonKey(name: 'profile_image', includeIfNull: true, defaultValue: '')
  final String? profileImage;
  @JsonKey(name: 'profile_bio', includeIfNull: true, defaultValue: '')
  final String? profileBio;
  @JsonKey(name: 'role_type', includeIfNull: true, defaultValue: '')
  final String? roleType;
  @JsonKey(name: 'role_level', includeIfNull: true)
  final int? roleLevel;
  @JsonKey(name: 'geo_latitude', includeIfNull: true)
  final double? geoLatitude;
  @JsonKey(name: 'geo_longitude', includeIfNull: true)
  final double? geoLongitude;
  @JsonKey(name: 'timezone', includeIfNull: true)
  final double? timezone;
  @JsonKey(name: 'blocked_issue', includeIfNull: true, defaultValue: '')
  final String? blockedIssue;
  @JsonKey(name: 'blocked', includeIfNull: true)
  final bool? blocked;
  @JsonKey(name: 'blocked_at', includeIfNull: true)
  final DateTime? blockedAt;
  @JsonKey(name: 'agreed', includeIfNull: true, defaultValue: '')
  final String? agreed;
  @JsonKey(name: 'agreed_at', includeIfNull: true)
  final DateTime? agreedAt;
  @JsonKey(name: 'memo', includeIfNull: true, defaultValue: '')
  final String? memo;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
            (identical(
                other.artiketIntroduceContent, artiketIntroduceContent) ||
                const DeepCollectionEquality().equals(
                    other.artiketIntroduceContent, artiketIntroduceContent)) &&
            (identical(
                other.artiketProfileImageApprove, artiketProfileImageApprove) ||
                const DeepCollectionEquality().equals(
                    other.artiketProfileImageApprove,
                    artiketProfileImageApprove)) &&
            (identical(other.artiketProfileImage, artiketProfileImage) ||
                const DeepCollectionEquality()
                    .equals(other.artiketProfileImage, artiketProfileImage)) &&
            (identical(
                other.artiketCoverImageApprove, artiketCoverImageApprove) ||
                const DeepCollectionEquality().equals(
                    other.artiketCoverImageApprove,
                    artiketCoverImageApprove)) &&
            (identical(other.artiketCoverImage, artiketCoverImage) ||
                const DeepCollectionEquality()
                    .equals(other.artiketCoverImage, artiketCoverImage)) &&
            (identical(other.artiketSCNumber, artiketSCNumber) ||
                const DeepCollectionEquality().equals(
                    other.artiketSCNumber, artiketSCNumber)) &&
            (identical(other.storeStatus, storeStatus) ||
                const DeepCollectionEquality().equals(
                    other.storeStatus, storeStatus)) &&
            (identical(other.storeStatusDescription, storeStatusDescription) ||
                const DeepCollectionEquality().equals(
                    other.storeStatusDescription, storeStatusDescription)) &&
            (identical(other.artiketRepresentativeCategory,
                artiketRepresentativeCategory) ||
                const DeepCollectionEquality().equals(
                    other.artiketRepresentativeCategory,
                    artiketRepresentativeCategory)) &&
            (identical(
                other.artiketRepresentativeImage, artiketRepresentativeImage) ||
                const DeepCollectionEquality().equals(
                    other.artiketRepresentativeImage,
                    artiketRepresentativeImage)) &&
            (identical(other.businessNumber0, businessNumber0) ||
                const DeepCollectionEquality().equals(
                    other.businessNumber0, businessNumber0)) &&
            (identical(other.businessNumber1, businessNumber1) ||
                const DeepCollectionEquality().equals(
                    other.businessNumber1, businessNumber1)) &&
            (identical(other.businessCompanyName, businessCompanyName) ||
                const DeepCollectionEquality().equals(
                    other.businessCompanyName, businessCompanyName)) &&
            (identical(other.businessType, businessType) ||
                const DeepCollectionEquality().equals(
                    other.businessType, businessType)) &&
            (identical(other.businessCeoName, businessCeoName) ||
                const DeepCollectionEquality().equals(
                    other.businessCeoName, businessCeoName)) &&
            (identical(other.businessCompanyAddress, businessCompanyAddress) ||
                const DeepCollectionEquality().equals(
                    other.businessCompanyAddress, businessCompanyAddress)) &&
            (identical(other.onlineMarketingBusinessNumber,
                onlineMarketingBusinessNumber) ||
                const DeepCollectionEquality().equals(
                    other.onlineMarketingBusinessNumber,
                    onlineMarketingBusinessNumber)) &&
            (identical(other.businessLicenseImage0, businessLicenseImage0) ||
                const DeepCollectionEquality().equals(
                    other.businessLicenseImage0, businessLicenseImage0)) &&
            (identical(other.businessLicenseImage1, businessLicenseImage1) ||
                const DeepCollectionEquality().equals(
                    other.businessLicenseImage1, businessLicenseImage1)) &&
            (identical(
                other.artiketPlaceOfShipmentName, artiketPlaceOfShipmentName) ||
                const DeepCollectionEquality().equals(
                    other.artiketPlaceOfShipmentName,
                    artiketPlaceOfShipmentName)) &&
            (identical(other.artiketPlaceOfShipment, artiketPlaceOfShipment) ||
                const DeepCollectionEquality().equals(
                    other.artiketPlaceOfShipment, artiketPlaceOfShipment)) &&
            (identical(other.artiketPlaceOfShipmentNumber0,
                artiketPlaceOfShipmentNumber0) ||
                const DeepCollectionEquality().equals(
                    other.artiketPlaceOfShipmentNumber0,
                    artiketPlaceOfShipmentNumber0)) &&
            (identical(other.artiketPlaceOfShipmentNumber1,
                artiketPlaceOfShipmentNumber1) ||
                const DeepCollectionEquality().equals(
                    other.artiketPlaceOfShipmentNumber1,
                    artiketPlaceOfShipmentNumber1)) &&
            (identical(other.refundAddressName, refundAddressName) ||
                const DeepCollectionEquality().equals(
                    other.refundAddressName, refundAddressName)) &&
            (identical(other.refundAddress, refundAddress) ||
                const DeepCollectionEquality().equals(
                    other.refundAddress, refundAddress)) &&
            (identical(other.refundNumber0, refundNumber0) ||
                const DeepCollectionEquality().equals(
                    other.refundNumber0, refundNumber0)) &&
            (identical(other.refundNumber1, refundNumber1) ||
                const DeepCollectionEquality().equals(
                    other.refundNumber1, refundNumber1)) &&
            (identical(other.userBank, userBank) ||
                const DeepCollectionEquality().equals(
                    other.userBank, userBank)) &&
            (identical(other.userAccountName, userAccountName) ||
                const DeepCollectionEquality().equals(other.userAccountName,
                    userAccountName)) &&
            (identical(other.userAccountNumber, userAccountNumber) ||
                const DeepCollectionEquality().equals(other.userAccountNumber,
                    userAccountNumber)) &&
            (identical(other.userAccountImage, userAccountImage) ||
                const DeepCollectionEquality().equals(
                    other.userAccountImage, userAccountImage)) &&
            (identical(other.usernameUsed, usernameUsed) ||
                const DeepCollectionEquality().equals(
                    other.usernameUsed, usernameUsed)) &&
            (identical(other.usernameUsedAt, usernameUsedAt) ||
                const DeepCollectionEquality().equals(
                    other.usernameUsedAt, usernameUsedAt)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emailValid, emailValid) ||
                const DeepCollectionEquality().equals(
                    other.emailValid, emailValid)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.phoneValid, phoneValid) ||
                const DeepCollectionEquality().equals(
                    other.phoneValid, phoneValid)) &&
            (identical(other.userPhone, userPhone) ||
                const DeepCollectionEquality().equals(
                    other.userPhone, userPhone)) &&
            (identical(other.userFirstName, userFirstName) ||
                const DeepCollectionEquality().equals(
                    other.userFirstName, userFirstName)) &&
            (identical(other.userLastName, userLastName) ||
                const DeepCollectionEquality().equals(
                    other.userLastName, userLastName)) &&
            (identical(other.userNickname, userNickname) ||
                const DeepCollectionEquality().equals(
                    other.userNickname, userNickname)) &&
            (identical(other.userBirth, userBirth) ||
                const DeepCollectionEquality().equals(
                    other.userBirth, userBirth)) &&
            (identical(other.userDialCode, userDialCode) ||
                const DeepCollectionEquality().equals(
                    other.userDialCode, userDialCode)) &&
            (identical(other.userIsoCode, userIsoCode) ||
                const DeepCollectionEquality().equals(
                    other.userIsoCode, userIsoCode)) &&
            (identical(other.profileImage, profileImage) ||
                const DeepCollectionEquality().equals(
                    other.profileImage, profileImage)) &&
            (identical(other.profileBio, profileBio) ||
                const DeepCollectionEquality().equals(
                    other.profileBio, profileBio)) &&
            (identical(other.roleType, roleType) ||
                const DeepCollectionEquality().equals(
                    other.roleType, roleType)) &&
            (identical(other.roleLevel, roleLevel) ||
                const DeepCollectionEquality().equals(
                    other.roleLevel, roleLevel)) &&
            (identical(other.geoLatitude, geoLatitude) ||
                const DeepCollectionEquality().equals(
                    other.geoLatitude, geoLatitude)) &&
            (identical(other.geoLongitude, geoLongitude) ||
                const DeepCollectionEquality().equals(
                    other.geoLongitude, geoLongitude)) &&
            (identical(other.timezone, timezone) ||
                const DeepCollectionEquality().equals(
                    other.timezone, timezone)) &&
            (identical(other.blockedIssue, blockedIssue) ||
                const DeepCollectionEquality().equals(
                    other.blockedIssue, blockedIssue)) &&
            (identical(other.blocked, blocked) ||
                const DeepCollectionEquality().equals(
                    other.blocked, blocked)) &&
            (identical(other.blockedAt, blockedAt) ||
                const DeepCollectionEquality().equals(
                    other.blockedAt, blockedAt)) &&
            (identical(other.agreed, agreed) ||
                const DeepCollectionEquality().equals(other.agreed, agreed)) &&
            (identical(other.agreedAt, agreedAt) ||
                const DeepCollectionEquality().equals(
                    other.agreedAt, agreedAt)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality().equals(
                    other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality().equals(
                    other.resources, resources)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                    other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                    other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality().equals(
                    other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality().equals(
                    other.archivedAt, archivedAt)));
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
  User copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int userId;
  @JsonKey(name: 'access_code', includeIfNull: true, defaultValue: '')
  final String accessCode;
  @JsonKey(name: 'access_expired_at', includeIfNull: true)
  final DateTime? accessExpiredAt;
  @JsonKey(name: 'session_token', includeIfNull: true, defaultValue: '')
  final String? sessionToken;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'status', includeIfNull: true, defaultValue: '')
  final String status;
  @JsonKey(name: 'requested_at', includeIfNull: true)
  final DateTime? requestedAt;
  @JsonKey(name: 'accessed_at', includeIfNull: true)
  final DateTime? accessedAt;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
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
  UserAccessCode copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int? userId;
  @JsonKey(name: 'auth_type', includeIfNull: true, defaultValue: '')
  final String? authType;
  @JsonKey(name: 'auth_id', includeIfNull: true, defaultValue: '')
  final String? authId;
  @JsonKey(name: 'auth_token', includeIfNull: true, defaultValue: '')
  final String? authToken;
  @JsonKey(name: 'auth_expired', includeIfNull: true)
  final DateTime? authExpired;
  @JsonKey(name: 'auth_encryption', includeIfNull: true, defaultValue: '')
  final String? authEncryption;
  @JsonKey(name: 'auth_string', includeIfNull: true, defaultValue: '')
  final String? authString;
  @JsonKey(name: 'auth_reset_token', includeIfNull: true, defaultValue: '')
  final String? authResetToken;
  @JsonKey(name: 'auth_reset_expired', includeIfNull: true)
  final DateTime? authResetExpired;
  @JsonKey(name: 'sns_join', includeIfNull: true)
  final bool snsJoin;
  @JsonKey(name: 'sns_access_token', includeIfNull: true, defaultValue: '')
  final String? snsAccessToken;
  @JsonKey(name: 'sms_code', includeIfNull: true, defaultValue: '')
  final String? smsCode;
  @JsonKey(name: 'sms_expired_at', includeIfNull: true)
  final DateTime? smsExpiredAt;
  @JsonKey(name: 'sms_extras', includeIfNull: true)
  final Object? smsExtras;
  @JsonKey(name: 'email_verify', includeIfNull: true)
  final bool emailVerify;
  @JsonKey(name: 'email_code', includeIfNull: true, defaultValue: '')
  final String? emailCode;
  @JsonKey(name: 'email_expired_at', includeIfNull: true)
  final DateTime? emailExpiredAt;
  @JsonKey(name: 'email_extras', includeIfNull: true)
  final Object? emailExtras;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
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
  UserAuth copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int? userId;
  @JsonKey(name: 'device_id', includeIfNull: true, defaultValue: '')
  final String deviceId;
  @JsonKey(name: 'device_type', includeIfNull: true, defaultValue: '')
  final String? deviceType;
  @JsonKey(name: 'device_name', includeIfNull: true, defaultValue: '')
  final String? deviceName;
  @JsonKey(name: 'device_locale', includeIfNull: true, defaultValue: '')
  final String? deviceLocale;
  @JsonKey(name: 'device_model', includeIfNull: true, defaultValue: '')
  final String? deviceModel;
  @JsonKey(name: 'device_deny', includeIfNull: true)
  final bool? deviceDeny;
  @JsonKey(name: 'device_user_agent', includeIfNull: true, defaultValue: '')
  final String? deviceUserAgent;
  @JsonKey(name: 'os_type', includeIfNull: true, defaultValue: '')
  final String? osType;
  @JsonKey(name: 'os_version', includeIfNull: true, defaultValue: '')
  final String? osVersion;
  @JsonKey(name: 'app_version', includeIfNull: true, defaultValue: '')
  final String? appVersion;
  @JsonKey(name: 'app_push_token', includeIfNull: true, defaultValue: '')
  final String? appPushToken;
  @JsonKey(name: 'geo_latitude', includeIfNull: true)
  final double? geoLatitude;
  @JsonKey(name: 'geo_longitude', includeIfNull: true)
  final double? geoLongitude;
  @JsonKey(name: 'push_allowed', includeIfNull: true)
  final bool? pushAllowed;
  @JsonKey(name: 'push_allowed_at', includeIfNull: true)
  final DateTime? pushAllowedAt;
  @JsonKey(name: 'location_allowed', includeIfNull: true)
  final bool? locationAllowed;
  @JsonKey(name: 'location_allowed_at', includeIfNull: true)
  final DateTime? locationAllowedAt;
  @JsonKey(name: 'lastest_connected_at', includeIfNull: true)
  final DateTime lastestConnectedAt;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
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
  UserDevice copyWith({int? uid,
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

  @JsonKey(name: '_key', includeIfNull: true, defaultValue: '')
  final String key;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int userId;
  @JsonKey(name: 'relation_target', includeIfNull: true, defaultValue: '')
  final String relationTarget;
  @JsonKey(name: 'relation_target_id', includeIfNull: true, defaultValue: '')
  final String relationTargetId;
  @JsonKey(name: 'relation_target_title', includeIfNull: true, defaultValue: '')
  final String relationTargetTitle;
  @JsonKey(name: 'relation_action', includeIfNull: true, defaultValue: '')
  final String relationAction;
  @JsonKey(name: 'relation_content', includeIfNull: true, defaultValue: '')
  final String? relationContent;
  @JsonKey(name: 'linked', includeIfNull: true)
  final bool linked;
  @JsonKey(name: 'linked_at', includeIfNull: true)
  final DateTime? linkedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
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
  UserRelation copyWith({String? key,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int userId;
  @JsonKey(name: 'card_code', includeIfNull: true, defaultValue: '')
  final String cardCode;
  @JsonKey(name: 'card_name', includeIfNull: true, defaultValue: '')
  final String cardName;
  @JsonKey(name: 'card_number', includeIfNull: true, defaultValue: '')
  final String cardNumber;
  @JsonKey(name: 'card_expiration_year', includeIfNull: true, defaultValue: '')
  final String cardExpirationYear;
  @JsonKey(name: 'card_expiration_month', includeIfNull: true, defaultValue: '')
  final String cardExpirationMonth;
  @JsonKey(name: 'card_placeholder_name', includeIfNull: true, defaultValue: '')
  final String? cardPlaceholderName;
  @JsonKey(name: 'card_enc_data', includeIfNull: true, defaultValue: '')
  final String cardEncData;
  @JsonKey(name: 'is_primary', includeIfNull: true)
  final bool isPrimary;
  @JsonKey(name: 'is_primary_at', includeIfNull: true)
  final DateTime? isPrimaryAt;
  @JsonKey(name: 'billing_gateway', includeIfNull: true, defaultValue: '')
  final String? billingGateway;
  @JsonKey(name: 'billing_order_uid', includeIfNull: true, defaultValue: '')
  final String? billingOrderUid;
  @JsonKey(
      name: 'billing_transaction_uid', includeIfNull: true, defaultValue: '')
  final String? billingTransactionUid;
  @JsonKey(name: 'billing_data', includeIfNull: true)
  final Object? billingData;
  @JsonKey(name: 'billing_key', includeIfNull: true, defaultValue: '')
  final String? billingKey;
  @JsonKey(name: 'authorized', includeIfNull: true)
  final bool authorized;
  @JsonKey(name: 'authorized_at', includeIfNull: true)
  final DateTime? authorizedAt;
  @JsonKey(name: 'status', includeIfNull: true, defaultValue: '')
  final String? status;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  Billing copyWith({int? uid,
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
class Expense {
  Expense({
    required this.uid,
    this.storeId,
    this.receiptId,
    this.type,
    this.purpose,
    this.settled,
    this.settledAt,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Expense.fromJson(Map<String, dynamic> json) =>
      _$ExpenseFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'store_id', includeIfNull: true)
  final int? storeId;
  @JsonKey(name: 'receipt_id', includeIfNull: true)
  final int? receiptId;
  @JsonKey(name: 'type', includeIfNull: true, defaultValue: '')
  final String? type;
  @JsonKey(name: 'purpose', includeIfNull: true, defaultValue: '')
  final String? purpose;
  @JsonKey(name: 'settled', includeIfNull: true)
  final bool? settled;
  @JsonKey(name: 'settled_at', includeIfNull: true)
  final DateTime? settledAt;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$ExpenseFromJson;
  static const toJsonFactory = _$ExpenseToJson;

  Map<String, dynamic> toJson() => _$ExpenseToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Expense &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality()
                    .equals(other.storeId, storeId)) &&
            (identical(other.receiptId, receiptId) ||
                const DeepCollectionEquality()
                    .equals(other.receiptId, receiptId)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.purpose, purpose) ||
                const DeepCollectionEquality()
                    .equals(other.purpose, purpose)) &&
            (identical(other.settled, settled) ||
                const DeepCollectionEquality()
                    .equals(other.settled, settled)) &&
            (identical(other.settledAt, settledAt) ||
                const DeepCollectionEquality()
                    .equals(other.settledAt, settledAt)) &&
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
      const DeepCollectionEquality().hash(receiptId) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(purpose) ^
      const DeepCollectionEquality().hash(settled) ^
      const DeepCollectionEquality().hash(settledAt) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $ExpenseExtension on Expense {
  Expense copyWith({int? uid,
    int? storeId,
    int? receiptId,
    String? type,
    String? purpose,
    bool? settled,
    DateTime? settledAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? archived,
    DateTime? archivedAt}) {
    return Expense(
        uid: uid ?? this.uid,
        storeId: storeId ?? this.storeId,
        receiptId: receiptId ?? this.receiptId,
        type: type ?? this.type,
        purpose: purpose ?? this.purpose,
        settled: settled ?? this.settled,
        settledAt: settledAt ?? this.settledAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class Payment {
  Payment({
    required this.uid,
    this.paymentGateway,
    this.paymentMethod,
    this.paymentArea,
    this.paymentFee,
    this.paymentClientId,
    this.paymentClientSecret,
    required this.sortOrder,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'payment_gateway', includeIfNull: true, defaultValue: '')
  final String? paymentGateway;
  @JsonKey(name: 'payment_method', includeIfNull: true, defaultValue: '')
  final String? paymentMethod;
  @JsonKey(name: 'payment_area', includeIfNull: true, defaultValue: '')
  final String? paymentArea;
  @JsonKey(name: 'payment_fee', includeIfNull: true)
  final double? paymentFee;
  @JsonKey(name: 'payment_client_id', includeIfNull: true, defaultValue: '')
  final String? paymentClientId;
  @JsonKey(name: 'payment_client_secret', includeIfNull: true, defaultValue: '')
  final String? paymentClientSecret;
  @JsonKey(name: 'sort_order', includeIfNull: true)
  final int sortOrder;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final Object createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final Object updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
  final Object? archivedAt;
  static const fromJsonFactory = _$PaymentFromJson;
  static const toJsonFactory = _$PaymentToJson;

  Map<String, dynamic> toJson() => _$PaymentToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Payment &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.paymentGateway, paymentGateway) ||
                const DeepCollectionEquality()
                    .equals(other.paymentGateway, paymentGateway)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.paymentArea, paymentArea) ||
                const DeepCollectionEquality()
                    .equals(other.paymentArea, paymentArea)) &&
            (identical(other.paymentFee, paymentFee) ||
                const DeepCollectionEquality()
                    .equals(other.paymentFee, paymentFee)) &&
            (identical(other.paymentClientId, paymentClientId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentClientId, paymentClientId)) &&
            (identical(other.paymentClientSecret, paymentClientSecret) ||
                const DeepCollectionEquality()
                    .equals(other.paymentClientSecret, paymentClientSecret)) &&
            (identical(other.sortOrder, sortOrder) ||
                const DeepCollectionEquality()
                    .equals(other.sortOrder, sortOrder)) &&
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
      const DeepCollectionEquality().hash(paymentGateway) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(paymentArea) ^
      const DeepCollectionEquality().hash(paymentFee) ^
      const DeepCollectionEquality().hash(paymentClientId) ^
      const DeepCollectionEquality().hash(paymentClientSecret) ^
      const DeepCollectionEquality().hash(sortOrder) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $PaymentExtension on Payment {
  Payment copyWith({int? uid,
    String? paymentGateway,
    String? paymentMethod,
    String? paymentArea,
    double? paymentFee,
    String? paymentClientId,
    String? paymentClientSecret,
    int? sortOrder,
    Object? createdAt,
    Object? updatedAt,
    bool? archived,
    Object? archivedAt}) {
    return Payment(
        uid: uid ?? this.uid,
        paymentGateway: paymentGateway ?? this.paymentGateway,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        paymentArea: paymentArea ?? this.paymentArea,
        paymentFee: paymentFee ?? this.paymentFee,
        paymentClientId: paymentClientId ?? this.paymentClientId,
        paymentClientSecret: paymentClientSecret ?? this.paymentClientSecret,
        sortOrder: sortOrder ?? this.sortOrder,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        archived: archived ?? this.archived,
        archivedAt: archivedAt ?? this.archivedAt);
  }
}

@JsonSerializable(explicitToJson: true)
class PrepaidCard {
  PrepaidCard({
    required this.uid,
    this.cardCode,
    this.cardName,
    this.amount,
    this.sellingPrice,
    this.extras,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory PrepaidCard.fromJson(Map<String, dynamic> json) =>
      _$PrepaidCardFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'card_code', includeIfNull: true)
  final int? cardCode;
  @JsonKey(name: 'card_name', includeIfNull: true, defaultValue: '')
  final String? cardName;
  @JsonKey(name: 'amount', includeIfNull: true)
  final double? amount;
  @JsonKey(name: 'selling_price', includeIfNull: true)
  final double? sellingPrice;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
  final DateTime? archivedAt;
  static const fromJsonFactory = _$PrepaidCardFromJson;
  static const toJsonFactory = _$PrepaidCardToJson;

  Map<String, dynamic> toJson() => _$PrepaidCardToJson(this);

  @override
  String toString() => jsonEncode(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PrepaidCard &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.cardCode, cardCode) ||
                const DeepCollectionEquality()
                    .equals(other.cardCode, cardCode)) &&
            (identical(other.cardName, cardName) ||
                const DeepCollectionEquality()
                    .equals(other.cardName, cardName)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.sellingPrice, sellingPrice) ||
                const DeepCollectionEquality()
                    .equals(other.sellingPrice, sellingPrice)) &&
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
      const DeepCollectionEquality().hash(cardCode) ^
      const DeepCollectionEquality().hash(cardName) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(sellingPrice) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $PrepaidCardExtension on PrepaidCard {
  PrepaidCard copyWith({int? uid,
    int? cardCode,
    String? cardName,
    double? amount,
    double? sellingPrice,
    Object? extras,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? archived,
    DateTime? archivedAt}) {
    return PrepaidCard(
        uid: uid ?? this.uid,
        cardCode: cardCode ?? this.cardCode,
        cardName: cardName ?? this.cardName,
        amount: amount ?? this.amount,
        sellingPrice: sellingPrice ?? this.sellingPrice,
        extras: extras ?? this.extras,
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
    this.orderLanguage,
    required this.storeId,
    required this.productId,
    this.productData,
    this.orderer,
    this.billing,
    this.extras,
    this.paymentGateway,
    this.paymentMethod,
    this.paymentHeaders,
    this.paymentRegion,
    this.paymentUnit,
    this.paymentOrigin,
    this.paymentDiscount,
    this.paymentAmount,
    this.paymentTax,
    this.paymentShipping,
    this.paymentFee,
    this.paymentTotal,
    this.baseTid,
    this.extraTid,
    this.transactionType,
    this.transactionTotal,
    this.transactionUid,
    this.transactionData,
    this.transactionAt,
    this.vbankNum,
    this.vbankDate,
    this.vbankName,
    this.ordered,
    this.orderedAt,
    this.paidUnit,
    this.paidExchange,
    this.paidTotal,
    this.paid,
    this.paidAt,
    this.cancelReason,
    this.cancelReasonDetail,
    this.cancelled,
    this.cancelledAt,
    this.refundUnit,
    this.refundTotal,
    this.refunded,
    this.refundedAt,
    this.settlementTotal,
    this.settled,
    this.settledAt,
    this.status,
    required this.createdAt,
    required this.updatedAt,
    this.archived,
    this.archivedAt,
  });

  factory Receipt.fromJson(Map<String, dynamic> json) =>
      _$ReceiptFromJson(json);

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int userId;
  @JsonKey(name: 'order_uid', includeIfNull: true, defaultValue: '')
  final String orderUid;
  @JsonKey(name: 'order_language', includeIfNull: true, defaultValue: '')
  final String? orderLanguage;
  @JsonKey(name: 'store_id', includeIfNull: true)
  final int storeId;
  @JsonKey(name: 'product_id', includeIfNull: true)
  final int productId;
  @JsonKey(name: 'product_data', includeIfNull: true)
  final Object? productData;
  @JsonKey(name: 'orderer', includeIfNull: true)
  final Object? orderer;
  @JsonKey(name: 'billing', includeIfNull: true)
  final Object? billing;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'payment_gateway', includeIfNull: true, defaultValue: '')
  final String? paymentGateway;
  @JsonKey(name: 'payment_method', includeIfNull: true, defaultValue: '')
  final String? paymentMethod;
  @JsonKey(name: 'payment_headers', includeIfNull: true)
  final Object? paymentHeaders;
  @JsonKey(name: 'payment_region', includeIfNull: true, defaultValue: '')
  final String? paymentRegion;
  @JsonKey(name: 'payment_unit', includeIfNull: true, defaultValue: '')
  final String? paymentUnit;
  @JsonKey(name: 'payment_origin', includeIfNull: true)
  final double? paymentOrigin;
  @JsonKey(name: 'payment_discount', includeIfNull: true)
  final double? paymentDiscount;
  @JsonKey(name: 'payment_amount', includeIfNull: true)
  final double? paymentAmount;
  @JsonKey(name: 'payment_tax', includeIfNull: true)
  final double? paymentTax;
  @JsonKey(name: 'payment_shipping', includeIfNull: true)
  final double? paymentShipping;
  @JsonKey(name: 'payment_fee', includeIfNull: true)
  final double? paymentFee;
  @JsonKey(name: 'payment_total', includeIfNull: true)
  final double? paymentTotal;
  @JsonKey(name: 'base_tid', includeIfNull: true)
  final int? baseTid;
  @JsonKey(name: 'extra_tid', includeIfNull: true)
  final int? extraTid;
  @JsonKey(name: 'transaction_type', includeIfNull: true, defaultValue: '')
  final String? transactionType;
  @JsonKey(name: 'transaction_total', includeIfNull: true)
  final double? transactionTotal;
  @JsonKey(name: 'transaction_uid', includeIfNull: true, defaultValue: '')
  final String? transactionUid;
  @JsonKey(name: 'transaction_data', includeIfNull: true, defaultValue: '')
  final String? transactionData;
  @JsonKey(name: 'transaction_at', includeIfNull: true)
  final DateTime? transactionAt;
  @JsonKey(name: 'vbank_num', includeIfNull: true, defaultValue: '')
  final String? vbankNum;
  @JsonKey(name: 'vbank_date', includeIfNull: true, defaultValue: '')
  final String? vbankDate;
  @JsonKey(name: 'vbank_name', includeIfNull: true, defaultValue: '')
  final String? vbankName;
  @JsonKey(name: 'ordered', includeIfNull: true)
  final bool? ordered;
  @JsonKey(name: 'ordered_at', includeIfNull: true)
  final DateTime? orderedAt;
  @JsonKey(name: 'paid_unit', includeIfNull: true, defaultValue: '')
  final String? paidUnit;
  @JsonKey(name: 'paid_exchange', includeIfNull: true)
  final double? paidExchange;
  @JsonKey(name: 'paid_total', includeIfNull: true)
  final double? paidTotal;
  @JsonKey(name: 'paid', includeIfNull: true)
  final bool? paid;
  @JsonKey(name: 'paid_at', includeIfNull: true)
  final DateTime? paidAt;
  @JsonKey(name: 'cancel_reason', includeIfNull: true, defaultValue: '')
  final String? cancelReason;
  @JsonKey(name: 'cancel_reason_detail', includeIfNull: true, defaultValue: '')
  final String? cancelReasonDetail;
  @JsonKey(name: 'cancelled', includeIfNull: true)
  final bool? cancelled;
  @JsonKey(name: 'cancelled_at', includeIfNull: true)
  final DateTime? cancelledAt;
  @JsonKey(name: 'refund_unit', includeIfNull: true, defaultValue: '')
  final String? refundUnit;
  @JsonKey(name: 'refund_total', includeIfNull: true)
  final double? refundTotal;
  @JsonKey(name: 'refunded', includeIfNull: true)
  final bool? refunded;
  @JsonKey(name: 'refunded_at', includeIfNull: true)
  final DateTime? refundedAt;
  @JsonKey(name: 'settlement_total', includeIfNull: true)
  final double? settlementTotal;
  @JsonKey(name: 'settled', includeIfNull: true)
  final bool? settled;
  @JsonKey(name: 'settled_at', includeIfNull: true)
  final DateTime? settledAt;
  @JsonKey(name: 'status', includeIfNull: true, defaultValue: '')
  final String? status;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
            (identical(other.orderLanguage, orderLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.orderLanguage, orderLanguage)) &&
            (identical(other.storeId, storeId) ||
                const DeepCollectionEquality()
                    .equals(other.storeId, storeId)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.productData, productData) ||
                const DeepCollectionEquality()
                    .equals(other.productData, productData)) &&
            (identical(other.orderer, orderer) ||
                const DeepCollectionEquality()
                    .equals(other.orderer, orderer)) &&
            (identical(other.billing, billing) ||
                const DeepCollectionEquality()
                    .equals(other.billing, billing)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.paymentGateway, paymentGateway) ||
                const DeepCollectionEquality()
                    .equals(other.paymentGateway, paymentGateway)) &&
            (identical(other.paymentMethod, paymentMethod) ||
                const DeepCollectionEquality()
                    .equals(other.paymentMethod, paymentMethod)) &&
            (identical(other.paymentHeaders, paymentHeaders) ||
                const DeepCollectionEquality()
                    .equals(other.paymentHeaders, paymentHeaders)) &&
            (identical(other.paymentRegion, paymentRegion) ||
                const DeepCollectionEquality()
                    .equals(other.paymentRegion, paymentRegion)) &&
            (identical(other.paymentUnit, paymentUnit) ||
                const DeepCollectionEquality()
                    .equals(other.paymentUnit, paymentUnit)) &&
            (identical(other.paymentOrigin, paymentOrigin) ||
                const DeepCollectionEquality()
                    .equals(other.paymentOrigin, paymentOrigin)) &&
            (identical(other.paymentDiscount, paymentDiscount) ||
                const DeepCollectionEquality()
                    .equals(other.paymentDiscount, paymentDiscount)) &&
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
            (identical(other.baseTid, baseTid) ||
                const DeepCollectionEquality()
                    .equals(other.baseTid, baseTid)) &&
            (identical(other.extraTid, extraTid) ||
                const DeepCollectionEquality().equals(
                    other.extraTid, extraTid)) &&
            (identical(other.transactionType, transactionType) ||
                const DeepCollectionEquality().equals(
                    other.transactionType, transactionType)) &&
            (identical(other.transactionTotal, transactionTotal) ||
                const DeepCollectionEquality().equals(
                    other.transactionTotal, transactionTotal)) &&
            (identical(other.transactionUid, transactionUid) ||
                const DeepCollectionEquality().equals(
                    other.transactionUid, transactionUid)) &&
            (identical(other.transactionData, transactionData) ||
                const DeepCollectionEquality().equals(
                    other.transactionData, transactionData)) &&
            (identical(other.transactionAt, transactionAt) ||
                const DeepCollectionEquality().equals(
                    other.transactionAt, transactionAt)) &&
            (identical(other.vbankNum, vbankNum) ||
                const DeepCollectionEquality().equals(
                    other.vbankNum, vbankNum)) &&
            (identical(other.vbankDate, vbankDate) ||
                const DeepCollectionEquality().equals(
                    other.vbankDate, vbankDate)) &&
            (identical(other.vbankName, vbankName) ||
                const DeepCollectionEquality().equals(
                    other.vbankName, vbankName)) &&
            (identical(other.ordered, ordered) ||
                const DeepCollectionEquality().equals(
                    other.ordered, ordered)) &&
            (identical(other.orderedAt, orderedAt) ||
                const DeepCollectionEquality().equals(
                    other.orderedAt, orderedAt)) &&
            (identical(other.paidUnit, paidUnit) ||
                const DeepCollectionEquality().equals(
                    other.paidUnit, paidUnit)) &&
            (identical(other.paidExchange, paidExchange) ||
                const DeepCollectionEquality().equals(
                    other.paidExchange, paidExchange)) &&
            (identical(other.paidTotal, paidTotal) ||
                const DeepCollectionEquality().equals(
                    other.paidTotal, paidTotal)) &&
            (identical(other.paid, paid) ||
                const DeepCollectionEquality().equals(other.paid, paid)) &&
            (identical(other.paidAt, paidAt) ||
                const DeepCollectionEquality().equals(other.paidAt, paidAt)) &&
            (identical(other.cancelReason, cancelReason) ||
                const DeepCollectionEquality().equals(
                    other.cancelReason, cancelReason)) &&
            (identical(other.cancelReasonDetail, cancelReasonDetail) ||
                const DeepCollectionEquality().equals(
                    other.cancelReasonDetail, cancelReasonDetail)) &&
            (identical(other.cancelled, cancelled) ||
                const DeepCollectionEquality().equals(
                    other.cancelled, cancelled)) &&
            (identical(other.cancelledAt, cancelledAt) ||
                const DeepCollectionEquality().equals(
                    other.cancelledAt, cancelledAt)) &&
            (identical(other.refundUnit, refundUnit) ||
                const DeepCollectionEquality().equals(
                    other.refundUnit, refundUnit)) &&
            (identical(other.refundTotal, refundTotal) ||
                const DeepCollectionEquality().equals(
                    other.refundTotal, refundTotal)) &&
            (identical(other.refunded, refunded) ||
                const DeepCollectionEquality().equals(
                    other.refunded, refunded)) &&
            (identical(other.refundedAt, refundedAt) ||
                const DeepCollectionEquality().equals(
                    other.refundedAt, refundedAt)) &&
            (identical(other.settlementTotal, settlementTotal) ||
                const DeepCollectionEquality().equals(
                    other.settlementTotal, settlementTotal)) &&
            (identical(other.settled, settled) ||
                const DeepCollectionEquality().equals(
                    other.settled, settled)) &&
            (identical(other.settledAt, settledAt) ||
                const DeepCollectionEquality().equals(
                    other.settledAt, settledAt)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                    other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                    other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality().equals(
                    other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality().equals(
                    other.archivedAt, archivedAt)));
  }

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(orderUid) ^
      const DeepCollectionEquality().hash(orderLanguage) ^
      const DeepCollectionEquality().hash(storeId) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(productData) ^
      const DeepCollectionEquality().hash(orderer) ^
      const DeepCollectionEquality().hash(billing) ^
      const DeepCollectionEquality().hash(extras) ^
      const DeepCollectionEquality().hash(paymentGateway) ^
      const DeepCollectionEquality().hash(paymentMethod) ^
      const DeepCollectionEquality().hash(paymentHeaders) ^
      const DeepCollectionEquality().hash(paymentRegion) ^
      const DeepCollectionEquality().hash(paymentUnit) ^
      const DeepCollectionEquality().hash(paymentOrigin) ^
      const DeepCollectionEquality().hash(paymentDiscount) ^
      const DeepCollectionEquality().hash(paymentAmount) ^
      const DeepCollectionEquality().hash(paymentTax) ^
      const DeepCollectionEquality().hash(paymentShipping) ^
      const DeepCollectionEquality().hash(paymentFee) ^
      const DeepCollectionEquality().hash(paymentTotal) ^
      const DeepCollectionEquality().hash(baseTid) ^
      const DeepCollectionEquality().hash(extraTid) ^
      const DeepCollectionEquality().hash(transactionType) ^
      const DeepCollectionEquality().hash(transactionTotal) ^
      const DeepCollectionEquality().hash(transactionUid) ^
      const DeepCollectionEquality().hash(transactionData) ^
      const DeepCollectionEquality().hash(transactionAt) ^
      const DeepCollectionEquality().hash(vbankNum) ^
      const DeepCollectionEquality().hash(vbankDate) ^
      const DeepCollectionEquality().hash(vbankName) ^
      const DeepCollectionEquality().hash(ordered) ^
      const DeepCollectionEquality().hash(orderedAt) ^
      const DeepCollectionEquality().hash(paidUnit) ^
      const DeepCollectionEquality().hash(paidExchange) ^
      const DeepCollectionEquality().hash(paidTotal) ^
      const DeepCollectionEquality().hash(paid) ^
      const DeepCollectionEquality().hash(paidAt) ^
      const DeepCollectionEquality().hash(cancelReason) ^
      const DeepCollectionEquality().hash(cancelReasonDetail) ^
      const DeepCollectionEquality().hash(cancelled) ^
      const DeepCollectionEquality().hash(cancelledAt) ^
      const DeepCollectionEquality().hash(refundUnit) ^
      const DeepCollectionEquality().hash(refundTotal) ^
      const DeepCollectionEquality().hash(refunded) ^
      const DeepCollectionEquality().hash(refundedAt) ^
      const DeepCollectionEquality().hash(settlementTotal) ^
      const DeepCollectionEquality().hash(settled) ^
      const DeepCollectionEquality().hash(settledAt) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(archived) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      runtimeType.hashCode;
}

extension $ReceiptExtension on Receipt {
  Receipt copyWith({int? uid,
    int? userId,
    String? orderUid,
    String? orderLanguage,
    int? storeId,
    int? productId,
    Object? productData,
    Object? orderer,
    Object? billing,
    Object? extras,
    String? paymentGateway,
    String? paymentMethod,
    Object? paymentHeaders,
    String? paymentRegion,
    String? paymentUnit,
    double? paymentOrigin,
    double? paymentDiscount,
    double? paymentAmount,
    double? paymentTax,
    double? paymentShipping,
    double? paymentFee,
    double? paymentTotal,
    int? baseTid,
    int? extraTid,
    String? transactionType,
    double? transactionTotal,
    String? transactionUid,
    String? transactionData,
    DateTime? transactionAt,
    String? vbankNum,
    String? vbankDate,
    String? vbankName,
    bool? ordered,
    DateTime? orderedAt,
    String? paidUnit,
    double? paidExchange,
    double? paidTotal,
    bool? paid,
    DateTime? paidAt,
    String? cancelReason,
    String? cancelReasonDetail,
    bool? cancelled,
    DateTime? cancelledAt,
    String? refundUnit,
    double? refundTotal,
    bool? refunded,
    DateTime? refundedAt,
    double? settlementTotal,
    bool? settled,
    DateTime? settledAt,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? archived,
    DateTime? archivedAt}) {
    return Receipt(
        uid: uid ?? this.uid,
        userId: userId ?? this.userId,
        orderUid: orderUid ?? this.orderUid,
        orderLanguage: orderLanguage ?? this.orderLanguage,
        storeId: storeId ?? this.storeId,
        productId: productId ?? this.productId,
        productData: productData ?? this.productData,
        orderer: orderer ?? this.orderer,
        billing: billing ?? this.billing,
        extras: extras ?? this.extras,
        paymentGateway: paymentGateway ?? this.paymentGateway,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        paymentHeaders: paymentHeaders ?? this.paymentHeaders,
        paymentRegion: paymentRegion ?? this.paymentRegion,
        paymentUnit: paymentUnit ?? this.paymentUnit,
        paymentOrigin: paymentOrigin ?? this.paymentOrigin,
        paymentDiscount: paymentDiscount ?? this.paymentDiscount,
        paymentAmount: paymentAmount ?? this.paymentAmount,
        paymentTax: paymentTax ?? this.paymentTax,
        paymentShipping: paymentShipping ?? this.paymentShipping,
        paymentFee: paymentFee ?? this.paymentFee,
        paymentTotal: paymentTotal ?? this.paymentTotal,
        baseTid: baseTid ?? this.baseTid,
        extraTid: extraTid ?? this.extraTid,
        transactionType: transactionType ?? this.transactionType,
        transactionTotal: transactionTotal ?? this.transactionTotal,
        transactionUid: transactionUid ?? this.transactionUid,
        transactionData: transactionData ?? this.transactionData,
        transactionAt: transactionAt ?? this.transactionAt,
        vbankNum: vbankNum ?? this.vbankNum,
        vbankDate: vbankDate ?? this.vbankDate,
        vbankName: vbankName ?? this.vbankName,
        ordered: ordered ?? this.ordered,
        orderedAt: orderedAt ?? this.orderedAt,
        paidUnit: paidUnit ?? this.paidUnit,
        paidExchange: paidExchange ?? this.paidExchange,
        paidTotal: paidTotal ?? this.paidTotal,
        paid: paid ?? this.paid,
        paidAt: paidAt ?? this.paidAt,
        cancelReason: cancelReason ?? this.cancelReason,
        cancelReasonDetail: cancelReasonDetail ?? this.cancelReasonDetail,
        cancelled: cancelled ?? this.cancelled,
        cancelledAt: cancelledAt ?? this.cancelledAt,
        refundUnit: refundUnit ?? this.refundUnit,
        refundTotal: refundTotal ?? this.refundTotal,
        refunded: refunded ?? this.refunded,
        refundedAt: refundedAt ?? this.refundedAt,
        settlementTotal: settlementTotal ?? this.settlementTotal,
        settled: settled ?? this.settled,
        settledAt: settledAt ?? this.settledAt,
        status: status ?? this.status,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int userId;
  @JsonKey(name: 'product_id', includeIfNull: true)
  final int productId;
  @JsonKey(name: 'receipt_id', includeIfNull: true)
  final int receiptId;
  @JsonKey(name: 'subscribe_type', includeIfNull: true, defaultValue: '')
  final String subscribeType;
  @JsonKey(name: 'subscribe_issue_type', includeIfNull: true, defaultValue: '')
  final String subscribeIssueType;
  @JsonKey(name: 'subscribe_expired_at', includeIfNull: true)
  final DateTime? subscribeExpiredAt;
  @JsonKey(name: 'issued_at', includeIfNull: true)
  final DateTime? issuedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  Subscription copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int? userId;
  @JsonKey(name: 'transaction_uid', includeIfNull: true, defaultValue: '')
  final String transactionUid;
  @JsonKey(name: 'ref_id', includeIfNull: true, defaultValue: '')
  final String? refId;
  @JsonKey(name: 'type', includeIfNull: true, defaultValue: '')
  final String? type;
  @JsonKey(name: 'paid_total', includeIfNull: true)
  final double? paidTotal;
  @JsonKey(name: 'status', includeIfNull: true, defaultValue: '')
  final String? status;
  @JsonKey(name: 'data', includeIfNull: true)
  final Object? data;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'receipt_id', includeIfNull: true)
  final int? receiptId;
  @JsonKey(name: 'target_id', includeIfNull: true)
  final int? targetId;
  @JsonKey(name: 'transaction_name', includeIfNull: true, defaultValue: '')
  final String? transactionName;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  Transaction copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'post_number', includeIfNull: true, defaultValue: '')
  final String? postNumber;
  @JsonKey(name: 'post_type', includeIfNull: true, defaultValue: '')
  final String? postType;
  @JsonKey(name: 'post_group', includeIfNull: true, defaultValue: '')
  final String? postGroup;
  @JsonKey(name: 'post_parent_target', includeIfNull: true, defaultValue: '')
  final String? postParentTarget;
  @JsonKey(name: 'post_parent_id', includeIfNull: true)
  final int? postParentId;
  @JsonKey(name: 'post_depth', includeIfNull: true)
  final int? postDepth;
  @JsonKey(name: 'post_order', includeIfNull: true)
  final int? postOrder;
  @JsonKey(name: 'post_title', includeIfNull: true, defaultValue: '')
  final String? postTitle;
  @JsonKey(name: 'post_content', includeIfNull: true, defaultValue: '')
  final String? postContent;
  @JsonKey(name: 'post_markdown_used', includeIfNull: true)
  final bool? postMarkdownUsed;
  @JsonKey(name: 'post_markdown', includeIfNull: true, defaultValue: '')
  final String? postMarkdown;
  @JsonKey(name: 'post_summary', includeIfNull: true, defaultValue: '')
  final String? postSummary;
  @JsonKey(name: 'linked_target', includeIfNull: true, defaultValue: '')
  final String? linkedTarget;
  @JsonKey(name: 'linked_target_id', includeIfNull: true, defaultValue: '')
  final String? linkedTargetId;
  @JsonKey(name: 'tags', includeIfNull: true, defaultValue: '')
  final String? tags;
  @JsonKey(name: 'campaign_id', includeIfNull: true)
  final int? campaignId;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int? userId;
  @JsonKey(name: 'user_name', includeIfNull: true, defaultValue: '')
  final String? userName;
  @JsonKey(name: 'user_email', includeIfNull: true, defaultValue: '')
  final String? userEmail;
  @JsonKey(name: 'user_password', includeIfNull: true, defaultValue: '')
  final String? userPassword;
  @JsonKey(name: 'profile_image', includeIfNull: true, defaultValue: '')
  final String? profileImage;
  @JsonKey(name: 'permission', includeIfNull: true)
  final int? permission;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'hidden', includeIfNull: true)
  final bool hidden;
  @JsonKey(name: 'hidden_at', includeIfNull: true)
  final DateTime? hiddenAt;
  @JsonKey(name: 'blocked', includeIfNull: true)
  final bool blocked;
  @JsonKey(name: 'blocked_at', includeIfNull: true)
  final DateTime? blockedAt;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.resourceKey, resourceKey) ||
                const DeepCollectionEquality().equals(
                    other.resourceKey, resourceKey)) &&
            (identical(other.resources, resources) ||
                const DeepCollectionEquality().equals(
                    other.resources, resources)) &&
            (identical(other.hidden, hidden) ||
                const DeepCollectionEquality().equals(other.hidden, hidden)) &&
            (identical(other.hiddenAt, hiddenAt) ||
                const DeepCollectionEquality().equals(
                    other.hiddenAt, hiddenAt)) &&
            (identical(other.blocked, blocked) ||
                const DeepCollectionEquality().equals(
                    other.blocked, blocked)) &&
            (identical(other.blockedAt, blockedAt) ||
                const DeepCollectionEquality().equals(
                    other.blockedAt, blockedAt)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                    other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                    other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality().equals(
                    other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality().equals(
                    other.archivedAt, archivedAt)));
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
  Posts copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'campaign_id', includeIfNull: true)
  final int campaignId;
  @JsonKey(name: 'store_code', includeIfNull: true, defaultValue: '')
  final String storeCode;
  @JsonKey(name: 'product_type', includeIfNull: true, defaultValue: '')
  final String productType;
  @JsonKey(name: 'product_target', includeIfNull: true, defaultValue: '')
  final String productTarget;
  @JsonKey(name: 'product_code', includeIfNull: true, defaultValue: '')
  final String productCode;
  @JsonKey(name: 'product_value_unit', includeIfNull: true, defaultValue: '')
  final String productValueUnit;
  @JsonKey(name: 'product_value', includeIfNull: true)
  final double? productValue;
  @JsonKey(name: 'price_unit', includeIfNull: true, defaultValue: '')
  final String priceUnit;
  @JsonKey(name: 'price_origin', includeIfNull: true)
  final double? priceOrigin;
  @JsonKey(name: 'price', includeIfNull: true)
  final double? price;
  @JsonKey(name: 'product_name', includeIfNull: true, defaultValue: '')
  final String productName;
  @JsonKey(name: 'product_thumbnail', includeIfNull: true, defaultValue: '')
  final String productThumbnail;
  @JsonKey(name: 'stock_amount', includeIfNull: true, defaultValue: '')
  final String stockAmount;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'sort_order', includeIfNull: true)
  final int sortOrder;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  Product copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'resource_type', includeIfNull: true, defaultValue: '')
  final String? resourceType;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resource_tag', includeIfNull: true, defaultValue: '')
  final String? resourceTag;
  @JsonKey(name: 'resource_status', includeIfNull: true, defaultValue: '')
  final String? resourceStatus;
  @JsonKey(name: 'resource_hash', includeIfNull: true, defaultValue: '')
  final String? resourceHash;
  @JsonKey(name: 'resource_url', includeIfNull: true, defaultValue: '')
  final String? resourceUrl;
  @JsonKey(name: 'resource_order', includeIfNull: true)
  final int? resourceOrder;
  @JsonKey(name: 'filetype', includeIfNull: true, defaultValue: '')
  final String? filetype;
  @JsonKey(name: 'filesize', includeIfNull: true)
  final int? filesize;
  @JsonKey(name: 'filename', includeIfNull: true, defaultValue: '')
  final String? filename;
  @JsonKey(name: 'extension', includeIfNull: true, defaultValue: '')
  final String? extension;
  @JsonKey(name: 'natural_width', includeIfNull: true)
  final int? naturalWidth;
  @JsonKey(name: 'natural_height', includeIfNull: true)
  final int? naturalHeight;
  @JsonKey(name: 'uploader', includeIfNull: true, defaultValue: '')
  final String? uploader;
  @JsonKey(name: 'permission', includeIfNull: true)
  final int? permission;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  Resource copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'review_code', includeIfNull: true, defaultValue: '')
  final String? reviewCode;
  @JsonKey(name: 'review_type', includeIfNull: true, defaultValue: '')
  final String? reviewType;
  @JsonKey(name: 'review_desc', includeIfNull: true, defaultValue: '')
  final String? reviewDesc;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
  final DateTime? archivedAt;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
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
  ReviewCategory copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'review_code', includeIfNull: true, defaultValue: '')
  final String reviewCode;
  @JsonKey(name: 'reviewer_account', includeIfNull: true, defaultValue: '')
  final String reviewerAccount;
  @JsonKey(name: 'reviewer_name', includeIfNull: true, defaultValue: '')
  final String reviewerName;
  @JsonKey(name: 'store_id', includeIfNull: true)
  final int? storeId;
  @JsonKey(name: 'seller_id', includeIfNull: true)
  final int? sellerId;
  @JsonKey(name: 'seller_account', includeIfNull: true, defaultValue: '')
  final String sellerAccount;
  @JsonKey(name: 'review_status', includeIfNull: true, defaultValue: '')
  final String reviewStatus;
  @JsonKey(name: 'review_description', includeIfNull: true, defaultValue: '')
  final String? reviewDescription;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  ReviewSeller copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int userId;
  @JsonKey(name: 'bank_owner_name', includeIfNull: true, defaultValue: '')
  final String bankOwnerName;
  @JsonKey(name: 'bank_owner_address', includeIfNull: true, defaultValue: '')
  final String? bankOwnerAddress;
  @JsonKey(name: 'bank_country', includeIfNull: true, defaultValue: '')
  final String bankCountry;
  @JsonKey(name: 'bank_name', includeIfNull: true, defaultValue: '')
  final String bankName;
  @JsonKey(name: 'bank_code', includeIfNull: true, defaultValue: '')
  final String bankCode;
  @JsonKey(name: 'bank_account', includeIfNull: true, defaultValue: '')
  final String bankAccount;
  @JsonKey(name: 'bank_routing', includeIfNull: true, defaultValue: '')
  final String? bankRouting;
  @JsonKey(name: 'bank_swift_code', includeIfNull: true, defaultValue: '')
  final String? bankSwiftCode;
  @JsonKey(name: 'is_primary', includeIfNull: true)
  final bool isPrimary;
  @JsonKey(name: 'is_primary_at', includeIfNull: true)
  final DateTime? isPrimaryAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  BankAccount copyWith({int? uid,
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

  @JsonKey(name: 'code', includeIfNull: true, defaultValue: '')
  final String code;
  @JsonKey(name: 'type', includeIfNull: true, defaultValue: '')
  final String? type;
  @JsonKey(name: 'name', includeIfNull: true, defaultValue: '')
  final String? name;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
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
  BankCode copyWith({String? code,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int userId;
  @JsonKey(name: 'profit_target', includeIfNull: true, defaultValue: '')
  final String? profitTarget;
  @JsonKey(name: 'profit_target_id', includeIfNull: true, defaultValue: '')
  final String? profitTargetId;
  @JsonKey(name: 'profit_rate', includeIfNull: true)
  final double? profitRate;
  @JsonKey(name: 'exchange_rate', includeIfNull: true)
  final double? exchangeRate;
  @JsonKey(name: 'settlement_id', includeIfNull: true)
  final int? settlementId;
  @JsonKey(name: 'settled_date_start', includeIfNull: true, defaultValue: '')
  final String settledDateStart;
  @JsonKey(name: 'settled_date_end', includeIfNull: true, defaultValue: '')
  final String settledDateEnd;
  @JsonKey(name: 'total_count', includeIfNull: true)
  final int totalCount;
  @JsonKey(name: 'total_complete_count', includeIfNull: true)
  final int totalCompleteCount;
  @JsonKey(name: 'total_cancel_count', includeIfNull: true)
  final int totalCancelCount;
  @JsonKey(name: 'total_quantity_small', includeIfNull: true)
  final int? totalQuantitySmall;
  @JsonKey(name: 'total_quantity_big', includeIfNull: true)
  final int? totalQuantityBig;
  @JsonKey(name: 'total_unit', includeIfNull: true, defaultValue: '')
  final String? totalUnit;
  @JsonKey(name: 'total_ordered', includeIfNull: true)
  final double? totalOrdered;
  @JsonKey(name: 'total_cancelled', includeIfNull: true)
  final double? totalCancelled;
  @JsonKey(name: 'total_origin', includeIfNull: true)
  final double? totalOrigin;
  @JsonKey(name: 'total_discount', includeIfNull: true)
  final double? totalDiscount;
  @JsonKey(name: 'total_sales', includeIfNull: true)
  final double? totalSales;
  @JsonKey(name: 'total_payment', includeIfNull: true)
  final double? totalPayment;
  @JsonKey(name: 'total_paid', includeIfNull: true)
  final double? totalPaid;
  @JsonKey(name: 'total_pending', includeIfNull: true)
  final double? totalPending;
  @JsonKey(name: 'total_refunded', includeIfNull: true)
  final double? totalRefunded;
  @JsonKey(name: 'total_payment_fee', includeIfNull: true)
  final double? totalPaymentFee;
  @JsonKey(name: 'total_complete_expense', includeIfNull: true)
  final double? totalCompleteExpense;
  @JsonKey(name: 'total_cancel_expenses', includeIfNull: true)
  final double? totalCancelExpenses;
  @JsonKey(name: 'total_etc_expenses', includeIfNull: true)
  final double? totalEtcExpenses;
  @JsonKey(
      name: 'total_etc_expenses_comment', includeIfNull: true, defaultValue: '')
  final String? totalEtcExpensesComment;
  @JsonKey(name: 'total_expenses', includeIfNull: true)
  final double? totalExpenses;
  @JsonKey(name: 'total_profit', includeIfNull: true)
  final double? totalProfit;
  @JsonKey(name: 'total_fee', includeIfNull: true)
  final double? totalFee;
  @JsonKey(name: 'total_amount', includeIfNull: true)
  final double? totalAmount;
  @JsonKey(name: 'status', includeIfNull: true, defaultValue: '')
  final String? status;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
                const DeepCollectionEquality().equals(
                    other.totalPending, totalPending)) &&
            (identical(other.totalRefunded, totalRefunded) ||
                const DeepCollectionEquality().equals(
                    other.totalRefunded, totalRefunded)) &&
            (identical(other.totalPaymentFee, totalPaymentFee) ||
                const DeepCollectionEquality().equals(
                    other.totalPaymentFee, totalPaymentFee)) &&
            (identical(other.totalCompleteExpense, totalCompleteExpense) ||
                const DeepCollectionEquality().equals(
                    other.totalCompleteExpense, totalCompleteExpense)) &&
            (identical(other.totalCancelExpenses, totalCancelExpenses) ||
                const DeepCollectionEquality().equals(
                    other.totalCancelExpenses, totalCancelExpenses)) &&
            (identical(other.totalEtcExpenses, totalEtcExpenses) ||
                const DeepCollectionEquality().equals(
                    other.totalEtcExpenses, totalEtcExpenses)) &&
            (identical(
                other.totalEtcExpensesComment, totalEtcExpensesComment) ||
                const DeepCollectionEquality().equals(
                    other.totalEtcExpensesComment, totalEtcExpensesComment)) &&
            (identical(other.totalExpenses, totalExpenses) ||
                const DeepCollectionEquality().equals(
                    other.totalExpenses, totalExpenses)) &&
            (identical(other.totalProfit, totalProfit) ||
                const DeepCollectionEquality().equals(
                    other.totalProfit, totalProfit)) &&
            (identical(other.totalFee, totalFee) ||
                const DeepCollectionEquality().equals(
                    other.totalFee, totalFee)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality().equals(
                    other.totalAmount, totalAmount)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                    other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                    other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality().equals(
                    other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality().equals(
                    other.archivedAt, archivedAt)));
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
  Profit copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int userId;
  @JsonKey(name: 'store_id', includeIfNull: true)
  final int? storeId;
  @JsonKey(name: 'settled_date_start', includeIfNull: true, defaultValue: '')
  final String settledDateStart;
  @JsonKey(name: 'settled_date_end', includeIfNull: true, defaultValue: '')
  final String settledDateEnd;
  @JsonKey(name: 'exchange_rate', includeIfNull: true)
  final double? exchangeRate;
  @JsonKey(name: 'total_count', includeIfNull: true)
  final int totalCount;
  @JsonKey(name: 'total_complete_count', includeIfNull: true)
  final int totalCompleteCount;
  @JsonKey(name: 'total_cancel_count', includeIfNull: true)
  final int totalCancelCount;
  @JsonKey(name: 'total_quantity_small', includeIfNull: true)
  final int? totalQuantitySmall;
  @JsonKey(name: 'total_quantity_big', includeIfNull: true)
  final int? totalQuantityBig;
  @JsonKey(name: 'total_unit', includeIfNull: true, defaultValue: '')
  final String? totalUnit;
  @JsonKey(name: 'total_ordered', includeIfNull: true)
  final double? totalOrdered;
  @JsonKey(name: 'total_cancelled', includeIfNull: true)
  final double? totalCancelled;
  @JsonKey(name: 'total_origin', includeIfNull: true)
  final double? totalOrigin;
  @JsonKey(name: 'total_discount', includeIfNull: true)
  final double? totalDiscount;
  @JsonKey(name: 'total_sales', includeIfNull: true)
  final double? totalSales;
  @JsonKey(name: 'total_payment', includeIfNull: true)
  final double? totalPayment;
  @JsonKey(name: 'total_paid', includeIfNull: true)
  final double? totalPaid;
  @JsonKey(name: 'total_pending', includeIfNull: true)
  final double? totalPending;
  @JsonKey(name: 'total_refunded', includeIfNull: true)
  final double? totalRefunded;
  @JsonKey(name: 'total_profit', includeIfNull: true)
  final double? totalProfit;
  @JsonKey(name: 'total_fee', includeIfNull: true)
  final double? totalFee;
  @JsonKey(name: 'total_tax', includeIfNull: true)
  final double? totalTax;
  @JsonKey(name: 'total_amount', includeIfNull: true)
  final double? totalAmount;
  @JsonKey(name: 'total_payment_fee', includeIfNull: true)
  final double? totalPaymentFee;
  @JsonKey(name: 'total_complete_expense', includeIfNull: true)
  final double? totalCompleteExpense;
  @JsonKey(name: 'total_cancel_expenses', includeIfNull: true)
  final double? totalCancelExpenses;
  @JsonKey(name: 'total_etc_expenses', includeIfNull: true)
  final double? totalEtcExpenses;
  @JsonKey(
      name: 'total_etc_expenses_comment', includeIfNull: true, defaultValue: '')
  final String? totalEtcExpensesComment;
  @JsonKey(name: 'total_expenses', includeIfNull: true)
  final double? totalExpenses;
  @JsonKey(name: 'settled_method', includeIfNull: true, defaultValue: '')
  final String? settledMethod;
  @JsonKey(
      name: 'settled_bank_owner_name', includeIfNull: true, defaultValue: '')
  final String? settledBankOwnerName;
  @JsonKey(name: 'settled_bank_name', includeIfNull: true, defaultValue: '')
  final String? settledBankName;
  @JsonKey(name: 'settled_bank_code', includeIfNull: true, defaultValue: '')
  final String? settledBankCode;
  @JsonKey(name: 'settled_bank_account', includeIfNull: true, defaultValue: '')
  final String? settledBankAccount;
  @JsonKey(name: 'settled_unit', includeIfNull: true, defaultValue: '')
  final String? settledUnit;
  @JsonKey(name: 'settled_total', includeIfNull: true)
  final double? settledTotal;
  @JsonKey(name: 'status', includeIfNull: true, defaultValue: '')
  final String? status;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
                const DeepCollectionEquality().equals(
                    other.totalFee, totalFee)) &&
            (identical(other.totalTax, totalTax) ||
                const DeepCollectionEquality().equals(
                    other.totalTax, totalTax)) &&
            (identical(other.totalAmount, totalAmount) ||
                const DeepCollectionEquality().equals(
                    other.totalAmount, totalAmount)) &&
            (identical(other.totalPaymentFee, totalPaymentFee) ||
                const DeepCollectionEquality().equals(
                    other.totalPaymentFee, totalPaymentFee)) &&
            (identical(other.totalCompleteExpense, totalCompleteExpense) ||
                const DeepCollectionEquality().equals(
                    other.totalCompleteExpense, totalCompleteExpense)) &&
            (identical(other.totalCancelExpenses, totalCancelExpenses) ||
                const DeepCollectionEquality().equals(
                    other.totalCancelExpenses, totalCancelExpenses)) &&
            (identical(other.totalEtcExpenses, totalEtcExpenses) ||
                const DeepCollectionEquality().equals(
                    other.totalEtcExpenses, totalEtcExpenses)) &&
            (identical(
                other.totalEtcExpensesComment, totalEtcExpensesComment) ||
                const DeepCollectionEquality().equals(
                    other.totalEtcExpensesComment, totalEtcExpensesComment)) &&
            (identical(other.totalExpenses, totalExpenses) ||
                const DeepCollectionEquality().equals(
                    other.totalExpenses, totalExpenses)) &&
            (identical(other.settledMethod, settledMethod) ||
                const DeepCollectionEquality().equals(
                    other.settledMethod, settledMethod)) &&
            (identical(other.settledBankOwnerName, settledBankOwnerName) ||
                const DeepCollectionEquality().equals(
                    other.settledBankOwnerName, settledBankOwnerName)) &&
            (identical(other.settledBankName, settledBankName) ||
                const DeepCollectionEquality().equals(
                    other.settledBankName, settledBankName)) &&
            (identical(other.settledBankCode, settledBankCode) ||
                const DeepCollectionEquality().equals(
                    other.settledBankCode, settledBankCode)) &&
            (identical(other.settledBankAccount, settledBankAccount) ||
                const DeepCollectionEquality().equals(
                    other.settledBankAccount, settledBankAccount)) &&
            (identical(other.settledUnit, settledUnit) ||
                const DeepCollectionEquality().equals(
                    other.settledUnit, settledUnit)) &&
            (identical(other.settledTotal, settledTotal) ||
                const DeepCollectionEquality().equals(
                    other.settledTotal, settledTotal)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.extras, extras) ||
                const DeepCollectionEquality().equals(other.extras, extras)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                    other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                    other.updatedAt, updatedAt)) &&
            (identical(other.archived, archived) ||
                const DeepCollectionEquality().equals(
                    other.archived, archived)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality().equals(
                    other.archivedAt, archivedAt)));
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
  Settlement copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'sms_provider', includeIfNull: true, defaultValue: '')
  final String smsProvider;
  @JsonKey(name: 'sms_from', includeIfNull: true, defaultValue: '')
  final String smsFrom;
  @JsonKey(name: 'sms_to', includeIfNull: true, defaultValue: '')
  final String smsTo;
  @JsonKey(name: 'sms_message', includeIfNull: true, defaultValue: '')
  final String? smsMessage;
  @JsonKey(name: 'test', includeIfNull: true)
  final bool test;
  @JsonKey(name: 'sent', includeIfNull: true)
  final bool? sent;
  @JsonKey(name: 'sent_result', includeIfNull: true)
  final Object? sentResult;
  @JsonKey(name: 'sent_at', includeIfNull: true)
  final DateTime? sentAt;
  @JsonKey(name: 'request_id', includeIfNull: true, defaultValue: '')
  final String requestId;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
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
  SmsMessage copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int? userId;
  @JsonKey(name: 'email', includeIfNull: true, defaultValue: '')
  final String email;
  @JsonKey(name: 'valid_key', includeIfNull: true, defaultValue: '')
  final String validKey;
  @JsonKey(name: 'valid_type', includeIfNull: true)
  final bool validType;
  @JsonKey(name: 'valid', includeIfNull: true)
  final bool valid;
  @JsonKey(name: 'valid_at', includeIfNull: true)
  final DateTime? validAt;
  @JsonKey(name: 'expired_at', includeIfNull: true)
  final DateTime? expiredAt;
  @JsonKey(name: 'actived', includeIfNull: true)
  final bool actived;
  @JsonKey(name: 'actived_at', includeIfNull: true)
  final DateTime activedAt;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'resource_key', includeIfNull: true, defaultValue: '')
  final String resourceKey;
  @JsonKey(name: 'resources', includeIfNull: true)
  final Object? resources;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  Verify copyWith({int? uid,
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

  @JsonKey(name: 'uid', includeIfNull: true)
  final int uid;
  @JsonKey(name: 'convert_type', includeIfNull: true)
  final bool? convertType;
  @JsonKey(name: 'convert_file', includeIfNull: true, defaultValue: '')
  final String? convertFile;
  @JsonKey(name: 'convert_result', includeIfNull: true)
  final Object? convertResult;
  @JsonKey(name: 'user_id', includeIfNull: true)
  final int? userId;
  @JsonKey(name: 'extras', includeIfNull: true)
  final Object? extras;
  @JsonKey(name: 'created_at', includeIfNull: true)
  final DateTime createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: true)
  final DateTime updatedAt;
  @JsonKey(name: 'archived', includeIfNull: true)
  final bool? archived;
  @JsonKey(name: 'archived_at', includeIfNull: true)
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
  VideoTransCode copyWith({int? uid,
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
