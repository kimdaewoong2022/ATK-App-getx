//Generated code

part of 'artiket_service_json.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$ArtiketServiceJson extends ArtiketServiceJson {
  _$ArtiketServiceJson([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ArtiketServiceJson;

  @override
  Future<Response<BasicResult>> _v1AddressPost(
      {required String? name,
      required String? phone,
      required String? states,
      required String? city,
      required String? address1,
      required String? address2,
      required String? zipcode,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/address';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'name': name,
      'phone': phone,
      'states': states,
      'city': city,
      'address1': address1,
      'address2': address2,
      'zipcode': zipcode
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AddressGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/address';
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
  Future<Response<BasicResult>> _v1AddressUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/address/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AddressUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/address/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AddressUidPut(
      {required String? uid,
      String? name,
      String? phone,
      String? states,
      String? city,
      String? address1,
      String? address2,
      String? zipcode,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/address/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'name': name,
      'phone': phone,
      'states': states,
      'city': city,
      'address1': address1,
      'address2': address2,
      'zipcode': zipcode
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AppInitializeGet(
      {required String? appId,
      String? appOs,
      String? appVersion,
      String? pushToken,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/app/initialize';
    final $params = <String, dynamic>{
      'app_id': appId,
      'app_os': appOs,
      'app_version': appVersion,
      'push_token': pushToken
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
  Future<Response<BasicResult>> _v1AppLocationRegisterGet(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/app/location/register';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AppLocationRegisterPost(
      {String? geoLatitude,
      String? geoLongitude,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/app/location/register';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'geo_latitude': geoLatitude,
      'geo_longitude': geoLongitude
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1AppLocationUnregisterDelete(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/app/location/unregister';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ChannelsFollowingsGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/channels/followings';
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
  Future<Response<BasicResult>> _v1ChannelsPost(
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
    final $url = '/v1/channels';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'store_id': storeId,
      'user_id': userId,
      'name': name,
      'type': type,
      'logo_image': logoImage,
      'cover_image': coverImage,
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
  Future<Response<BasicResult>> _v1ChannelsGet(
      {required String? page,
      required String? size,
      String? sort,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/channels';
    final $params = <String, dynamic>{'page': page, 'size': size, 'sort': sort};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ChannelsUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/channels/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ChannelsTopicFollowPost(
      {required String? topic, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/channels/${topic}/follow';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ChannelsTopicFollowGet(
      {required String? topic, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/channels/${topic}/follow';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ChannelsTopicFollowDelete(
      {required String? topic, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/channels/${topic}/follow';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1CommentsUidCommentsPost(
      {required String? uid,
      String? title,
      required String? content,
      String? password,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/comments/${uid}/comments';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'title': title,
      'content': content,
      'password': password,
      'extras': extras
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1CommentsUidCommentsGet(
      {required String? page,
      required String? size,
      required String? uid,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/comments/${uid}/comments';
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
  Future<Response<BasicResult>> _v1CommentPost(
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
    final $url = '/v1/comment';
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
      'user_name': userName,
      'user_password': userPassword,
      'extras': extras
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1CommentGet(
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
    final $url = '/v1/comment';
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
  Future<Response<BasicResult>> _v1CommentsUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/comments/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1CommentsUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/comments/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1CommentUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/comment/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1CommentsUidLinkGet(
      {required String? uid,
      String? link,
      String? image,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/comments/${uid}/link';
    final $params = <String, dynamic>{'link': link, 'image': image};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1CommentsUidReactionPost(
      {required String? uid,
      required String? reaction,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/comments/${uid}/reaction';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'reaction': reaction};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1CommentsUidReactionDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/comments/${uid}/reaction';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1CommentsUidSharePost(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/comments/${uid}/share';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1InventoryEachItemsGet(
      {String? cateName,
      required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/inventory/each/items';
    final $params = <String, dynamic>{
      'cate_name': cateName,
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
  Future<Response<BasicResult>> _v1InventoryItemsItemCodeGet(
      {required String? itemCode, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/inventory/items/${itemCode}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1InventoryItemsGet(
      {required String? page,
      required String? size,
      String? c0,
      String? c1,
      String? c2,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/inventory/items';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'c_0': c0,
      'c_1': c1,
      'c_2': c2
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
  Future<Response<BasicResult>> _v1MessagesPost(
      {required String? channelId,
      required String? message,
      String? images,
      String? linkes,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/messages';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'channel_id': channelId,
      'message': message,
      'images': images,
      'linkes': linkes
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1MessagesGet(
      {required String? channelId,
      required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/messages';
    final $params = <String, dynamic>{
      'channel_id': channelId,
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
  Future<Response<BasicResult>> _v1MessagesUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/messages/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1MessagesUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/messages/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1MessagesUidPut(
      {required String? uid,
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
    final $url = '/v1/messages/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'inventory_id': inventoryId,
      'option_id': optionId,
      'item_code': itemCode,
      'count': count,
      'orginal_price': orginalPrice,
      'option_price': optionPrice,
      'discount_price': discountPrice,
      'payment_price': paymentPrice
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1NotificationsNotifyNotificationsGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/notifications/notify/notifications';
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
  Future<Response<BasicResult>> _v1NotificationsPushRegisterGet(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/notifications/push/register';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1NotificationsPushRegisterPost(
      {required String? pushToken,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/notifications/push/register';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'push_token': pushToken};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1NotificationsPushSubscribeGlobalPost(
      {required String? pushToken,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/notifications/push/subscribe/global';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'push_token': pushToken};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1NotificationsPushUnregisterDelete(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/notifications/push/unregister';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1CmsNotificationsGroupGet(
      {required String? group,
      required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/cms/notifications/${group}';
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
  Future<Response<BasicResult>> _v1CartPost(
      {required String? optionId,
      required String? itemCode,
      required String? count,
      required String? orginalPrice,
      required String? optionPrice,
      required String? discountPrice,
      required String? paymentPrice,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/cart';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'option_id': optionId,
      'item_code': itemCode,
      'count': count,
      'orginal_price': orginalPrice,
      'option_price': optionPrice,
      'discount_price': discountPrice,
      'payment_price': paymentPrice
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1CartGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/cart';
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
  Future<Response<BasicResult>> _v1CartUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/cart/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1CartUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/cart/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1OrdersCancelUidPut(
      {required String? uid,
      required String? storeId,
      required String? cancelReason,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/orders/cancel/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'store_id': storeId,
      'cancel_reason': cancelReason
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1OrdersPost(
      {required String? storeId,
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
    final $url = '/v1/orders';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'store_id': storeId,
      'order_content': orderContent,
      'goods_count': goodsCount,
      'goods_content': goodsContent,
      'orderer_name': ordererName,
      'orderer_account': ordererAccount,
      'orderer_phone': ordererPhone,
      'orderer_address': ordererAddress,
      'orderer_address_detail': ordererAddressDetail,
      'orderer_address_postal_code': ordererAddressPostalCode,
      'receiver_name': receiverName,
      'receiver_account': receiverAccount,
      'receiver_phone': receiverPhone,
      'receiver_address': receiverAddress,
      'receiver_address_detail': receiverAddressDetail,
      'receiver_address_postal_code': receiverAddressPostalCode,
      'price_shipping': priceShipping,
      'price_shipping_remoted': priceShippingRemoted,
      'price_shipping_discount': priceShippingDiscount,
      'total_payment_price': totalPaymentPrice,
      'delivery_print_message': deliveryPrintMessage,
      'delivery_remoted': deliveryRemoted,
      'payment_info': paymentInfo
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1OrdersGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/orders';
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
  Future<Response<BasicResult>> _v1OrdersUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/orders/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PassportAuthAccessCodePost(
      {required String? code, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/passport/auth/access/code';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'code': code};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PassportAuthCertPost(
      {required String? accessToken,
      required String? deviceId,
      bool? force,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/passport/auth/cert';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'access_token': accessToken,
      'device_id': deviceId,
      'force': force
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PassportAuthCertOauthCallbackGet(
      {String? cacheControl}) {
    final $url = '/v1/passport/auth/cert/oauth/callback';
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PassportAuthCertOauthGet(
      {String? cacheControl}) {
    final $url = '/v1/passport/auth/cert/oauth';
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PassportAuthLogoutPost(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/passport/auth/logout';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PassportAuthUserAccountPost(
      {required String? account,
      required String? password,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/passport/auth/user/account';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'account': account, 'password': password};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PassportAuthUserAnonymousPost(
      {required String? deviceId,
      required String? publicKey,
      required Object? candidates,
      required String? cipher,
      required String? proof,
      String? code,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/passport/auth/user/anonymous';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'device_id': deviceId,
      'public_key': publicKey,
      'candidates': candidates,
      'cipher': cipher,
      'proof': proof,
      'code': code
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PassportAuthUserPasswordPut(
      {required String? password,
      required String? newPassword,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/passport/auth/user/password';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'password': password,
      'new_password': newPassword
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PassportAuthUserProfilePut(
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
    final $url = '/v1/passport/auth/user/profile';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'user_name': userName,
      'user_nickname': userNickname,
      'user_first_name': userFirstName,
      'user_last_name': userLastName,
      'user_dial_code': userDialCode,
      'user_iso_code': userIsoCode,
      'user_phone': userPhone,
      'user_email': userEmail,
      'user_gender': userGender,
      'profile_image': profileImage
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PassportAuthUserRegisterPost(
      {required String? username,
      required String? password,
      required String? userName,
      String? userEmail,
      String? userPhone,
      String? userNickname,
      String? userBirth,
      String? userGender,
      String? cacheControl}) {
    final $url = '/v1/passport/auth/user/register';
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'username': username,
      'password': password,
      'user_name': userName,
      'user_email': userEmail,
      'user_phone': userPhone,
      'user_nickname': userNickname,
      'user_birth': userBirth,
      'user_gender': userGender
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PassportAuthVerifyGet(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/passport/auth/verify';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PassportAuthVerifyPut(
      {required String? deviceId,
      required String? publicKey,
      required Object? candidates,
      required String? cipher,
      required String? proof,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/passport/auth/verify';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'device_id': deviceId,
      'public_key': publicKey,
      'candidates': candidates,
      'cipher': cipher,
      'proof': proof
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserAccessCodePost(
      {String? sessionToken, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/user/access/code';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'session_token': sessionToken};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserAgreePut(
      {required String? field, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/user/agree';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'field': field};
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserRelationsArtiketTotalGet(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/user/relations/artiket/total';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserCheckAccountGet(
      {required String? account, String? cacheControl}) {
    final $url = '/v1/user/check/account';
    final $params = <String, dynamic>{'account': account};
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserCheckEmailGet(
      {required String? email, String? cacheControl}) {
    final $url = '/v1/user/check/email';
    final $params = <String, dynamic>{'email': email};
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserCheckUsernameGet(
      {required String? username, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/user/check/username';
    final $params = <String, dynamic>{'username': username};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserDevicesGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/user/devices';
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
  Future<Response<BasicResult>> _v1UserDevicesPost(
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
    final $url = '/v1/user/devices';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'device_id': deviceId,
      'device_locale': deviceLocale,
      'device_type': deviceType,
      'device_model': deviceModel,
      'device_user_agent': deviceUserAgent,
      'os': os,
      'os_version': osVersion,
      'app_version': appVersion,
      'push_token': pushToken
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserDevicesDelete(
      {required String? deviceId, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/user/devices';
    final $params = <String, dynamic>{'device_id': deviceId};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserFindAccountSmsGet(
      {required String? requestId,
      required String? code,
      String? cacheControl}) {
    final $url = '/v1/user/find/account/sms';
    final $params = <String, dynamic>{'request_id': requestId, 'code': code};
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserFindAccountSmsSendPost(
      {required String? phone, String? cacheControl}) {
    final $url = '/v1/user/find/account/sms/send';
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'phone': phone};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserUidGet(
      {required String? uid, String? cacheControl}) {
    final $url = '/v1/user/${uid}';
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserPasswordResetPut(
      {required String? token,
      required String? password,
      String? cacheControl}) {
    final $url = '/v1/user/password/reset';
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'token': token, 'password': password};
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserPasswordResetSendPost(
      {required String? account, String? cacheControl}) {
    final $url = '/v1/user/password/reset/send';
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'account': account};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserProfileMeGet(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/user/profile/me';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserProfilePut(
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
    final $url = '/v1/user/profile';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'user_name': userName,
      'user_nickname': userNickname,
      'user_first_name': userFirstName,
      'user_last_name': userLastName,
      'user_dial_code': userDialCode,
      'user_iso_code': userIsoCode,
      'user_phone': userPhone,
      'user_email': userEmail,
      'user_gender': userGender,
      'profile_image': profileImage
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserRegisterPost(
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
    final $url = '/v1/user/register';
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'username': username,
      'password': password,
      'user_name': userName,
      'user_email': userEmail,
      'user_phone': userPhone,
      'user_nickname': userNickname,
      'user_first_name': userFirstName,
      'user_last_name': userLastName,
      'user_birth': userBirth,
      'user_gender': userGender
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserRelationsTotalGet(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/user/relations/total';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1UserUnregisterPost(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/user/unregister';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PaymentBillingPrimaryGet(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/payment/billing/primary';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PaymentBillingPost(
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
    final $url = '/v1/payment/billing';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'billing_gateway': billingGateway,
      'card_number': cardNumber,
      'card_password': cardPassword,
      'card_cvc': cardCvc,
      'id_number': idNumber,
      'expiration_year': expirationYear,
      'expiration_month': expirationMonth,
      'placeholder_name': placeholderName,
      'is_primary': isPrimary,
      'card_nation': cardNation
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PaymentBillingGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/payment/billing';
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
  Future<Response<BasicResult>> _v1PaymentBillingIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/payment/billing/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PaymentBillingIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/payment/billing/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PaymentBillingIdPrimaryPut(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/payment/billing/${id}/primary';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('PUT', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PaymentReceiptsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/payment/receipts/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PaymentReceiptsIdCheckGet(
      {required String? id,
      required String? orderUid,
      required String? transactionType,
      required String? transactionUid,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/payment/receipts/${id}/check';
    final $params = <String, dynamic>{
      'order_uid': orderUid,
      'transaction_type': transactionType,
      'transaction_uid': transactionUid
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
  Future<Response<BasicResult>> _v1PaymentSubscriptionsConfirmPost(
      {required String? orderUid,
      required String? transactionType,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/payment/subscriptions/confirm';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'order_uid': orderUid,
      'transaction_type': transactionType
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PaymentSubscriptionsIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/payment/subscriptions/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PaymentSubscriptionsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/payment/subscriptions/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PaymentSubscriptionsGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/payment/subscriptions';
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
  Future<Response<BasicResult>> _v1PaymentSubscriptionsNewPost(
      {required String? billingGateway,
      required String? productId,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/payment/subscriptions/new';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'billing_gateway': billingGateway,
      'product_id': productId
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PaymentTransactionsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/payment/transactions/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ChannelsTopicPostsGet(
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
    final $url = '/v1/channels/${topic}/posts';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
      'me': me,
      'article_key': articleKey,
      'include_types': includeTypes,
      'exclude_types': excludeTypes
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
  Future<Response<BasicResult>> _v1ChannelsTopicPostsPost(
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
    final $url = '/v1/channels/${topic}/posts';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'type': type,
      'content': content,
      'title': title,
      'summary': summary,
      'tags': tags,
      'resource_key': resourceKey,
      'resources': resources,
      'extras': extras
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsBookmarkGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/posts/bookmark';
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
  Future<Response<BasicResult>> _v1PostsReactionGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/posts/reaction';
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
  Future<Response<BasicResult>> _v1ChannelsChannelVideosGet(
      {required String? page,
      required String? size,
      required String? channel,
      String? cacheControl}) {
    final $url = '/v1/channels/${channel}/videos';
    final $params = <String, dynamic>{'page': page, 'size': size};
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsUidCommentsPost(
      {required String? uid,
      String? title,
      required String? content,
      String? password,
      String? extras,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/posts/${uid}/comments';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'title': title,
      'content': content,
      'password': password,
      'extras': extras
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsUidCommentsGet(
      {required String? page,
      required String? size,
      required int uid,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/posts/${uid}/comments';
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
  Future<Response<BasicResult>> _v1PostsUidCommentsCommentIdDelete(
      {required String? uid,
      required String? commentId,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/posts/${uid}/comments/${commentId}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsUidDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/posts/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsUidGet(
      {required int uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/posts/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsUidLinkGet(
      {required String? uid,
      required String? link,
      String? image,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/posts/${uid}/link';
    final $params = <String, dynamic>{'link': link, 'image': image};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsGet(
      {required String? page,
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
    final $url = '/v1/posts';
    final $params = <String, dynamic>{
      'page': page,
      'size': size,
      'sort': sort,
      'group': group,
      'content': content,
      'me': me,
      'article_key': articleKey,
      'include_types': includeTypes,
      'exclude_types': excludeTypes
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
  Future<Response<BasicResult>> _v1PostsUidBookmarkPost(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/posts/${uid}/bookmark';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsUidBookmarkDelete(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/posts/${uid}/bookmark';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsUidReactionPost(
      {required int uid,
      required String? reaction,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/posts/${uid}/reaction';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'reaction': reaction};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsUidReactionDelete(
      {required int uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/posts/${uid}/reaction';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsReadAllPut(
      {required String? postGroup,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/posts/read/all';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'post_group': postGroup};
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsUidSharePost(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/posts/${uid}/share';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('POST', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsUidVoteGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/posts/${uid}/vote';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PostsUidVotePost(
      {required int uid,
      required String? vote,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/posts/${uid}/vote';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'vote': vote};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ProductsListMyGet(
      {required String? type,
      required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/products/list/my';
    final $params = <String, dynamic>{'type': type, 'page': page, 'size': size};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ProductsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/products/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ProductsGet(
      {required String? type,
      required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/products';
    final $params = <String, dynamic>{'type': type, 'page': page, 'size': size};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ProductsIdPurchaseNewPost(
      {required String? id,
      required String? quantity,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/products/${id}/purchase/new';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'quantity': quantity};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ProductsPurchaseIdCompletePost(
      {required String? id,
      required String? reserve,
      required String? billing,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/products/purchase/${id}/complete';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'reserve': reserve, 'billing': billing};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ProductsPurchaseIdUpdatePut(
      {required String? id,
      required String? quantity,
      String? discountCode,
      String? couponCode,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/products/purchase/${id}/update';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'quantity': quantity,
      'discount_code': discountCode,
      'coupon_code': couponCode
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1NotifyNotificationsGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/notify/notifications';
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
  Future<Response<BasicResult>> _v1PushRegisterGet(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/push/register';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PushRegisterPost(
      {required String? pushToken,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/push/register';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'push_token': pushToken};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PushUserRegisterGet(
      {required String? deviceId, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/push/user/register';
    final $params = <String, dynamic>{'device_id': deviceId};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PushUserRegisterPost(
      {required String? deviceId,
      required String? pushToken,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/push/user/register';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'device_id': deviceId,
      'push_token': pushToken
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PushSubscribeGlobalPost(
      {required String? pushToken,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/push/subscribe/global';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'push_token': pushToken};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1PushUnregisterDelete(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/push/unregister';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ResourcesUploadPost(
      {required String? key,
      required String? tag,
      required num? pv,
      required List<String>? file,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/resources/upload';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'key': key,
      'tag': tag,
      'pv': pv,
      'file': file
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ReviewsCodeUidGet(
      {required String? uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/reviews/code/${uid}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ReviewsCodeGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/reviews/code';
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
  Future<Response<BasicResult>> _v1ReviewsPost(
      {required Object? orderId,
      required Object? itemId,
      required String? reviewType,
      Object? rates,
      String? imageUrl,
      String? message,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/reviews';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'order_id': orderId,
      'item_id': itemId,
      'review_type': reviewType,
      'rates': rates,
      'image_url': imageUrl,
      'message': message
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ReviewsGet(
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
    final $url = '/v1/reviews';
    final $params = <String, dynamic>{
      'start_date': startDate,
      'end_date': endDate,
      'review_type': reviewType,
      'review_star': reviewStar,
      'review_comment': reviewComment,
      'item_code': itemCode,
      'oreder_number': orederNumber,
      'review_key': reviewKey,
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
  Future<Response<BasicResult>> _v1ReviewsIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/reviews/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ReviewsIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/reviews/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1ReviewsIdPut(
      {required String? id,
      Object? rates,
      String? imageUrl,
      String? message,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/reviews/${id}';
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
  Future<Response<BasicResult>> _v1BankCodesGet(
      {required String? page,
      required String? size,
      String? keyword,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/bank/codes';
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
  Future<Response<BasicResult>> _v1BankAccountPost(
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
    final $url = '/v1/bank/account';
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
      'bank_swift_code': bankSwiftCode
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1BankAccountGet(
      {required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/bank/account';
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
  Future<Response<BasicResult>> _v1BankAccountIdDelete(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/bank/account/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1BankAccountIdGet(
      {required String? id, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/bank/account/${id}';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1BankAccountIdPut(
      {required String? id,
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
    final $url = '/v1/bank/account/${id}';
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
      'bank_swift_code': bankSwiftCode
    };
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1TrackingCompanyGet(
      {String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/tracking/company';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1TrackingInfoGet(
      {required String? code,
      required String? invoice,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/tracking/info';
    final $params = <String, dynamic>{'code': code, 'invoice': invoice};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1TrackingRecommendedCompanyGet(
      {required String? invoice, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/tracking/recommended/company';
    final $params = <String, dynamic>{'invoice': invoice};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1VerifyEmailGet(
      {required String? email,
      required String? key,
      required String? type,
      String? cacheControl}) {
    final $url = '/v1/verify/email';
    final $params = <String, dynamic>{'email': email, 'key': key, 'type': type};
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl,
        parameters: $params, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1VerifySendMailPost(
      {String? userId,
      required String? account,
      required String? username,
      required String? email,
      required String? title,
      String? desc,
      required String? mailtype,
      String? cacheControl}) {
    final $url = '/v1/verify/send/mail';
    final $headers = {
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{
      'user_id': userId,
      'account': account,
      'username': username,
      'email': email,
      'title': title,
      'desc': desc,
      'mailtype': mailtype
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> _v1TranscodeHls2mPost(
      {required String? key, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/transcode/hls/2m';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $body = <String, dynamic>{'key': key};
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> getV1PostsLikeMe(
      {required int uid, String? xAccessToken, String? cacheControl}) {
    final $url = '/v1/posts/${uid}/like/me';
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }

  @override
  Future<Response<BasicResult>> fetchV1PostsLike(
      {required int uid,
      required String? page,
      required String? size,
      String? xAccessToken,
      String? cacheControl}) {
    final $url = '/v1/posts/${uid}/like';
    final $params = <String, dynamic>{'page': page, 'size': size};
    final $headers = {
      if (xAccessToken != null) 'x-access-token': xAccessToken,
      if (cacheControl != null) 'Cache-Control': cacheControl,
    };

    final $request = Request('GET', $url, parameters: $params, client.baseUrl, headers: $headers);
    return client.send<BasicResult, BasicResult>($request);
  }
}
