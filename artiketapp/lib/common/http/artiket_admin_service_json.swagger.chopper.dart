//Generated code

part of 'artiket_admin_service_json.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ArtiketAdminServiceJson extends ArtiketAdminServiceJson {
  _$ArtiketAdminServiceJson([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ArtiketAdminServiceJson;

  @override
  Future<Response<BasicResult>> _v1AdminLoginPost(
      {required String? adminId,
      required String? adminPassword,
      String? cacheControl}) {
    final $url = '/v1/admin/login';
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'admin_id': adminId,
      'admin_password': adminPassword
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminVerifyPut(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/verify';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('PUT', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminManagersPost(
      {required String? adminId,
      required String? adminPassword,
      required String? adminType,
      required String? adminName,
      String? adminPosition,
      String? adminDepartment,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/managers';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'admin_id': adminId,
      'admin_password': adminPassword,
      'admin_type': adminType,
      'admin_name': adminName,
      'admin_position': adminPosition,
      'admin_department': adminDepartment
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminManagersGet(
      {required String? page,
      required String? size,
      String? group,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/managers';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'group': group
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminManagersUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/managers/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminManagersUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/managers/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminManagersUidPut(
      {required String? uid,
      String? adminType,
      required String? adminName,
      String? adminPassword,
      String? adminPosition,
      String? adminDepartment,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/managers/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'admin_type': adminType,
      'admin_name': adminName,
      'admin_password': adminPassword,
      'admin_position': adminPosition,
      'admin_department': adminDepartment
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminAnalyticsOverviewGet(
      {required String? page,
      required String? size,
      String? startDate,
      String? endDate,
      String? dateType,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/analytics/overview';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'start_date': startDate,
      'end_date': endDate,
      'date_type': dateType
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminAnalyticsOverviewTotalGet(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/analytics/overview/total';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReportCommentGet(
      {required String? page,
      required String? size,
      String? startDate,
      String? endDate,
      String? dateType,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/report/comment';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'start_date': startDate,
      'end_date': endDate,
      'date_type': dateType
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReportPointGet(
      {String? reportDate, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/report/point';
    final $params = <String, dynamic>{'report_date': reportDate};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReportPostGet(
      {String? reportDate, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/report/post';
    final $params = <String, dynamic>{'report_date': reportDate};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReportVoteGet(
      {required String? page,
      required String? size,
      String? startDate,
      String? endDate,
      String? dateType,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/report/vote';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'start_date': startDate,
      'end_date': endDate,
      'date_type': dateType
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminAppsPost(
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
    final $url = '/v1/admin/apps';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'app_id': appId,
      'app_name': appName,
      'app_os': appOs,
      'app_version': appVersion,
      'app_version_minimum': appVersionMinimum,
      'app_version_review': appVersionReview,
      'app_update_link': appUpdateLink,
      'extras': extras,
      'resource_key': resourceKey,
      'resources': resources
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminAppsGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/apps';
    final $params = <String, dynamic>{'page': page, 'size': size};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminAppsUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/apps/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminAppsUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/apps/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminAppsUidPut(
      {required String? uid,
      required String? appName,
      required String? appVersion,
      required String? appVersionMinimum,
      String? appVersionReview,
      String? extras,
      String? resources,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/apps/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'app_name': appName,
      'app_version': appVersion,
      'app_version_minimum': appVersionMinimum,
      'app_version_review': appVersionReview,
      'extras': extras,
      'resources': resources
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminChannelsPost(
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
    final $url = '/v1/admin/channels';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'name': name,
      'type': type,
      'logo_image': logoImage,
      'cover_image': coverImage,
      'user_id': userId,
      'rules': rules,
      'sort_order': sortOrder,
      'hidden': hidden,
      'blocked': blocked,
      'extras': extras
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminChannelsGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/channels';
    final $params = <String, dynamic>{'page': page, 'size': size};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminChannelsUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/channels/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminChannelsUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/channels/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminChannelsUidPut(
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
    final $url = '/v1/admin/channels/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'user_id': userId,
      'rules': rules,
      'name': name,
      'type': type,
      'logo_image': logoImage,
      'cover_image': coverImage,
      'sort_order': sortOrder,
      'hidden': hidden,
      'blocked': blocked,
      'extras': extras
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminCommentUidBlockPut(
      {required Object? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/comment/${uid}/block';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('PUT', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminCommentPost(
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
    final $url = '/v1/admin/comment';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'comment_provider': commentProvider,
      'comment_target': commentTarget,
      'comment_target_id': commentTargetId,
      'comment_title': commentTitle,
      'comment_content': commentContent,
      'user_id': userId,
      'user_name': userName,
      'user_password': userPassword,
      'extras': extras
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminCommentGet(
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
    final $url = '/v1/admin/comment';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'start_date': startDate,
      'end_date': endDate,
      'filter': filter,
      'keyword': keyword,
      'comment_provider': commentProvider,
      'comment_target': commentTarget,
      'comment_type': commentType,
      'blocked': blocked,
      'archived': archived
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminCommentUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/comment/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminCommentUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/comment/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminCommentUidPickPut(
      {required Object? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/comment/${uid}/pick';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('PUT', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminCommentUidUnblockPut(
      {required Object? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/comment/${uid}/unblock';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('PUT', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminCommentUidUnpickPut(
      {required Object? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/comment/${uid}/unpick';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('PUT', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminCommentsUidPut(
      {required Object? uid,
      required String? commentTarget,
      required Object? commentTargetId,
      String? commentTitle,
      required String? commentContent,
      String? userId,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/comments/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'comment_target': commentTarget,
      'comment_target_id': commentTargetId,
      'comment_title': commentTitle,
      'comment_content': commentContent,
      'user_id': userId,
      'extras': extras
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminContentContentsContentTypePost(
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
    final $url = '/v1/admin/content/contents/${contentType}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'content_group': contentGroup,
      'content_key': contentKey,
      'content_language': contentLanguage,
      'content_title': contentTitle,
      'content_html': contentHtml,
      'resource_key': resourceKey,
      'resources': resources,
      'extras': extras
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminContentContentsContentTypeGet(
      {required String? contentType,
      String? contentGroup,
      required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/content/contents/${contentType}';
    final $params = <String, dynamic>{
      'content_group': contentGroup,
      'page': page,
      'size': size
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminContentContentsContentTypeUidDelete(
      {required String? contentType,
      required String? uid,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/content/contents/${contentType}/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminContentContentsContentTypeUidGet(
      {required String? contentType,
      required String? uid,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/content/contents/${contentType}/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminContentContentsContentTypeUidPut(
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
    final $url = '/v1/admin/content/contents/${contentType}/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'content_group': contentGroup,
      'content_key': contentKey,
      'content_language': contentLanguage,
      'content_title': contentTitle,
      'content_html': contentHtml,
      'resources': resources,
      'extras': extras
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminContentTemplatesPost(
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
    final $url = '/v1/admin/content/templates';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'content_group': contentGroup,
      'content_type': contentType,
      'content_language': contentLanguage,
      'content_title': contentTitle,
      'content_html': contentHtml,
      'resource_key': resourceKey,
      'resources': resources,
      'extras': extras
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminContentTemplatesGet(
      {String? contentGroup,
      String? contentType,
      required String? page,
      required String? size,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/content/templates';
    final $params = <String, dynamic>{
      'content_group': contentGroup,
      'content_type': contentType,
      'page': page,
      'size': size,
      'keyword': keyword
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminContentTemplatesUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/content/templates/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminContentTemplatesUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/content/templates/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminContentTemplatesUidPut(
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
    final $url = '/v1/admin/content/templates/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'content_group': contentGroup,
      'content_type': contentType,
      'content_language': contentLanguage,
      'content_title': contentTitle,
      'content_html': contentHtml,
      'resources': resources,
      'extras': extras
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUserRelationsGet(
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
    final $url = '/v1/admin/user/relations';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'group': group,
      'child': child,
      'filter': filter,
      'keyword': keyword,
      'start_date': startDate,
      'end_date': endDate
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUserAuthUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/user/auth/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUserAuthGet(
      {required String? page,
      required String? size,
      String? group,
      String? filter,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/user/auth';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'group': group,
      'filter': filter,
      'keyword': keyword
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUserDevicesChangePut(
      {required String? userIdOriginal,
      required String? userIdChange,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/user/devices/change';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'user_id_original': userIdOriginal,
      'user_id_change': userIdChange
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUserDevicesPost(
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
    final $url = '/v1/admin/user/devices';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'user_id': userId,
      'device_id': deviceId,
      'device_type': deviceType,
      'device_name': deviceName,
      'device_locale': deviceLocale,
      'device_model': deviceModel,
      'device_deny': deviceDeny,
      'device_user_agent': deviceUserAgent,
      'os_type': osType,
      'os_version': osVersion,
      'app_version': appVersion,
      'app_push_token': appPushToken
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUserDevicesGet(
      {required String? page,
      required String? size,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/user/devices';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'keyword': keyword
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUserDevicesUidUserIdDelete(
      {required String? uid,
      required String? userId,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/user/devices/${uid}/${userId}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUserDevicesUidUserIdGet(
      {required String? uid,
      required String? userId,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/user/devices/${uid}/${userId}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUserDevicesUidPut(
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
    final $url = '/v1/admin/user/devices/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'user_id': userId,
      'device_id': deviceId,
      'device_type': deviceType,
      'device_name': deviceName,
      'device_locale': deviceLocale,
      'device_model': deviceModel,
      'device_deny': deviceDeny,
      'device_user_agent': deviceUserAgent,
      'os_type': osType,
      'os_version': osVersion,
      'app_version': appVersion,
      'app_push_token': appPushToken
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUsersExportsGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/users/exports';
    final $params = <String, dynamic>{'page': page, 'size': size};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUsersUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/users/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUsersGet(
      {required String? page,
      required String? size,
      String? filter,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/users';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'filter': filter,
      'keyword': keyword
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUsersProfilePost(
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
    final $url = '/v1/admin/users/profile';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'account': account,
      'password': password,
      'username_used': usernameUsed,
      'email': email,
      'email_valid': emailValid,
      'phone': phone,
      'phone_valid': phoneValid,
      'user_name': userName,
      'user_email': userEmail,
      'user_phone': userPhone,
      'user_first_name': userFirstName,
      'user_last_name': userLastName,
      'user_nickname': userNickname,
      'user_birth': userBirth,
      'user_gender': userGender,
      'user_dial_code': userDialCode,
      'user_iso_code': userIsoCode,
      'profile_image': profileImage,
      'profile_bio': profileBio,
      'role_type': roleType,
      'role_level': roleLevel,
      'timezone': timezone,
      'blocked_issue': blockedIssue,
      'blocked': blocked,
      'agreed': agreed,
      'memo': memo,
      'extras': extras,
      'resource_key': resourceKey,
      'resources': resources,
      'archived': archived
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUsersProfileGidDelete(
      {required String? gid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/users/profile/${gid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUsersProfileUidPut(
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
    final $url = '/v1/admin/users/profile/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'account': account,
      'username_used': usernameUsed,
      'email': email,
      'email_valid': emailValid,
      'phone': phone,
      'phone_valid': phoneValid,
      'user_name': userName,
      'user_email': userEmail,
      'user_phone': userPhone,
      'user_first_name': userFirstName,
      'user_last_name': userLastName,
      'user_nickname': userNickname,
      'user_birth': userBirth,
      'user_gender': userGender,
      'user_dial_code': userDialCode,
      'user_iso_code': userIsoCode,
      'profile_image': profileImage,
      'profile_bio': profileBio,
      'user_type': userType,
      'role_type': roleType,
      'role_level': roleLevel,
      'timezone': timezone,
      'blocked_issue': blockedIssue,
      'blocked': blocked,
      'agreed': agreed,
      'memo': memo,
      'extras': extras,
      'resource_key': resourceKey,
      'resources': resources,
      'archived': archived
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUsersSearchGet(
      {String? query, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/users/search';
    final $params = <String, dynamic>{'query': query};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminUsersIdTokenPost(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/users/${id}/token';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPaymentsPost(
      {required String? paymentType,
      required String? paymentMethod,
      required String? paymentArea,
      String? paymentClientId,
      String? paymentClientSecret,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/payments';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'payment_type': paymentType,
      'payment_method': paymentMethod,
      'payment_area': paymentArea,
      'payment_client_id': paymentClientId,
      'payment_client_secret': paymentClientSecret
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPaymentsGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/payments';
    final $params = <String, dynamic>{'page': page, 'size': size};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPaymentsIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/payments/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPaymentsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/payments/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPaymentsIdPut(
      {required String? id,
      required String? paymentFee,
      String? paymentClientId,
      String? paymentClientSecret,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/payments/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'payment_fee': paymentFee,
      'payment_client_id': paymentClientId,
      'payment_client_secret': paymentClientSecret
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPaymentEximbayWebhookStatusPost(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/payment/eximbay/webhook/status';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPaymentEximbayWebhookSuccessPost(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/payment/eximbay/webhook/success';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPaymentIamportWebhookArtiketPost(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/payment/iamport/webhook/artiket';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPaymentIamportWebhookPost(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/payment/iamport/webhook';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPaymentIamportWebhookReservePost(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/payment/iamport/webhook/reserve';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPrepaidcardsPost(
      {required String? cardCode,
      required String? cardName,
      required String? amount,
      required String? sellingPrice,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/prepaidcards';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'card_code': cardCode,
      'card_name': cardName,
      'amount': amount,
      'selling_price': sellingPrice,
      'extras': extras
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPrepaidcardsGet(
      {required String? page,
      required String? size,
      String? keyword,
      String? filter,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/prepaidcards';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'keyword': keyword,
      'filter': filter
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPrepaidcardsIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/prepaidcards/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPrepaidcardsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/prepaidcards/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPrepaidcardsIdPut(
      {required String? cardCode,
      required String? cardName,
      required String? amount,
      required String? sellingPrice,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/prepaidcards/:id';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'card_code': cardCode,
      'card_name': cardName,
      'amount': amount,
      'selling_price': sellingPrice,
      'extras': extras
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminTransactionsIdDCancelPut(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/transactions/:id(d+)/cancel';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('PUT', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminTransactionsIdCompletedPost(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/transactions/${id}/completed';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminTransactionsPost(
      {required String? userId,
      String? storeId,
      required String? amount,
      required String? reason,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/transactions';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'user_id': userId,
      'store_id': storeId,
      'amount': amount,
      'reason': reason
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminTransactionsGet(
      {required String? page,
      required String? size,
      String? group,
      String? keyword,
      String? filter,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/transactions';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'group': group,
      'keyword': keyword,
      'filter': filter
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminTransactionsIdRepaymentPost(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/transactions/${id}/repayment';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPostsPost(
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
    final $url = '/v1/admin/posts';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'post_group': postGroup,
      'post_title': postTitle,
      'post_summary': postSummary,
      'post_type': postType,
      'post_content': postContent,
      'post_markdown_used': postMarkdownUsed,
      'post_markdown': postMarkdown,
      'user_name': userName,
      'resource_key': resourceKey,
      'resources': resources,
      'extras': extras,
      'tags': tags,
      'campaign_id': campaignId
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPostsGet(
      {required String? page,
      required String? size,
      String? postGroup,
      String? postType,
      String? cacheControl}) {
    final $url = '/v1/admin/posts';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'post_group': postGroup,
      'post_type': postType
    };
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPostsUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/posts/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPostsUidGet(
      {required String? uid, String? postGroup, String? cacheControl}) {
    final $url = '/v1/admin/posts/${uid}';
    final $params = <String, dynamic>{'post_group': postGroup};
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPostsUidPut(
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
    final $url = '/v1/admin/posts/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'post_group': postGroup,
      'post_title': postTitle,
      'post_type': postType,
      'post_content': postContent,
      'post_markdown_used': postMarkdownUsed,
      'post_markdown': postMarkdown,
      'post_summary': postSummary,
      'user_name': userName,
      'resource_key': resourceKey,
      'resources': resources,
      'extras': extras,
      'tags': tags,
      'campaign_id': campaignId
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminProductsPost(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/products/';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminProductsProductsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/products/products/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminProductsIdPurchasePost(
      {required String? id,
      required String? userId,
      required String? quantity,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/products/${id}/purchase';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'user_id': userId, 'quantity': quantity};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminNotifyNotificationsUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/notify/notifications/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminNotifyNotificationsGet(
      {required String? page,
      required String? size,
      String? group,
      String? userId,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/notify/notifications';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'group': group,
      'user_id': userId
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPushSendAllPost(
      {String? title,
      required String? message,
      String? unableTopic,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/push/send/all';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'title': title,
      'message': message,
      'unable_topic': unableTopic
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPushSendPost(
      {String? title,
      required String? message,
      String? extras,
      required String? userIds,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/push/send';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'title': title,
      'message': message,
      'extras': extras,
      'user_ids': userIds
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPushSendTokenPost(
      {required String? pushToken,
      required String? message,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/push/send/token';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'push_token': pushToken,
      'message': message,
      'extras': extras
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPushSubscribeAllPost(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/push/subscribe/all';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminPushUnsubscribeAllPost(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/push/unsubscribe/all';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminResourcesUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/resources/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminResourcesUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/resources/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminResourcesGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/resources';
    final $params = <String, dynamic>{'page': page, 'size': size};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminResourcesUploadPost(
      {required String? key,
      required String? tag,
      required List<String>? file,
      String? isPrivate,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/resources/upload';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'key': key,
      'tag': tag,
      'file': file,
      'is_private': isPrivate
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReviewsCodePost(
      {required String? code,
      required String? type,
      required String? desc,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/reviews/code';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'code': code, 'type': type, 'desc': desc};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReviewsCodeGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/reviews/code';
    final $params = <String, dynamic>{'page': page, 'size': size};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReviewsCodeUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/reviews/code/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReviewsCodeUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/reviews/code/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReviewsCodeUidPut(
      {required String? uid,
      required String? code,
      required String? type,
      required String? desc,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/reviews/code/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'code': code, 'type': type, 'desc': desc};
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReviewsIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/reviews/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReviewsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/reviews/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReviewsIdPut(
      {required String? id,
      Object? rates,
      String? imageUrl,
      String? message,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/reviews/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'rates': rates,
      'image_url': imageUrl,
      'message': message
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReviewsGet(
      {required Object? targetId,
      required String? targetType,
      required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/reviews';
    final $params = <String, dynamic>{
      'target_id': targetId,
      'target_type': targetType,
      'page': page,
      'size': size
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSellerReviewReviewCodeGet(
      {required Object? reviewCode,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/seller/review/${reviewCode}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSellerReviewReviewCodePut(
      {required Object? reviewCode,
      required Object? reviewStatus,
      Object? reviewDescription,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/seller/review/${reviewCode}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'review_status': reviewStatus,
      'review_description': reviewDescription
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSellerReviewGet(
      {required Object? reviewStates,
      Object? searchKey,
      Object? searchOption,
      required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/seller/review';
    final $params = <String, dynamic>{
      'review_states': reviewStates,
      'search_key': searchKey,
      'search_option': searchOption,
      'page': page,
      'size': size
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminBankCodesGet(
      {required String? page,
      required String? size,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/bank/codes';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'keyword': keyword
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsLatestGet(
      {String? storeId, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/settlements/latest';
    final $params = <String, dynamic>{'store_id': storeId};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminBankAccountPost(
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
    final $url = '/v1/admin/bank/account';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'user_id': userId,
      'bank_owner_name': bankOwnerName,
      'bank_owner_address': bankOwnerAddress,
      'bank_country': bankCountry,
      'bank_name': bankName,
      'bank_code': bankCode,
      'bank_account': bankAccount,
      'bank_routing': bankRouting,
      'bank_swift_code': bankSwiftCode,
      'is_primary': isPrimary
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminBankAccountGet(
      {required String? page,
      required String? size,
      String? userId,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/bank/account';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'user_id': userId
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminBankAccountIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/bank/account/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminBankAccountIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/bank/account/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminBankAccountIdPut(
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
    final $url = '/v1/admin/bank/account/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'bank_owner_name': bankOwnerName,
      'bank_owner_address': bankOwnerAddress,
      'bank_country': bankCountry,
      'bank_name': bankName,
      'bank_code': bankCode,
      'bank_account': bankAccount,
      'bank_routing': bankRouting,
      'bank_swift_code': bankSwiftCode,
      'is_primary': isPrimary
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminBankCodeGet(
      {required String? code, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/bank/${code}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsBatchCancelPut(
      {required dynamic ids, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/settlements/batch/cancel';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'ids': ids};
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsBatchCompletePut(
      {required dynamic ids, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/settlements/batch/complete';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'ids': ids};
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsBatchDeleteDelete(
      {required dynamic ids, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/settlements/batch/delete';
    final $params = <String, dynamic>{'ids': ids};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminProfitsBatchNewPost(
      {required dynamic storeIds,
      required String? dateStart,
      required String? dateEnd,
      String? exchangeRate,
      String? profitRate,
      String? expensesEtc,
      String? expensesEtcComment,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/profits/batch/new';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'store_ids': storeIds,
      'date_start': dateStart,
      'date_end': dateEnd,
      'exchange_rate': exchangeRate,
      'profit_rate': profitRate,
      'expenses_etc': expensesEtc,
      'expenses_etc_comment': expensesEtcComment
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsBatchNewPost(
      {required dynamic storeIds,
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
    final $url = '/v1/admin/settlements/batch/new';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'store_ids': storeIds,
      'date_start': dateStart,
      'date_end': dateEnd,
      'exchange_rate': exchangeRate,
      'profit_rate': profitRate,
      'expenses_per_order': expensesPerOrder,
      'expenses_per_order_comment': expensesPerOrderComment,
      'expenses_per_cancel': expensesPerCancel,
      'expenses_per_cancel_comment': expensesPerCancelComment,
      'expenses_etc': expensesEtc,
      'expenses_etc_comment': expensesEtcComment
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsBatchRequestPut(
      {required dynamic ids, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/settlements/batch/request';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'ids': ids};
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsBatchSendPost(
      {required dynamic ids, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/settlements/batch/send';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'ids': ids};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsIdCancelPut(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/settlements/${id}/cancel';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('PUT', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsIdCompletePut(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/settlements/${id}/complete';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('PUT', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/settlements/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/settlements/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsExportGet(
      {String? dateStart,
      String? dateEnd,
      String? group,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/settlements/export';
    final $params = <String, dynamic>{
      'date_start': dateStart,
      'date_end': dateEnd,
      'group': group
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsGet(
      {required String? page,
      required String? size,
      String? group,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/settlements';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'group': group,
      'keyword': keyword
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminProfitsNewPost(
      {required Object? storeId,
      required String? dateStart,
      required String? dateEnd,
      String? exchangeRate,
      String? profitRate,
      String? expensesEtc,
      String? expensesEtcComment,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/profits/new';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'store_id': storeId,
      'date_start': dateStart,
      'date_end': dateEnd,
      'exchange_rate': exchangeRate,
      'profit_rate': profitRate,
      'expenses_etc': expensesEtc,
      'expenses_etc_comment': expensesEtcComment
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsNewPost(
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
    final $url = '/v1/admin/settlements/new';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'store_id': storeId,
      'date_start': dateStart,
      'date_end': dateEnd,
      'exchange_rate': exchangeRate,
      'profit_rate': profitRate,
      'expenses_per_order': expensesPerOrder,
      'expenses_per_order_comment': expensesPerOrderComment,
      'expenses_per_cancel': expensesPerCancel,
      'expenses_per_cancel_comment': expensesPerCancelComment,
      'expenses_etc': expensesEtc,
      'expenses_etc_comment': expensesEtcComment
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminReceiptsGet(
      {required String? dateStart,
      required String? dateEnd,
      String? storeId,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/receipts';
    final $params = <String, dynamic>{
      'date_start': dateStart,
      'date_end': dateEnd,
      'store_id': storeId
    };
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsRequestBulkGet(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/settlements/request/bulk';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsIdRequestPut(
      {required String? id,
      required String? bankOwnerName,
      required String? bankName,
      required String? bankCode,
      required String? bankAccount,
      required String? settledUnit,
      required Object? settledTotal,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/settlements/${id}/request';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'bank_owner_name': bankOwnerName,
      'bank_name': bankName,
      'bank_code': bankCode,
      'bank_account': bankAccount,
      'settled_unit': settledUnit,
      'settled_total': settledTotal
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSettlementsIdDSendPost(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/settlements/:id(d+)/send';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSmsMessagesIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/sms/messages/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSmsMessagesIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/admin/sms/messages/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSmsMessagesGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/admin/sms/messages';
    final $params = <String, dynamic>{'page': page, 'size': size};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AdminSmsSendPost(
      {required String? phone,
      required String? message,
      Object? extras,
      bool? test,
      String? cacheControl}) {
    final $url = '/v1/admin/sms/send';
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'phone': phone,
      'message': message,
      'extras': extras,
      'test': test
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }
}
