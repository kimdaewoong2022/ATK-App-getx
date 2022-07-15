// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artiket_service_json.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicResult _$BasicResultFromJson(Map<String, dynamic> json) => BasicResult(
      error: json['error'] == null
          ? null
          : CommonError.fromJson(json['error'] as Map<String, dynamic>),
      status: json['status'] as String? ?? '',
      data: json['data'],
    );

Map<String, dynamic> _$BasicResultToJson(BasicResult instance) =>
    <String, dynamic>{
      'error': instance.error?.toJson(),
      'status': instance.status,
      'data': instance.data,
    };

CommonError _$CommonErrorFromJson(Map<String, dynamic> json) => CommonError();

Map<String, dynamic> _$CommonErrorToJson(CommonError instance) =>
    <String, dynamic>{};

AddressBook _$AddressBookFromJson(Map<String, dynamic> json) => AddressBook(
      uid: json['uid'] as int,
      account: json['account'] as String? ?? '',
      addressType: json['address_type'] as String? ?? '',
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      country: json['country'] as String? ?? '',
      states: json['states'] as String? ?? '',
      city: json['city'] as String? ?? '',
      address1: json['address1'] as String? ?? '',
      address2: json['address2'] as String? ?? '',
      zipcode: json['zipcode'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$AddressBookToJson(AddressBook instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'account': instance.account,
      'address_type': instance.addressType,
      'name': instance.name,
      'phone': instance.phone,
      'country': instance.country,
      'states': instance.states,
      'city': instance.city,
      'address1': instance.address1,
      'address2': instance.address2,
      'zipcode': instance.zipcode,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Admin _$AdminFromJson(Map<String, dynamic> json) => Admin(
      uid: json['uid'] as int,
      adminId: json['admin_id'] as String? ?? '',
      adminPassword: json['admin_password'] as String? ?? '',
      adminType: json['admin_type'] as String? ?? '',
      adminName: json['admin_name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      nickName: json['nick_name'] as String? ?? '',
      adminPosition: json['admin_position'] as String? ?? '',
      adminDepartment: json['admin_department'] as String? ?? '',
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$AdminToJson(Admin instance) => <String, dynamic>{
      'uid': instance.uid,
      'admin_id': instance.adminId,
      'admin_password': instance.adminPassword,
      'admin_type': instance.adminType,
      'admin_name': instance.adminName,
      'phone': instance.phone,
      'nick_name': instance.nickName,
      'admin_position': instance.adminPosition,
      'admin_department': instance.adminDepartment,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Analytics _$AnalyticsFromJson(Map<String, dynamic> json) => Analytics(
      uid: json['uid'] as int,
      hashKey: json['hash_key'] as String? ?? '',
      inflowUser: json['inflow_user'] as int?,
      authorizedUser: json['authorized_user'] as int?,
      bouncedUser: json['bounced_user'] as int?,
      dau: json['dau'] as int?,
      wau: json['wau'] as int?,
      guestUser: json['guest_user'] as int?,
      authorizedRate: (json['authorized_rate'] as num?)?.toDouble(),
      bouncedRate: (json['bounced_rate'] as num?)?.toDouble(),
      retention: (json['retention'] as num?)?.toDouble(),
      dateGroup: json['date_group'] as String? ?? '',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$AnalyticsToJson(Analytics instance) => <String, dynamic>{
      'uid': instance.uid,
      'hash_key': instance.hashKey,
      'inflow_user': instance.inflowUser,
      'authorized_user': instance.authorizedUser,
      'bounced_user': instance.bouncedUser,
      'dau': instance.dau,
      'wau': instance.wau,
      'guest_user': instance.guestUser,
      'authorized_rate': instance.authorizedRate,
      'bounced_rate': instance.bouncedRate,
      'retention': instance.retention,
      'date_group': instance.dateGroup,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Log _$LogFromJson(Map<String, dynamic> json) => Log(
      uid: json['uid'] as int,
      hashKey: json['hash_key'] as String? ?? '',
      logType: json['log_type'] as String? ?? '',
      timestamp: DateTime.parse(json['timestamp'] as String),
      provider: json['provider'] as String? ?? '',
      contentId: json['content_id'] as String? ?? '',
      contentParentId: json['content_parent_id'] as String? ?? '',
      parentUserId: json['parent_user_id'] as int?,
      contentType: json['content_type'] as String? ?? '',
      action: json['action'] as String? ?? '',
      actionContent: json['action_content'] as String? ?? '',
      extras: json['extras'],
      type: json['type'] as String? ?? '',
      userId: json['user_id'] as int?,
      groupId: json['group_id'] as String? ?? '',
      username: json['username'] as String? ?? '',
      userName: json['user_name'] as String? ?? '',
      userType: json['user_type'] as String? ?? '',
      roleType: json['role_type'] as String? ?? '',
      roleLevel: json['role_level'] as int?,
      appId: json['app_id'] as String? ?? '',
      appVersion: json['app_version'] as String? ?? '',
      osType: json['os_type'] as String? ?? '',
      osVersion: json['os_version'] as String? ?? '',
      deviceId: json['device_id'] as String? ?? '',
      deviceType: json['device_type'] as String? ?? '',
      deviceName: json['device_name'] as String? ?? '',
      deviceLocale: json['device_locale'] as String? ?? '',
      deviceModel: json['device_model'] as String? ?? '',
      deviceUserAgent: json['device_user_agent'] as String? ?? '',
      pushToken: json['push_token'] as String? ?? '',
      inviteCode: json['invite_code'] as String? ?? '',
      rewardUserId: json['reward_user_id'] as String? ?? '',
      rewardCode: json['reward_code'] as String? ?? '',
      rewardValue: json['reward_value'] as String? ?? '',
      bonusValue: json['bonus_value'] as String? ?? '',
      bonusReason: json['bonus_reason'] as String? ?? '',
      value: json['value'] as String? ?? '',
      votingCode: json['voting_code'] as String? ?? '',
      votingPower: json['voting_power'] as String? ?? '',
      reqIp: json['req_ip'] as String? ?? '',
      reqAgent: json['req_agent'] as String? ?? '',
      reqPath: json['req_path'] as String? ?? '',
      reqMethod: json['req_method'] as String? ?? '',
      reqParams: json['req_params'] as String? ?? '',
      reqBody: json['req_body'] as String? ?? '',
      resStatusCode: json['res_status_code'] as String? ?? '',
      resContentType: json['res_content_type'] as String? ?? '',
      resAccessControlAllowOrigin:
          json['res_access_control_allow_origin'] as String? ?? '',
      resError: json['res_error'] as String? ?? '',
      dateGroup: json['date_group'] as String? ?? '',
      status: json['status'] as String? ?? '',
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$LogToJson(Log instance) => <String, dynamic>{
      'uid': instance.uid,
      'hash_key': instance.hashKey,
      'log_type': instance.logType,
      'timestamp': instance.timestamp.toIso8601String(),
      'provider': instance.provider,
      'content_id': instance.contentId,
      'content_parent_id': instance.contentParentId,
      'parent_user_id': instance.parentUserId,
      'content_type': instance.contentType,
      'action': instance.action,
      'action_content': instance.actionContent,
      'extras': instance.extras,
      'type': instance.type,
      'user_id': instance.userId,
      'group_id': instance.groupId,
      'username': instance.username,
      'user_name': instance.userName,
      'user_type': instance.userType,
      'role_type': instance.roleType,
      'role_level': instance.roleLevel,
      'app_id': instance.appId,
      'app_version': instance.appVersion,
      'os_type': instance.osType,
      'os_version': instance.osVersion,
      'device_id': instance.deviceId,
      'device_type': instance.deviceType,
      'device_name': instance.deviceName,
      'device_locale': instance.deviceLocale,
      'device_model': instance.deviceModel,
      'device_user_agent': instance.deviceUserAgent,
      'push_token': instance.pushToken,
      'invite_code': instance.inviteCode,
      'reward_user_id': instance.rewardUserId,
      'reward_code': instance.rewardCode,
      'reward_value': instance.rewardValue,
      'bonus_value': instance.bonusValue,
      'bonus_reason': instance.bonusReason,
      'value': instance.value,
      'voting_code': instance.votingCode,
      'voting_power': instance.votingPower,
      'req_ip': instance.reqIp,
      'req_agent': instance.reqAgent,
      'req_path': instance.reqPath,
      'req_method': instance.reqMethod,
      'req_params': instance.reqParams,
      'req_body': instance.reqBody,
      'res_status_code': instance.resStatusCode,
      'res_content_type': instance.resContentType,
      'res_access_control_allow_origin': instance.resAccessControlAllowOrigin,
      'res_error': instance.resError,
      'date_group': instance.dateGroup,
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
    };

App _$AppFromJson(Map<String, dynamic> json) => App(
      uid: json['uid'] as int,
      appId: json['app_id'] as String? ?? '',
      appName: json['app_name'] as String? ?? '',
      appOs: json['app_os'] as String? ?? '',
      appVersion: json['app_version'] as String? ?? '',
      appVersionMinimum: json['app_version_minimum'] as String? ?? '',
      appVersionReview: json['app_version_review'] as String? ?? '',
      appUpdateLink: json['app_update_link'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$AppToJson(App instance) => <String, dynamic>{
      'uid': instance.uid,
      'app_id': instance.appId,
      'app_name': instance.appName,
      'app_os': instance.appOs,
      'app_version': instance.appVersion,
      'app_version_minimum': instance.appVersionMinimum,
      'app_version_review': instance.appVersionReview,
      'app_update_link': instance.appUpdateLink,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Channel _$ChannelFromJson(Map<String, dynamic> json) => Channel(
      uid: json['uid'] as int,
      storeId: json['store_id'] as int?,
      userId: json['user_id'] as int?,
      rules: json['rules'],
      name: json['name'] as String? ?? '',
      type: json['type'] as String? ?? '',
      logoImage: json['logo_image'] as String? ?? '',
      coverImage: json['cover_image'] as String? ?? '',
      description: json['description'] as String? ?? '',
      sortOrder: json['sort_order'] as int,
      hidden: json['hidden'] as bool,
      hiddenAt: json['hidden_at'] == null
          ? null
          : DateTime.parse(json['hidden_at'] as String),
      blocked: json['blocked'] as bool,
      blockedAt: json['blocked_at'] == null
          ? null
          : DateTime.parse(json['blocked_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
      'uid': instance.uid,
      'store_id': instance.storeId,
      'user_id': instance.userId,
      'rules': instance.rules,
      'name': instance.name,
      'type': instance.type,
      'logo_image': instance.logoImage,
      'cover_image': instance.coverImage,
      'description': instance.description,
      'sort_order': instance.sortOrder,
      'hidden': instance.hidden,
      'hidden_at': instance.hiddenAt?.toIso8601String(),
      'blocked': instance.blocked,
      'blocked_at': instance.blockedAt?.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      uid: json['uid'] as int,
      itemCode: json['item_code'] as String? ?? '',
      orderNumber: json['order_number'] as String? ?? '',
      commentKey: json['comment_key'] as String? ?? '',
      commentProvider: json['comment_provider'] as String? ?? '',
      commentTarget: json['comment_target'] as String? ?? '',
      commentTargetId: json['comment_target_id'] as String? ?? '',
      commentType: json['comment_type'] as String? ?? '',
      commentParentTarget: json['comment_parent_target'] as String? ?? '',
      commentParentId: json['comment_parent_id'] as int?,
      commentDepth: json['comment_depth'] as int?,
      commentOrder: json['comment_order'] as int?,
      commentTitle: json['comment_title'] as String? ?? '',
      commentContent: json['comment_content'] as String? ?? '',
      commentEmotion: json['comment_emotion'] as String? ?? '',
      commentImageUrl: json['comment_image_url'] as String? ?? '',
      linkedTarget: json['linked_target'] as String? ?? '',
      linkedTargetId: json['linked_target_id'] as String? ?? '',
      userId: json['user_id'] as int?,
      userName: json['user_name'] as String? ?? '',
      userPassword: json['user_password'] as String? ?? '',
      extras: json['extras'],
      hidden: json['hidden'] as bool,
      hiddenAt: json['hidden_at'] == null
          ? null
          : DateTime.parse(json['hidden_at'] as String),
      blocked: json['blocked'] as bool,
      blockedAt: json['blocked_at'] == null
          ? null
          : DateTime.parse(json['blocked_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      replied: json['replied'] as bool,
      repliedAt: json['replied_at'] == null
          ? null
          : DateTime.parse(json['replied_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'uid': instance.uid,
      'item_code': instance.itemCode,
      'order_number': instance.orderNumber,
      'comment_key': instance.commentKey,
      'comment_provider': instance.commentProvider,
      'comment_target': instance.commentTarget,
      'comment_target_id': instance.commentTargetId,
      'comment_type': instance.commentType,
      'comment_parent_target': instance.commentParentTarget,
      'comment_parent_id': instance.commentParentId,
      'comment_depth': instance.commentDepth,
      'comment_order': instance.commentOrder,
      'comment_title': instance.commentTitle,
      'comment_content': instance.commentContent,
      'comment_emotion': instance.commentEmotion,
      'comment_image_url': instance.commentImageUrl,
      'linked_target': instance.linkedTarget,
      'linked_target_id': instance.linkedTargetId,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_password': instance.userPassword,
      'extras': instance.extras,
      'hidden': instance.hidden,
      'hidden_at': instance.hiddenAt?.toIso8601String(),
      'blocked': instance.blocked,
      'blocked_at': instance.blockedAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'replied': instance.replied,
      'replied_at': instance.repliedAt?.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
      uid: json['uid'] as int,
      adminId: json['admin_id'] as int?,
      contentGroup: json['content_group'] as String? ?? '',
      contentType: json['content_type'] as String? ?? '',
      contentLanguage: json['content_language'] as String? ?? '',
      contentTitle: json['content_title'] as String? ?? '',
      contentHtml: json['content_html'] as String? ?? '',
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'uid': instance.uid,
      'admin_id': instance.adminId,
      'content_group': instance.contentGroup,
      'content_type': instance.contentType,
      'content_language': instance.contentLanguage,
      'content_title': instance.contentTitle,
      'content_html': instance.contentHtml,
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

ShippingTracking _$ShippingTrackingFromJson(Map<String, dynamic> json) =>
    ShippingTracking(
      uid: json['uid'] as int,
      orderNumber: json['order_number'] as String? ?? '',
      details: json['details'],
      status: json['status'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$ShippingTrackingToJson(ShippingTracking instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'order_number': instance.orderNumber,
      'details': instance.details,
      'status': instance.status,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

DisturbUsers _$DisturbUsersFromJson(Map<String, dynamic> json) => DisturbUsers(
      uid: json['uid'] as int,
      storeId: json['store_id'] as int?,
      sellerId: json['seller_id'] as int?,
      sellerName: json['seller_name'] as String? ?? '',
      userId: json['user_id'] as int?,
      userName: json['user_name'] as String? ?? '',
      itemCode: json['item_code'] as String? ?? '',
      reasonType: json['reason_type'] as bool,
      regReason: json['reg_reason'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$DisturbUsersToJson(DisturbUsers instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'store_id': instance.storeId,
      'seller_id': instance.sellerId,
      'seller_name': instance.sellerName,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'item_code': instance.itemCode,
      'reason_type': instance.reasonType,
      'reg_reason': instance.regReason,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      uid: json['uid'] as int,
      code: json['code'] as String? ?? '',
      category1Code: json['category1Code'] as int,
      category1Name: json['category1Name'] as String? ?? '',
      category2Code: json['category2Code'] as int,
      category2Name: json['category2Name'] as String? ?? '',
      category3Code: json['category3Code'] as int,
      category3Name: json['category3Name'] as String? ?? '',
      categoryCode: json['categoryCode'] as int,
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'uid': instance.uid,
      'code': instance.code,
      'category1Code': instance.category1Code,
      'category1Name': instance.category1Name,
      'category2Code': instance.category2Code,
      'category2Name': instance.category2Name,
      'category3Code': instance.category3Code,
      'category3Name': instance.category3Name,
      'categoryCode': instance.categoryCode,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

CategoryNotice _$CategoryNoticeFromJson(Map<String, dynamic> json) =>
    CategoryNotice(
      uid: json['uid'] as int,
      categoryNotice: json['categoryNotice'] as String? ?? '',
      categoryNoticeList: json['categoryNoticeList'] as String? ?? '',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CategoryNoticeToJson(CategoryNotice instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'categoryNotice': instance.categoryNotice,
      'categoryNoticeList': instance.categoryNoticeList,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Delivery _$DeliveryFromJson(Map<String, dynamic> json) => Delivery(
      uid: json['uid'] as int,
      itemCode: json['item_code'] as String? ?? '',
      deliveryTemplate: json['delivery_template'] as String? ?? '',
      deliveryMethod: json['delivery_method'] as String? ?? '',
      deliveryFee0: json['delivery_fee_0'] as int?,
      deliveryIsland: json['delivery_island'] as String? ?? '',
      deliveryFee1: json['delivery_fee_1'] as int?,
      deliveryFee2: json['delivery_fee_2'] as int?,
      placeOfShipment: json['place_of_shipment'] as String? ?? '',
      refundDeliveryTemplate: json['refund_delivery_template'] as String? ?? '',
      refundDeliveryMethod: json['refund_delivery_method'] as String? ?? '',
      refundCourierCompany: json['refund_courier_company'] as String? ?? '',
      refundDeliveryFee0: json['refund_delivery_fee_0'] as int?,
      refundDeliveryFee1: json['refund_delivery_fee_1'] as int?,
      refundAddress: json['refund_address'] as String? ?? '',
      refundNotice: json['refund_notice'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$DeliveryToJson(Delivery instance) => <String, dynamic>{
      'uid': instance.uid,
      'item_code': instance.itemCode,
      'delivery_template': instance.deliveryTemplate,
      'delivery_method': instance.deliveryMethod,
      'delivery_fee_0': instance.deliveryFee0,
      'delivery_island': instance.deliveryIsland,
      'delivery_fee_1': instance.deliveryFee1,
      'delivery_fee_2': instance.deliveryFee2,
      'place_of_shipment': instance.placeOfShipment,
      'refund_delivery_template': instance.refundDeliveryTemplate,
      'refund_delivery_method': instance.refundDeliveryMethod,
      'refund_courier_company': instance.refundCourierCompany,
      'refund_delivery_fee_0': instance.refundDeliveryFee0,
      'refund_delivery_fee_1': instance.refundDeliveryFee1,
      'refund_address': instance.refundAddress,
      'refund_notice': instance.refundNotice,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Inventory _$InventoryFromJson(Map<String, dynamic> json) => Inventory(
      uid: json['uid'] as int,
      storeId: json['store_id'] as int,
      account: json['account'] as String? ?? '',
      itemStatus: json['item_status'] as String? ?? '',
      itemCode: json['item_code'] as String? ?? '',
      itemName: json['item_name'] as String? ?? '',
      itemPrice: json['item_price'] as int,
      itemDiscountPrice: json['item_discount_price'] as int,
      itemDescribed: json['item_described'] as String? ?? '',
      itemDetail: json['item_detail'] as String? ?? '',
      itemTotalCount: json['item_total_count'] as int,
      itemSoldCount: json['item_sold_count'] as int,
      itemCategory0: json['item_category_0'] as String? ?? '',
      itemCategory1: json['item_category_1'] as String? ?? '',
      itemCategory2: json['item_category_2'] as String? ?? '',
      itemNotice: json['item_notice'] as String? ?? '',
      itemNoticeDetail: json['item_notice_detail'] as String? ?? '',
      optionList0: json['option_list0'] as String? ?? '',
      optionList1: json['option_list1'] as String? ?? '',
      handmadeItem: json['handmade_item'] as String? ?? '',
      handmadePeriod: json['handmade_period'] as String? ?? '',
      salesStartAt: DateTime.parse(json['sales_start_at'] as String),
      salesEndAt: DateTime.parse(json['sales_end_at'] as String),
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$InventoryToJson(Inventory instance) => <String, dynamic>{
      'uid': instance.uid,
      'store_id': instance.storeId,
      'account': instance.account,
      'item_status': instance.itemStatus,
      'item_code': instance.itemCode,
      'item_name': instance.itemName,
      'item_price': instance.itemPrice,
      'item_discount_price': instance.itemDiscountPrice,
      'item_described': instance.itemDescribed,
      'item_detail': instance.itemDetail,
      'item_total_count': instance.itemTotalCount,
      'item_sold_count': instance.itemSoldCount,
      'item_category_0': instance.itemCategory0,
      'item_category_1': instance.itemCategory1,
      'item_category_2': instance.itemCategory2,
      'item_notice': instance.itemNotice,
      'item_notice_detail': instance.itemNoticeDetail,
      'option_list0': instance.optionList0,
      'option_list1': instance.optionList1,
      'handmade_item': instance.handmadeItem,
      'handmade_period': instance.handmadePeriod,
      'sales_start_at': instance.salesStartAt.toIso8601String(),
      'sales_end_at': instance.salesEndAt.toIso8601String(),
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Options _$OptionsFromJson(Map<String, dynamic> json) => Options(
      uid: json['uid'] as int,
      itemCode: json['item_code'] as String? ?? '',
      optionType: json['option_type'] as String? ?? '',
      optionTemplate: json['option_template'] as String? ?? '',
      optionName: json['option_name'] as String? ?? '',
      optionValue: json['option_value'] as String? ?? '',
      optionPrice: json['option_price'] as int?,
      optionCount: json['option_count'] as int?,
      baseOption: json['base_option'] as String? ?? '',
      questionOption: json['question_option'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$OptionsToJson(Options instance) => <String, dynamic>{
      'uid': instance.uid,
      'item_code': instance.itemCode,
      'option_type': instance.optionType,
      'option_template': instance.optionTemplate,
      'option_name': instance.optionName,
      'option_value': instance.optionValue,
      'option_price': instance.optionPrice,
      'option_count': instance.optionCount,
      'base_option': instance.baseOption,
      'question_option': instance.questionOption,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Tags _$TagsFromJson(Map<String, dynamic> json) => Tags(
      uid: json['uid'] as int,
      itemCode: json['item_code'] as String? ?? '',
      tag0: json['tag_0'] as String? ?? '',
      tag1: json['tag_1'] as String? ?? '',
      tag2: json['tag_2'] as String? ?? '',
      tag3: json['tag_3'] as String? ?? '',
      tag4: json['tag_4'] as String? ?? '',
      tag5: json['tag_5'] as String? ?? '',
      tag6: json['tag_6'] as String? ?? '',
      tag7: json['tag_7'] as String? ?? '',
      tag8: json['tag_8'] as String? ?? '',
      tag9: json['tag_9'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$TagsToJson(Tags instance) => <String, dynamic>{
      'uid': instance.uid,
      'item_code': instance.itemCode,
      'tag_0': instance.tag0,
      'tag_1': instance.tag1,
      'tag_2': instance.tag2,
      'tag_3': instance.tag3,
      'tag_4': instance.tag4,
      'tag_5': instance.tag5,
      'tag_6': instance.tag6,
      'tag_7': instance.tag7,
      'tag_8': instance.tag8,
      'tag_9': instance.tag9,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Messages _$MessagesFromJson(Map<String, dynamic> json) => Messages(
      uid: json['uid'] as int,
      channelId: json['channel_id'] as String? ?? '',
      message: json['message'],
      images: json['images'],
      links: json['links'],
      userId: json['user_id'] as int?,
      userName: json['user_name'] as String? ?? '',
      userEmail: json['user_email'] as String? ?? '',
      profileImage: json['profile_image'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$MessagesToJson(Messages instance) => <String, dynamic>{
      'uid': instance.uid,
      'channel_id': instance.channelId,
      'message': instance.message,
      'images': instance.images,
      'links': instance.links,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_email': instance.userEmail,
      'profile_image': instance.profileImage,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

PushMessage _$PushMessageFromJson(Map<String, dynamic> json) => PushMessage(
      uid: json['uid'] as int,
      userId: json['user_id'] as int,
      provider: json['provider'] as String? ?? '',
      messageId: json['message_id'] as String? ?? '',
      messageGroup: json['message_group'] as String? ?? '',
      messageType: json['message_type'] as String? ?? '',
      messageTitle: json['message_title'] as String? ?? '',
      messagePayload: json['message_payload'] as Object,
      messagePriority: json['message_priority'] as String? ?? '',
      published: json['published'] as bool,
      publishedAt: DateTime.parse(json['published_at'] as String),
      extras: json['extras'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$PushMessageToJson(PushMessage instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'provider': instance.provider,
      'message_id': instance.messageId,
      'message_group': instance.messageGroup,
      'message_type': instance.messageType,
      'message_title': instance.messageTitle,
      'message_payload': instance.messagePayload,
      'message_priority': instance.messagePriority,
      'published': instance.published,
      'published_at': instance.publishedAt.toIso8601String(),
      'extras': instance.extras,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
      uid: json['uid'] as int,
      userId: json['user_id'] as int?,
      inventoryId: json['inventory_id'] as int?,
      optionId: json['option_id'] as int?,
      itemCode: json['item_code'] as String? ?? '',
      count: json['count'] as int,
      orginalPrice: (json['orginal_price'] as num?)?.toDouble(),
      optionPrice: (json['option_price'] as num?)?.toDouble(),
      discountPrice: (json['discount_price'] as num?)?.toDouble(),
      paymentPrice: (json['payment_price'] as num?)?.toDouble(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'inventory_id': instance.inventoryId,
      'option_id': instance.optionId,
      'item_code': instance.itemCode,
      'count': instance.count,
      'orginal_price': instance.orginalPrice,
      'option_price': instance.optionPrice,
      'discount_price': instance.discountPrice,
      'payment_price': instance.paymentPrice,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Orders _$OrdersFromJson(Map<String, dynamic> json) => Orders(
      uid: json['uid'] as int,
      paymentId: json['payment_id'] as int?,
      userId: json['user_id'] as int,
      consignorId: json['consignor_id'] as int,
      orderKey: json['order_key'] as String? ?? '',
      orderType: json['order_type'] as String? ?? '',
      orderProvider: json['order_provider'] as String? ?? '',
      orderNumber: json['order_number'] as String? ?? '',
      orderContent: json['order_content'],
      orderedAt: DateTime.parse(json['ordered_at'] as String),
      goodsCount: json['goods_count'] as int,
      goodsContent: json['goods_content'],
      ordererName: json['orderer_name'] as String? ?? '',
      ordererAccount: json['orderer_account'] as String? ?? '',
      ordererPhone: json['orderer_phone'] as String? ?? '',
      ordererPhoneSafe: json['orderer_phone_safe'] as String? ?? '',
      ordererAddress: json['orderer_address'] as String? ?? '',
      ordererAddressDetail: json['orderer_address_detail'] as String? ?? '',
      ordererAddressPostalCode:
          json['orderer_address_postal_code'] as String? ?? '',
      receiverName: json['receiver_name'] as String? ?? '',
      receiverAccount: json['receiver_account'] as String? ?? '',
      receiverPhone: json['receiver_phone'] as String? ?? '',
      receiverPhoneSafe: json['receiver_phone_safe'] as String? ?? '',
      receiverAddress: json['receiver_address'] as String? ?? '',
      receiverAddressDetail: json['receiver_address_detail'] as String? ?? '',
      receiverAddressPostalCode:
          json['receiver_address_postal_code'] as String? ?? '',
      priceUnit: json['price_unit'] as String? ?? '',
      priceExchange: (json['price_exchange'] as num?)?.toDouble(),
      priceShipping: (json['price_shipping'] as num?)?.toDouble(),
      priceShippingRemoted:
          (json['price_shipping_remoted'] as num?)?.toDouble(),
      priceShippingDiscount:
          (json['price_shipping_discount'] as num?)?.toDouble(),
      taxPrice: (json['tax_price'] as num?)?.toDouble(),
      totalPaymentPrice: (json['total_payment_price'] as num?)?.toDouble(),
      paidAt: json['paid_at'] == null
          ? null
          : DateTime.parse(json['paid_at'] as String),
      shippingPersonalCode: json['shipping_personal_code'] as String? ?? '',
      shippingOrdererSsn: json['shipping_orderer_ssn'] as String? ?? '',
      shippingOrdererPhone: json['shipping_orderer_phone'] as String? ?? '',
      extras: json['extras'],
      status: json['status'] as String? ?? '',
      deliveryType: json['delivery_type'] as String? ?? '',
      deliveryLoadSize: json['delivery_load_size'] as String? ?? '',
      deliveryPrintMessage: json['delivery_print_message'] as String? ?? '',
      deliveryRemoted: json['delivery_remoted'] as bool?,
      deliverySplited: json['delivery_splited'] as bool?,
      deliverySplitable: json['delivery_splitable'] as bool?,
      deliveryCompanyCode: json['delivery_company_code'] as String? ?? '',
      deliveryCompanyName: json['delivery_company_name'] as String? ?? '',
      deliveryInvoiceNumber: json['delivery_invoice_number'] as String? ?? '',
      deliveryExpiredAt: json['delivery_expired_at'] == null
          ? null
          : DateTime.parse(json['delivery_expired_at'] as String),
      deliveredAt: json['delivered_at'] == null
          ? null
          : DateTime.parse(json['delivered_at'] as String),
      deliveryCompleteAt: json['delivery_complete_at'] == null
          ? null
          : DateTime.parse(json['delivery_complete_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      progressedAt: json['progressed_at'] == null
          ? null
          : DateTime.parse(json['progressed_at'] as String),
      orderPurchaseConformedAt: json['order_purchase_conformed_at'] == null
          ? null
          : DateTime.parse(json['order_purchase_conformed_at'] as String),
      orderCompleteAt: json['order_complete_at'] == null
          ? null
          : DateTime.parse(json['order_complete_at'] as String),
      cancelReqAt: json['cancel_req_at'] == null
          ? null
          : DateTime.parse(json['cancel_req_at'] as String),
      cancelReqUserName: json['cancel_req_user_name'] as String? ?? '',
      cancelReqUserAccount: json['cancel_req_user_account'] as String? ?? '',
      cancelConfirmUserName: json['cancel_confirm_user_name'] as String? ?? '',
      cancelConfirmUserAccount:
          json['cancel_confirm_user_account'] as String? ?? '',
      cancelConfirmedAt: json['cancel_confirmed_at'] == null
          ? null
          : DateTime.parse(json['cancel_confirmed_at'] as String),
      cancelReason: json['cancel_reason'] as String? ?? '',
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      returnReqAt: json['return_req_at'] == null
          ? null
          : DateTime.parse(json['return_req_at'] as String),
      returnReqUserName: json['return_req_user_name'] as String? ?? '',
      returnReqUserAccount: json['return_req_user_account'] as String? ?? '',
      returnConfirmUserName: json['return_confirm_user_name'] as String? ?? '',
      returnConfirmUserAccount:
          json['return_confirm_user_account'] as String? ?? '',
      returnConfirmedAt: json['return_confirmed_at'] == null
          ? null
          : DateTime.parse(json['return_confirmed_at'] as String),
      returnReason: json['return_reason'] as String? ?? '',
      returnedAt: json['returned_at'] == null
          ? null
          : DateTime.parse(json['returned_at'] as String),
      exchangeReqAt: json['exchange_req_at'] == null
          ? null
          : DateTime.parse(json['exchange_req_at'] as String),
      exchangeReqUserName: json['exchange_req_user_name'] as String? ?? '',
      exchangeReqUserAccount:
          json['exchange_req_user_account'] as String? ?? '',
      exchangeConfirmUserName:
          json['exchange_confirm_user_name'] as String? ?? '',
      exchangeConfirmUserAccount:
          json['exchange_confirm_user_account'] as String? ?? '',
      exchangeConfirmedAt: json['exchange_confirmed_at'] == null
          ? null
          : DateTime.parse(json['exchange_confirmed_at'] as String),
      exchangeReason: json['exchange_reason'] as String? ?? '',
      exchangedAt: json['exchanged_at'] == null
          ? null
          : DateTime.parse(json['exchanged_at'] as String),
    );

Map<String, dynamic> _$OrdersToJson(Orders instance) => <String, dynamic>{
      'uid': instance.uid,
      'payment_id': instance.paymentId,
      'user_id': instance.userId,
      'consignor_id': instance.consignorId,
      'order_key': instance.orderKey,
      'order_type': instance.orderType,
      'order_provider': instance.orderProvider,
      'order_number': instance.orderNumber,
      'order_content': instance.orderContent,
      'ordered_at': instance.orderedAt.toIso8601String(),
      'goods_count': instance.goodsCount,
      'goods_content': instance.goodsContent,
      'orderer_name': instance.ordererName,
      'orderer_account': instance.ordererAccount,
      'orderer_phone': instance.ordererPhone,
      'orderer_phone_safe': instance.ordererPhoneSafe,
      'orderer_address': instance.ordererAddress,
      'orderer_address_detail': instance.ordererAddressDetail,
      'orderer_address_postal_code': instance.ordererAddressPostalCode,
      'receiver_name': instance.receiverName,
      'receiver_account': instance.receiverAccount,
      'receiver_phone': instance.receiverPhone,
      'receiver_phone_safe': instance.receiverPhoneSafe,
      'receiver_address': instance.receiverAddress,
      'receiver_address_detail': instance.receiverAddressDetail,
      'receiver_address_postal_code': instance.receiverAddressPostalCode,
      'price_unit': instance.priceUnit,
      'price_exchange': instance.priceExchange,
      'price_shipping': instance.priceShipping,
      'price_shipping_remoted': instance.priceShippingRemoted,
      'price_shipping_discount': instance.priceShippingDiscount,
      'tax_price': instance.taxPrice,
      'total_payment_price': instance.totalPaymentPrice,
      'paid_at': instance.paidAt?.toIso8601String(),
      'shipping_personal_code': instance.shippingPersonalCode,
      'shipping_orderer_ssn': instance.shippingOrdererSsn,
      'shipping_orderer_phone': instance.shippingOrdererPhone,
      'extras': instance.extras,
      'status': instance.status,
      'delivery_type': instance.deliveryType,
      'delivery_load_size': instance.deliveryLoadSize,
      'delivery_print_message': instance.deliveryPrintMessage,
      'delivery_remoted': instance.deliveryRemoted,
      'delivery_splited': instance.deliverySplited,
      'delivery_splitable': instance.deliverySplitable,
      'delivery_company_code': instance.deliveryCompanyCode,
      'delivery_company_name': instance.deliveryCompanyName,
      'delivery_invoice_number': instance.deliveryInvoiceNumber,
      'delivery_expired_at': instance.deliveryExpiredAt?.toIso8601String(),
      'delivered_at': instance.deliveredAt?.toIso8601String(),
      'delivery_complete_at': instance.deliveryCompleteAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'progressed_at': instance.progressedAt?.toIso8601String(),
      'order_purchase_conformed_at':
          instance.orderPurchaseConformedAt?.toIso8601String(),
      'order_complete_at': instance.orderCompleteAt?.toIso8601String(),
      'cancel_req_at': instance.cancelReqAt?.toIso8601String(),
      'cancel_req_user_name': instance.cancelReqUserName,
      'cancel_req_user_account': instance.cancelReqUserAccount,
      'cancel_confirm_user_name': instance.cancelConfirmUserName,
      'cancel_confirm_user_account': instance.cancelConfirmUserAccount,
      'cancel_confirmed_at': instance.cancelConfirmedAt?.toIso8601String(),
      'cancel_reason': instance.cancelReason,
      'canceled_at': instance.canceledAt?.toIso8601String(),
      'return_req_at': instance.returnReqAt?.toIso8601String(),
      'return_req_user_name': instance.returnReqUserName,
      'return_req_user_account': instance.returnReqUserAccount,
      'return_confirm_user_name': instance.returnConfirmUserName,
      'return_confirm_user_account': instance.returnConfirmUserAccount,
      'return_confirmed_at': instance.returnConfirmedAt?.toIso8601String(),
      'return_reason': instance.returnReason,
      'returned_at': instance.returnedAt?.toIso8601String(),
      'exchange_req_at': instance.exchangeReqAt?.toIso8601String(),
      'exchange_req_user_name': instance.exchangeReqUserName,
      'exchange_req_user_account': instance.exchangeReqUserAccount,
      'exchange_confirm_user_name': instance.exchangeConfirmUserName,
      'exchange_confirm_user_account': instance.exchangeConfirmUserAccount,
      'exchange_confirmed_at': instance.exchangeConfirmedAt?.toIso8601String(),
      'exchange_reason': instance.exchangeReason,
      'exchanged_at': instance.exchangedAt?.toIso8601String(),
    };

SellerVacation _$SellerVacationFromJson(Map<String, dynamic> json) =>
    SellerVacation(
      uid: json['uid'] as int,
      account: json['account'] as String? ?? '',
      userMode: json['user_mode'] as String? ?? '',
      vacationReason: json['vacation_reason'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$SellerVacationToJson(SellerVacation instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'account': instance.account,
      'user_mode': instance.userMode,
      'vacation_reason': instance.vacationReason,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Store _$StoreFromJson(Map<String, dynamic> json) => Store(
      uid: json['uid'] as int,
      storeStatus: json['store_status'] as String? ?? '',
      account: json['account'] as String? ?? '',
      storeName: json['store_name'] as String? ?? '',
      artiketRepresentativeCategory:
          json['artiket_representative_category'] as String? ?? '',
      artiketRepresentativeImage:
          json['artiket_representative_image'] as String? ?? '',
      storeStatusDescription: json['store_status_description'] as String? ?? '',
      businessNumber0: json['business_number0'] as String? ?? '',
      businessNumber1: json['business_number1'] as String? ?? '',
      businessCompanyName: json['business_company_name'] as String? ?? '',
      businessType: json['business_type'] as String? ?? '',
      businessCeoName: json['business_ceo_name'] as String? ?? '',
      businessCompanyAddress: json['business_company_address'] as String? ?? '',
      onlineMarketingBusinessNumber:
          json['online_marketing_business_number'] as String? ?? '',
      businessLicenseImage0: json['business_license_image0'] as String? ?? '',
      businessLicenseImage1: json['business_license_image1'] as String? ?? '',
      artiketPlaceOfShipmentName:
          json['artiket_place_of_shipment_name'] as String? ?? '',
      artiketPlaceOfShipment:
          json['artiket_place_of_shipment'] as String? ?? '',
      artiketPlaceOfShipmentNumber0:
          json['artiket_place_of_shipment_number0'] as String? ?? '',
      artiketPlaceOfShipmentNumber1:
          json['artiket_place_of_shipment_number1'] as String? ?? '',
      refundAddressName: json['refund_address_name'] as String? ?? '',
      refundAddress: json['refund_address'] as String? ?? '',
      refundNumber0: json['refund_number0'] as String? ?? '',
      refundNumber1: json['refund_number1'] as String? ?? '',
      userBank: json['user_bank'] as String? ?? '',
      userAccountName: json['user_account_name'] as String? ?? '',
      userAccountNumber: json['user_account_number'] as String? ?? '',
      userAccountImage: json['user_account_image'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
      'uid': instance.uid,
      'store_status': instance.storeStatus,
      'account': instance.account,
      'store_name': instance.storeName,
      'artiket_representative_category': instance.artiketRepresentativeCategory,
      'artiket_representative_image': instance.artiketRepresentativeImage,
      'store_status_description': instance.storeStatusDescription,
      'business_number0': instance.businessNumber0,
      'business_number1': instance.businessNumber1,
      'business_company_name': instance.businessCompanyName,
      'business_type': instance.businessType,
      'business_ceo_name': instance.businessCeoName,
      'business_company_address': instance.businessCompanyAddress,
      'online_marketing_business_number':
          instance.onlineMarketingBusinessNumber,
      'business_license_image0': instance.businessLicenseImage0,
      'business_license_image1': instance.businessLicenseImage1,
      'artiket_place_of_shipment_name': instance.artiketPlaceOfShipmentName,
      'artiket_place_of_shipment': instance.artiketPlaceOfShipment,
      'artiket_place_of_shipment_number0':
          instance.artiketPlaceOfShipmentNumber0,
      'artiket_place_of_shipment_number1':
          instance.artiketPlaceOfShipmentNumber1,
      'refund_address_name': instance.refundAddressName,
      'refund_address': instance.refundAddress,
      'refund_number0': instance.refundNumber0,
      'refund_number1': instance.refundNumber1,
      'user_bank': instance.userBank,
      'user_account_name': instance.userAccountName,
      'user_account_number': instance.userAccountNumber,
      'user_account_image': instance.userAccountImage,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      uid: json['uid'] as int,
      storeId: json['store_id'] as int,
      account: json['account'] as String? ?? '',
      userMode: json['user_mode'] as String? ?? '',
      userPassword: json['user_password'] as String? ?? '',
      userType: json['user_type'] as String? ?? '',
      sellerType: json['seller_type'] as String? ?? '',
      userNumber: json['user_number'] as String? ?? '',
      userName: json['user_name'] as String? ?? '',
      userEmail: json['user_email'] as String? ?? '',
      userBirthday: json['user_birthday'] == null
          ? null
          : DateTime.parse(json['user_birthday'] as String),
      userGender: json['user_gender'] as String? ?? '',
      userAddress: json['user_address'] as String? ?? '',
      artiketName: json['artiket_name'] as String? ?? '',
      artiketIntroduceContent:
          json['artiket_introduce_content'] as String? ?? '',
      artiketProfileImageApprove:
          json['artiket_profile_image_approve'] as String? ?? '',
      artiketProfileImage: json['artiket_profile_image'] as String? ?? '',
      artiketCoverImageApprove:
          json['artiket_cover_image_approve'] as String? ?? '',
      artiketCoverImage: json['artiket_cover_image'] as String? ?? '',
      artiketSCNumber: json['artiket_s_c_number'] as String? ?? '',
      storeStatus: json['store_status'] as String? ?? '',
      storeStatusDescription: json['store_status_description'] as String? ?? '',
      artiketRepresentativeCategory:
          json['artiket_representative_category'] as String? ?? '',
      artiketRepresentativeImage:
          json['artiket_representative_image'] as String? ?? '',
      businessNumber0: json['business_number0'] as String? ?? '',
      businessNumber1: json['business_number1'] as String? ?? '',
      businessCompanyName: json['business_company_name'] as String? ?? '',
      businessType: json['business_type'] as String? ?? '',
      businessCeoName: json['business_ceo_name'] as String? ?? '',
      businessCompanyAddress: json['business_company_address'] as String? ?? '',
      onlineMarketingBusinessNumber:
          json['online_marketing_business_number'] as String? ?? '',
      businessLicenseImage0: json['business_license_image0'] as String? ?? '',
      businessLicenseImage1: json['business_license_image1'] as String? ?? '',
      artiketPlaceOfShipmentName:
          json['artiket_place_of_shipment_name'] as String? ?? '',
      artiketPlaceOfShipment:
          json['artiket_place_of_shipment'] as String? ?? '',
      artiketPlaceOfShipmentNumber0:
          json['artiket_place_of_shipment_number0'] as String? ?? '',
      artiketPlaceOfShipmentNumber1:
          json['artiket_place_of_shipment_number1'] as String? ?? '',
      refundAddressName: json['refund_address_name'] as String? ?? '',
      refundAddress: json['refund_address'] as String? ?? '',
      refundNumber0: json['refund_number0'] as String? ?? '',
      refundNumber1: json['refund_number1'] as String? ?? '',
      userBank: json['user_bank'] as String? ?? '',
      userAccountName: json['user_account_name'] as String? ?? '',
      userAccountNumber: json['user_account_number'] as String? ?? '',
      userAccountImage: json['user_account_image'] as String? ?? '',
      usernameUsed: json['username_used'] as bool?,
      usernameUsedAt: json['username_used_at'] == null
          ? null
          : DateTime.parse(json['username_used_at'] as String),
      email: json['email'] as String? ?? '',
      emailValid: json['email_valid'] as bool?,
      phone: json['phone'] as String? ?? '',
      phoneValid: json['phone_valid'] as bool?,
      userPhone: json['user_phone'] as String? ?? '',
      userFirstName: json['user_first_name'] as String? ?? '',
      userLastName: json['user_last_name'] as String? ?? '',
      userNickname: json['user_nickname'] as String? ?? '',
      userBirth: json['user_birth'] as String? ?? '',
      userDialCode: json['user_dial_code'] as String? ?? '',
      userIsoCode: json['user_iso_code'] as String? ?? '',
      profileImage: json['profile_image'] as String? ?? '',
      profileBio: json['profile_bio'] as String? ?? '',
      roleType: json['role_type'] as String? ?? '',
      roleLevel: json['role_level'] as int?,
      geoLatitude: (json['geo_latitude'] as num?)?.toDouble(),
      geoLongitude: (json['geo_longitude'] as num?)?.toDouble(),
      timezone: (json['timezone'] as num?)?.toDouble(),
      blockedIssue: json['blocked_issue'] as String? ?? '',
      blocked: json['blocked'] as bool?,
      blockedAt: json['blocked_at'] == null
          ? null
          : DateTime.parse(json['blocked_at'] as String),
      agreed: json['agreed'] as String? ?? '',
      agreedAt: json['agreed_at'] == null
          ? null
          : DateTime.parse(json['agreed_at'] as String),
      memo: json['memo'] as String? ?? '',
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'uid': instance.uid,
      'store_id': instance.storeId,
      'account': instance.account,
      'user_mode': instance.userMode,
      'user_password': instance.userPassword,
      'user_type': instance.userType,
      'seller_type': instance.sellerType,
      'user_number': instance.userNumber,
      'user_name': instance.userName,
      'user_email': instance.userEmail,
      'user_birthday': instance.userBirthday?.toIso8601String(),
      'user_gender': instance.userGender,
      'user_address': instance.userAddress,
      'artiket_name': instance.artiketName,
      'artiket_introduce_content': instance.artiketIntroduceContent,
      'artiket_profile_image_approve': instance.artiketProfileImageApprove,
      'artiket_profile_image': instance.artiketProfileImage,
      'artiket_cover_image_approve': instance.artiketCoverImageApprove,
      'artiket_cover_image': instance.artiketCoverImage,
      'artiket_s_c_number': instance.artiketSCNumber,
      'store_status': instance.storeStatus,
      'store_status_description': instance.storeStatusDescription,
      'artiket_representative_category': instance.artiketRepresentativeCategory,
      'artiket_representative_image': instance.artiketRepresentativeImage,
      'business_number0': instance.businessNumber0,
      'business_number1': instance.businessNumber1,
      'business_company_name': instance.businessCompanyName,
      'business_type': instance.businessType,
      'business_ceo_name': instance.businessCeoName,
      'business_company_address': instance.businessCompanyAddress,
      'online_marketing_business_number':
          instance.onlineMarketingBusinessNumber,
      'business_license_image0': instance.businessLicenseImage0,
      'business_license_image1': instance.businessLicenseImage1,
      'artiket_place_of_shipment_name': instance.artiketPlaceOfShipmentName,
      'artiket_place_of_shipment': instance.artiketPlaceOfShipment,
      'artiket_place_of_shipment_number0':
          instance.artiketPlaceOfShipmentNumber0,
      'artiket_place_of_shipment_number1':
          instance.artiketPlaceOfShipmentNumber1,
      'refund_address_name': instance.refundAddressName,
      'refund_address': instance.refundAddress,
      'refund_number0': instance.refundNumber0,
      'refund_number1': instance.refundNumber1,
      'user_bank': instance.userBank,
      'user_account_name': instance.userAccountName,
      'user_account_number': instance.userAccountNumber,
      'user_account_image': instance.userAccountImage,
      'username_used': instance.usernameUsed,
      'username_used_at': instance.usernameUsedAt?.toIso8601String(),
      'email': instance.email,
      'email_valid': instance.emailValid,
      'phone': instance.phone,
      'phone_valid': instance.phoneValid,
      'user_phone': instance.userPhone,
      'user_first_name': instance.userFirstName,
      'user_last_name': instance.userLastName,
      'user_nickname': instance.userNickname,
      'user_birth': instance.userBirth,
      'user_dial_code': instance.userDialCode,
      'user_iso_code': instance.userIsoCode,
      'profile_image': instance.profileImage,
      'profile_bio': instance.profileBio,
      'role_type': instance.roleType,
      'role_level': instance.roleLevel,
      'geo_latitude': instance.geoLatitude,
      'geo_longitude': instance.geoLongitude,
      'timezone': instance.timezone,
      'blocked_issue': instance.blockedIssue,
      'blocked': instance.blocked,
      'blocked_at': instance.blockedAt?.toIso8601String(),
      'agreed': instance.agreed,
      'agreed_at': instance.agreedAt?.toIso8601String(),
      'memo': instance.memo,
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

UserAccessCode _$UserAccessCodeFromJson(Map<String, dynamic> json) =>
    UserAccessCode(
      uid: json['uid'] as int,
      userId: json['user_id'] as int,
      accessCode: json['access_code'] as String? ?? '',
      accessExpiredAt: json['access_expired_at'] == null
          ? null
          : DateTime.parse(json['access_expired_at'] as String),
      sessionToken: json['session_token'] as String? ?? '',
      extras: json['extras'],
      status: json['status'] as String? ?? '',
      requestedAt: json['requested_at'] == null
          ? null
          : DateTime.parse(json['requested_at'] as String),
      accessedAt: json['accessed_at'] == null
          ? null
          : DateTime.parse(json['accessed_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$UserAccessCodeToJson(UserAccessCode instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'access_code': instance.accessCode,
      'access_expired_at': instance.accessExpiredAt?.toIso8601String(),
      'session_token': instance.sessionToken,
      'extras': instance.extras,
      'status': instance.status,
      'requested_at': instance.requestedAt?.toIso8601String(),
      'accessed_at': instance.accessedAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

UserAuth _$UserAuthFromJson(Map<String, dynamic> json) => UserAuth(
      uid: json['uid'] as int,
      userId: json['user_id'] as int?,
      authType: json['auth_type'] as String? ?? '',
      authId: json['auth_id'] as String? ?? '',
      authToken: json['auth_token'] as String? ?? '',
      authExpired: json['auth_expired'] == null
          ? null
          : DateTime.parse(json['auth_expired'] as String),
      authEncryption: json['auth_encryption'] as String? ?? '',
      authString: json['auth_string'] as String? ?? '',
      authResetToken: json['auth_reset_token'] as String? ?? '',
      authResetExpired: json['auth_reset_expired'] == null
          ? null
          : DateTime.parse(json['auth_reset_expired'] as String),
      snsJoin: json['sns_join'] as bool,
      snsAccessToken: json['sns_access_token'] as String? ?? '',
      smsCode: json['sms_code'] as String? ?? '',
      smsExpiredAt: json['sms_expired_at'] == null
          ? null
          : DateTime.parse(json['sms_expired_at'] as String),
      smsExtras: json['sms_extras'],
      emailVerify: json['email_verify'] as bool,
      emailCode: json['email_code'] as String? ?? '',
      emailExpiredAt: json['email_expired_at'] == null
          ? null
          : DateTime.parse(json['email_expired_at'] as String),
      emailExtras: json['email_extras'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$UserAuthToJson(UserAuth instance) => <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'auth_type': instance.authType,
      'auth_id': instance.authId,
      'auth_token': instance.authToken,
      'auth_expired': instance.authExpired?.toIso8601String(),
      'auth_encryption': instance.authEncryption,
      'auth_string': instance.authString,
      'auth_reset_token': instance.authResetToken,
      'auth_reset_expired': instance.authResetExpired?.toIso8601String(),
      'sns_join': instance.snsJoin,
      'sns_access_token': instance.snsAccessToken,
      'sms_code': instance.smsCode,
      'sms_expired_at': instance.smsExpiredAt?.toIso8601String(),
      'sms_extras': instance.smsExtras,
      'email_verify': instance.emailVerify,
      'email_code': instance.emailCode,
      'email_expired_at': instance.emailExpiredAt?.toIso8601String(),
      'email_extras': instance.emailExtras,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

UserDevice _$UserDeviceFromJson(Map<String, dynamic> json) => UserDevice(
      uid: json['uid'] as int,
      userId: json['user_id'] as int?,
      deviceId: json['device_id'] as String? ?? '',
      deviceType: json['device_type'] as String? ?? '',
      deviceName: json['device_name'] as String? ?? '',
      deviceLocale: json['device_locale'] as String? ?? '',
      deviceModel: json['device_model'] as String? ?? '',
      deviceDeny: json['device_deny'] as bool?,
      deviceUserAgent: json['device_user_agent'] as String? ?? '',
      osType: json['os_type'] as String? ?? '',
      osVersion: json['os_version'] as String? ?? '',
      appVersion: json['app_version'] as String? ?? '',
      appPushToken: json['app_push_token'] as String? ?? '',
      geoLatitude: (json['geo_latitude'] as num?)?.toDouble(),
      geoLongitude: (json['geo_longitude'] as num?)?.toDouble(),
      pushAllowed: json['push_allowed'] as bool?,
      pushAllowedAt: json['push_allowed_at'] == null
          ? null
          : DateTime.parse(json['push_allowed_at'] as String),
      locationAllowed: json['location_allowed'] as bool?,
      locationAllowedAt: json['location_allowed_at'] == null
          ? null
          : DateTime.parse(json['location_allowed_at'] as String),
      lastestConnectedAt:
          DateTime.parse(json['lastest_connected_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$UserDeviceToJson(UserDevice instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'device_id': instance.deviceId,
      'device_type': instance.deviceType,
      'device_name': instance.deviceName,
      'device_locale': instance.deviceLocale,
      'device_model': instance.deviceModel,
      'device_deny': instance.deviceDeny,
      'device_user_agent': instance.deviceUserAgent,
      'os_type': instance.osType,
      'os_version': instance.osVersion,
      'app_version': instance.appVersion,
      'app_push_token': instance.appPushToken,
      'geo_latitude': instance.geoLatitude,
      'geo_longitude': instance.geoLongitude,
      'push_allowed': instance.pushAllowed,
      'push_allowed_at': instance.pushAllowedAt?.toIso8601String(),
      'location_allowed': instance.locationAllowed,
      'location_allowed_at': instance.locationAllowedAt?.toIso8601String(),
      'lastest_connected_at': instance.lastestConnectedAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

UserRelation _$UserRelationFromJson(Map<String, dynamic> json) => UserRelation(
      key: json['_key'] as String? ?? '',
      userId: json['user_id'] as int,
      relationTarget: json['relation_target'] as String? ?? '',
      relationTargetId: json['relation_target_id'] as String? ?? '',
      relationTargetTitle: json['relation_target_title'] as String? ?? '',
      relationAction: json['relation_action'] as String? ?? '',
      relationContent: json['relation_content'] as String? ?? '',
      linked: json['linked'] as bool,
      linkedAt: json['linked_at'] == null
          ? null
          : DateTime.parse(json['linked_at'] as String),
      extras: json['extras'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$UserRelationToJson(UserRelation instance) =>
    <String, dynamic>{
      '_key': instance.key,
      'user_id': instance.userId,
      'relation_target': instance.relationTarget,
      'relation_target_id': instance.relationTargetId,
      'relation_target_title': instance.relationTargetTitle,
      'relation_action': instance.relationAction,
      'relation_content': instance.relationContent,
      'linked': instance.linked,
      'linked_at': instance.linkedAt?.toIso8601String(),
      'extras': instance.extras,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Billing _$BillingFromJson(Map<String, dynamic> json) => Billing(
      uid: json['uid'] as int,
      userId: json['user_id'] as int,
      cardCode: json['card_code'] as String? ?? '',
      cardName: json['card_name'] as String? ?? '',
      cardNumber: json['card_number'] as String? ?? '',
      cardExpirationYear: json['card_expiration_year'] as String? ?? '',
      cardExpirationMonth: json['card_expiration_month'] as String? ?? '',
      cardPlaceholderName: json['card_placeholder_name'] as String? ?? '',
      cardEncData: json['card_enc_data'] as String? ?? '',
      isPrimary: json['is_primary'] as bool,
      isPrimaryAt: json['is_primary_at'] == null
          ? null
          : DateTime.parse(json['is_primary_at'] as String),
      billingGateway: json['billing_gateway'] as String? ?? '',
      billingOrderUid: json['billing_order_uid'] as String? ?? '',
      billingTransactionUid: json['billing_transaction_uid'] as String? ?? '',
      billingData: json['billing_data'],
      billingKey: json['billing_key'] as String? ?? '',
      authorized: json['authorized'] as bool,
      authorizedAt: json['authorized_at'] == null
          ? null
          : DateTime.parse(json['authorized_at'] as String),
      status: json['status'] as String? ?? '',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$BillingToJson(Billing instance) => <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'card_code': instance.cardCode,
      'card_name': instance.cardName,
      'card_number': instance.cardNumber,
      'card_expiration_year': instance.cardExpirationYear,
      'card_expiration_month': instance.cardExpirationMonth,
      'card_placeholder_name': instance.cardPlaceholderName,
      'card_enc_data': instance.cardEncData,
      'is_primary': instance.isPrimary,
      'is_primary_at': instance.isPrimaryAt?.toIso8601String(),
      'billing_gateway': instance.billingGateway,
      'billing_order_uid': instance.billingOrderUid,
      'billing_transaction_uid': instance.billingTransactionUid,
      'billing_data': instance.billingData,
      'billing_key': instance.billingKey,
      'authorized': instance.authorized,
      'authorized_at': instance.authorizedAt?.toIso8601String(),
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Expense _$ExpenseFromJson(Map<String, dynamic> json) => Expense(
      uid: json['uid'] as int,
      storeId: json['store_id'] as int?,
      receiptId: json['receipt_id'] as int?,
      type: json['type'] as String? ?? '',
      purpose: json['purpose'] as String? ?? '',
      settled: json['settled'] as bool?,
      settledAt: json['settled_at'] == null
          ? null
          : DateTime.parse(json['settled_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$ExpenseToJson(Expense instance) => <String, dynamic>{
      'uid': instance.uid,
      'store_id': instance.storeId,
      'receipt_id': instance.receiptId,
      'type': instance.type,
      'purpose': instance.purpose,
      'settled': instance.settled,
      'settled_at': instance.settledAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
      uid: json['uid'] as int,
      paymentGateway: json['payment_gateway'] as String? ?? '',
      paymentMethod: json['payment_method'] as String? ?? '',
      paymentArea: json['payment_area'] as String? ?? '',
      paymentFee: (json['payment_fee'] as num?)?.toDouble(),
      paymentClientId: json['payment_client_id'] as String? ?? '',
      paymentClientSecret: json['payment_client_secret'] as String? ?? '',
      sortOrder: json['sort_order'] as int,
      createdAt: json['created_at'] as Object,
      updatedAt: json['updated_at'] as Object,
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'],
    );

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'uid': instance.uid,
      'payment_gateway': instance.paymentGateway,
      'payment_method': instance.paymentMethod,
      'payment_area': instance.paymentArea,
      'payment_fee': instance.paymentFee,
      'payment_client_id': instance.paymentClientId,
      'payment_client_secret': instance.paymentClientSecret,
      'sort_order': instance.sortOrder,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'archived': instance.archived,
      'archived_at': instance.archivedAt,
    };

PrepaidCard _$PrepaidCardFromJson(Map<String, dynamic> json) => PrepaidCard(
      uid: json['uid'] as int,
      cardCode: json['card_code'] as int?,
      cardName: json['card_name'] as String? ?? '',
      amount: (json['amount'] as num?)?.toDouble(),
      sellingPrice: (json['selling_price'] as num?)?.toDouble(),
      extras: json['extras'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$PrepaidCardToJson(PrepaidCard instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'card_code': instance.cardCode,
      'card_name': instance.cardName,
      'amount': instance.amount,
      'selling_price': instance.sellingPrice,
      'extras': instance.extras,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Receipt _$ReceiptFromJson(Map<String, dynamic> json) => Receipt(
      uid: json['uid'] as int,
      userId: json['user_id'] as int,
      orderUid: json['order_uid'] as String? ?? '',
      orderLanguage: json['order_language'] as String? ?? '',
      storeId: json['store_id'] as int,
      productId: json['product_id'] as int,
      productData: json['product_data'],
      orderer: json['orderer'],
      billing: json['billing'],
      extras: json['extras'],
      paymentGateway: json['payment_gateway'] as String? ?? '',
      paymentMethod: json['payment_method'] as String? ?? '',
      paymentHeaders: json['payment_headers'],
      paymentRegion: json['payment_region'] as String? ?? '',
      paymentUnit: json['payment_unit'] as String? ?? '',
      paymentOrigin: (json['payment_origin'] as num?)?.toDouble(),
      paymentDiscount: (json['payment_discount'] as num?)?.toDouble(),
      paymentAmount: (json['payment_amount'] as num?)?.toDouble(),
      paymentTax: (json['payment_tax'] as num?)?.toDouble(),
      paymentShipping: (json['payment_shipping'] as num?)?.toDouble(),
      paymentFee: (json['payment_fee'] as num?)?.toDouble(),
      paymentTotal: (json['payment_total'] as num?)?.toDouble(),
      baseTid: json['base_tid'] as int?,
      extraTid: json['extra_tid'] as int?,
      transactionType: json['transaction_type'] as String? ?? '',
      transactionTotal: (json['transaction_total'] as num?)?.toDouble(),
      transactionUid: json['transaction_uid'] as String? ?? '',
      transactionData: json['transaction_data'] as String? ?? '',
      transactionAt: json['transaction_at'] == null
          ? null
          : DateTime.parse(json['transaction_at'] as String),
      vbankNum: json['vbank_num'] as String? ?? '',
      vbankDate: json['vbank_date'] as String? ?? '',
      vbankName: json['vbank_name'] as String? ?? '',
      ordered: json['ordered'] as bool?,
      orderedAt: json['ordered_at'] == null
          ? null
          : DateTime.parse(json['ordered_at'] as String),
      paidUnit: json['paid_unit'] as String? ?? '',
      paidExchange: (json['paid_exchange'] as num?)?.toDouble(),
      paidTotal: (json['paid_total'] as num?)?.toDouble(),
      paid: json['paid'] as bool?,
      paidAt: json['paid_at'] == null
          ? null
          : DateTime.parse(json['paid_at'] as String),
      cancelReason: json['cancel_reason'] as String? ?? '',
      cancelReasonDetail: json['cancel_reason_detail'] as String? ?? '',
      cancelled: json['cancelled'] as bool?,
      cancelledAt: json['cancelled_at'] == null
          ? null
          : DateTime.parse(json['cancelled_at'] as String),
      refundUnit: json['refund_unit'] as String? ?? '',
      refundTotal: (json['refund_total'] as num?)?.toDouble(),
      refunded: json['refunded'] as bool?,
      refundedAt: json['refunded_at'] == null
          ? null
          : DateTime.parse(json['refunded_at'] as String),
      settlementTotal: (json['settlement_total'] as num?)?.toDouble(),
      settled: json['settled'] as bool?,
      settledAt: json['settled_at'] == null
          ? null
          : DateTime.parse(json['settled_at'] as String),
      status: json['status'] as String? ?? '',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$ReceiptToJson(Receipt instance) => <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'order_uid': instance.orderUid,
      'order_language': instance.orderLanguage,
      'store_id': instance.storeId,
      'product_id': instance.productId,
      'product_data': instance.productData,
      'orderer': instance.orderer,
      'billing': instance.billing,
      'extras': instance.extras,
      'payment_gateway': instance.paymentGateway,
      'payment_method': instance.paymentMethod,
      'payment_headers': instance.paymentHeaders,
      'payment_region': instance.paymentRegion,
      'payment_unit': instance.paymentUnit,
      'payment_origin': instance.paymentOrigin,
      'payment_discount': instance.paymentDiscount,
      'payment_amount': instance.paymentAmount,
      'payment_tax': instance.paymentTax,
      'payment_shipping': instance.paymentShipping,
      'payment_fee': instance.paymentFee,
      'payment_total': instance.paymentTotal,
      'base_tid': instance.baseTid,
      'extra_tid': instance.extraTid,
      'transaction_type': instance.transactionType,
      'transaction_total': instance.transactionTotal,
      'transaction_uid': instance.transactionUid,
      'transaction_data': instance.transactionData,
      'transaction_at': instance.transactionAt?.toIso8601String(),
      'vbank_num': instance.vbankNum,
      'vbank_date': instance.vbankDate,
      'vbank_name': instance.vbankName,
      'ordered': instance.ordered,
      'ordered_at': instance.orderedAt?.toIso8601String(),
      'paid_unit': instance.paidUnit,
      'paid_exchange': instance.paidExchange,
      'paid_total': instance.paidTotal,
      'paid': instance.paid,
      'paid_at': instance.paidAt?.toIso8601String(),
      'cancel_reason': instance.cancelReason,
      'cancel_reason_detail': instance.cancelReasonDetail,
      'cancelled': instance.cancelled,
      'cancelled_at': instance.cancelledAt?.toIso8601String(),
      'refund_unit': instance.refundUnit,
      'refund_total': instance.refundTotal,
      'refunded': instance.refunded,
      'refunded_at': instance.refundedAt?.toIso8601String(),
      'settlement_total': instance.settlementTotal,
      'settled': instance.settled,
      'settled_at': instance.settledAt?.toIso8601String(),
      'status': instance.status,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) => Subscription(
      uid: json['uid'] as int,
      userId: json['user_id'] as int,
      productId: json['product_id'] as int,
      receiptId: json['receipt_id'] as int,
      subscribeType: json['subscribe_type'] as String? ?? '',
      subscribeIssueType: json['subscribe_issue_type'] as String? ?? '',
      subscribeExpiredAt: json['subscribe_expired_at'] == null
          ? null
          : DateTime.parse(json['subscribe_expired_at'] as String),
      issuedAt: json['issued_at'] == null
          ? null
          : DateTime.parse(json['issued_at'] as String),
      extras: json['extras'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'product_id': instance.productId,
      'receipt_id': instance.receiptId,
      'subscribe_type': instance.subscribeType,
      'subscribe_issue_type': instance.subscribeIssueType,
      'subscribe_expired_at': instance.subscribeExpiredAt?.toIso8601String(),
      'issued_at': instance.issuedAt?.toIso8601String(),
      'extras': instance.extras,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      uid: json['uid'] as int,
      userId: json['user_id'] as int?,
      transactionUid: json['transaction_uid'] as String? ?? '',
      refId: json['ref_id'] as String? ?? '',
      type: json['type'] as String? ?? '',
      paidTotal: (json['paid_total'] as num?)?.toDouble(),
      status: json['status'] as String? ?? '',
      data: json['data'],
      extras: json['extras'],
      receiptId: json['receipt_id'] as int?,
      targetId: json['target_id'] as int?,
      transactionName: json['transaction_name'] as String? ?? '',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'transaction_uid': instance.transactionUid,
      'ref_id': instance.refId,
      'type': instance.type,
      'paid_total': instance.paidTotal,
      'status': instance.status,
      'data': instance.data,
      'extras': instance.extras,
      'receipt_id': instance.receiptId,
      'target_id': instance.targetId,
      'transaction_name': instance.transactionName,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Posts _$PostsFromJson(Map<String, dynamic> json) => Posts(
      uid: json['uid'] as int,
      postNumber: json['post_number'] as String? ?? '',
      postType: json['post_type'] as String? ?? '',
      postGroup: json['post_group'] as String? ?? '',
      postParentTarget: json['post_parent_target'] as String? ?? '',
      postParentId: json['post_parent_id'] as int?,
      postDepth: json['post_depth'] as int?,
      postOrder: json['post_order'] as int?,
      postTitle: json['post_title'] as String? ?? '',
      postContent: json['post_content'] as String? ?? '',
      postMarkdownUsed: json['post_markdown_used'] as bool?,
      postMarkdown: json['post_markdown'] as String? ?? '',
      postSummary: json['post_summary'] as String? ?? '',
      linkedTarget: json['linked_target'] as String? ?? '',
      linkedTargetId: json['linked_target_id'] as String? ?? '',
      tags: json['tags'] as String? ?? '',
      campaignId: json['campaign_id'] as int?,
      userId: json['user_id'] as int?,
      userName: json['user_name'] as String? ?? '',
      userEmail: json['user_email'] as String? ?? '',
      userPassword: json['user_password'] as String? ?? '',
      profileImage: json['profile_image'] as String? ?? '',
      permission: json['permission'] as int?,
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      hidden: json['hidden'] as bool,
      hiddenAt: json['hidden_at'] == null
          ? null
          : DateTime.parse(json['hidden_at'] as String),
      blocked: json['blocked'] as bool,
      blockedAt: json['blocked_at'] == null
          ? null
          : DateTime.parse(json['blocked_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$PostsToJson(Posts instance) => <String, dynamic>{
      'uid': instance.uid,
      'post_number': instance.postNumber,
      'post_type': instance.postType,
      'post_group': instance.postGroup,
      'post_parent_target': instance.postParentTarget,
      'post_parent_id': instance.postParentId,
      'post_depth': instance.postDepth,
      'post_order': instance.postOrder,
      'post_title': instance.postTitle,
      'post_content': instance.postContent,
      'post_markdown_used': instance.postMarkdownUsed,
      'post_markdown': instance.postMarkdown,
      'post_summary': instance.postSummary,
      'linked_target': instance.linkedTarget,
      'linked_target_id': instance.linkedTargetId,
      'tags': instance.tags,
      'campaign_id': instance.campaignId,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_email': instance.userEmail,
      'user_password': instance.userPassword,
      'profile_image': instance.profileImage,
      'permission': instance.permission,
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'hidden': instance.hidden,
      'hidden_at': instance.hiddenAt?.toIso8601String(),
      'blocked': instance.blocked,
      'blocked_at': instance.blockedAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      uid: json['uid'] as int,
      campaignId: json['campaign_id'] as int,
      storeCode: json['store_code'] as String? ?? '',
      productType: json['product_type'] as String? ?? '',
      productTarget: json['product_target'] as String? ?? '',
      productCode: json['product_code'] as String? ?? '',
      productValueUnit: json['product_value_unit'] as String? ?? '',
      productValue: (json['product_value'] as num?)?.toDouble(),
      priceUnit: json['price_unit'] as String? ?? '',
      priceOrigin: (json['price_origin'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      productName: json['product_name'] as String? ?? '',
      productThumbnail: json['product_thumbnail'] as String? ?? '',
      stockAmount: json['stock_amount'] as String? ?? '',
      extras: json['extras'],
      sortOrder: json['sort_order'] as int,
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'uid': instance.uid,
      'campaign_id': instance.campaignId,
      'store_code': instance.storeCode,
      'product_type': instance.productType,
      'product_target': instance.productTarget,
      'product_code': instance.productCode,
      'product_value_unit': instance.productValueUnit,
      'product_value': instance.productValue,
      'price_unit': instance.priceUnit,
      'price_origin': instance.priceOrigin,
      'price': instance.price,
      'product_name': instance.productName,
      'product_thumbnail': instance.productThumbnail,
      'stock_amount': instance.stockAmount,
      'extras': instance.extras,
      'sort_order': instance.sortOrder,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Resource _$ResourceFromJson(Map<String, dynamic> json) => Resource(
      uid: json['uid'] as int,
      resourceType: json['resource_type'] as String? ?? '',
      resourceKey: json['resource_key'] as String? ?? '',
      resourceTag: json['resource_tag'] as String? ?? '',
      resourceStatus: json['resource_status'] as String? ?? '',
      resourceHash: json['resource_hash'] as String? ?? '',
      resourceUrl: json['resource_url'] as String? ?? '',
      resourceOrder: json['resource_order'] as int?,
      filetype: json['filetype'] as String? ?? '',
      filesize: json['filesize'] as int?,
      filename: json['filename'] as String? ?? '',
      extension: json['extension'] as String? ?? '',
      naturalWidth: json['natural_width'] as int?,
      naturalHeight: json['natural_height'] as int?,
      uploader: json['uploader'] as String? ?? '',
      permission: json['permission'] as int?,
      createdAt: DateTime.parse(json['created_at'] as String),
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$ResourceToJson(Resource instance) => <String, dynamic>{
      'uid': instance.uid,
      'resource_type': instance.resourceType,
      'resource_key': instance.resourceKey,
      'resource_tag': instance.resourceTag,
      'resource_status': instance.resourceStatus,
      'resource_hash': instance.resourceHash,
      'resource_url': instance.resourceUrl,
      'resource_order': instance.resourceOrder,
      'filetype': instance.filetype,
      'filesize': instance.filesize,
      'filename': instance.filename,
      'extension': instance.extension,
      'natural_width': instance.naturalWidth,
      'natural_height': instance.naturalHeight,
      'uploader': instance.uploader,
      'permission': instance.permission,
      'created_at': instance.createdAt.toIso8601String(),
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

ReviewCategory _$ReviewCategoryFromJson(Map<String, dynamic> json) =>
    ReviewCategory(
      uid: json['uid'] as int,
      reviewCode: json['review_code'] as String? ?? '',
      reviewType: json['review_type'] as String? ?? '',
      reviewDesc: json['review_desc'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ReviewCategoryToJson(ReviewCategory instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'review_code': instance.reviewCode,
      'review_type': instance.reviewType,
      'review_desc': instance.reviewDesc,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

ReviewSeller _$ReviewSellerFromJson(Map<String, dynamic> json) => ReviewSeller(
      uid: json['uid'] as int,
      reviewCode: json['review_code'] as String? ?? '',
      reviewerAccount: json['reviewer_account'] as String? ?? '',
      reviewerName: json['reviewer_name'] as String? ?? '',
      storeId: json['store_id'] as int?,
      sellerId: json['seller_id'] as int?,
      sellerAccount: json['seller_account'] as String? ?? '',
      reviewStatus: json['review_status'] as String? ?? '',
      reviewDescription: json['review_description'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$ReviewSellerToJson(ReviewSeller instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'review_code': instance.reviewCode,
      'reviewer_account': instance.reviewerAccount,
      'reviewer_name': instance.reviewerName,
      'store_id': instance.storeId,
      'seller_id': instance.sellerId,
      'seller_account': instance.sellerAccount,
      'review_status': instance.reviewStatus,
      'review_description': instance.reviewDescription,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

BankAccount _$BankAccountFromJson(Map<String, dynamic> json) => BankAccount(
      uid: json['uid'] as int,
      userId: json['user_id'] as int,
      bankOwnerName: json['bank_owner_name'] as String? ?? '',
      bankOwnerAddress: json['bank_owner_address'] as String? ?? '',
      bankCountry: json['bank_country'] as String? ?? '',
      bankName: json['bank_name'] as String? ?? '',
      bankCode: json['bank_code'] as String? ?? '',
      bankAccount: json['bank_account'] as String? ?? '',
      bankRouting: json['bank_routing'] as String? ?? '',
      bankSwiftCode: json['bank_swift_code'] as String? ?? '',
      isPrimary: json['is_primary'] as bool,
      isPrimaryAt: json['is_primary_at'] == null
          ? null
          : DateTime.parse(json['is_primary_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$BankAccountToJson(BankAccount instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'bank_owner_name': instance.bankOwnerName,
      'bank_owner_address': instance.bankOwnerAddress,
      'bank_country': instance.bankCountry,
      'bank_name': instance.bankName,
      'bank_code': instance.bankCode,
      'bank_account': instance.bankAccount,
      'bank_routing': instance.bankRouting,
      'bank_swift_code': instance.bankSwiftCode,
      'is_primary': instance.isPrimary,
      'is_primary_at': instance.isPrimaryAt?.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

BankCode _$BankCodeFromJson(Map<String, dynamic> json) => BankCode(
      code: json['code'] as String? ?? '',
      type: json['type'] as String? ?? '',
      name: json['name'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$BankCodeToJson(BankCode instance) => <String, dynamic>{
      'code': instance.code,
      'type': instance.type,
      'name': instance.name,
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Profit _$ProfitFromJson(Map<String, dynamic> json) => Profit(
      uid: json['uid'] as int,
      userId: json['user_id'] as int,
      profitTarget: json['profit_target'] as String? ?? '',
      profitTargetId: json['profit_target_id'] as String? ?? '',
      profitRate: (json['profit_rate'] as num?)?.toDouble(),
      exchangeRate: (json['exchange_rate'] as num?)?.toDouble(),
      settlementId: json['settlement_id'] as int?,
      settledDateStart: json['settled_date_start'] as String? ?? '',
      settledDateEnd: json['settled_date_end'] as String? ?? '',
      totalCount: json['total_count'] as int,
      totalCompleteCount: json['total_complete_count'] as int,
      totalCancelCount: json['total_cancel_count'] as int,
      totalQuantitySmall: json['total_quantity_small'] as int?,
      totalQuantityBig: json['total_quantity_big'] as int?,
      totalUnit: json['total_unit'] as String? ?? '',
      totalOrdered: (json['total_ordered'] as num?)?.toDouble(),
      totalCancelled: (json['total_cancelled'] as num?)?.toDouble(),
      totalOrigin: (json['total_origin'] as num?)?.toDouble(),
      totalDiscount: (json['total_discount'] as num?)?.toDouble(),
      totalSales: (json['total_sales'] as num?)?.toDouble(),
      totalPayment: (json['total_payment'] as num?)?.toDouble(),
      totalPaid: (json['total_paid'] as num?)?.toDouble(),
      totalPending: (json['total_pending'] as num?)?.toDouble(),
      totalRefunded: (json['total_refunded'] as num?)?.toDouble(),
      totalPaymentFee: (json['total_payment_fee'] as num?)?.toDouble(),
      totalCompleteExpense:
          (json['total_complete_expense'] as num?)?.toDouble(),
      totalCancelExpenses: (json['total_cancel_expenses'] as num?)?.toDouble(),
      totalEtcExpenses: (json['total_etc_expenses'] as num?)?.toDouble(),
      totalEtcExpensesComment:
          json['total_etc_expenses_comment'] as String? ?? '',
      totalExpenses: (json['total_expenses'] as num?)?.toDouble(),
      totalProfit: (json['total_profit'] as num?)?.toDouble(),
      totalFee: (json['total_fee'] as num?)?.toDouble(),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      status: json['status'] as String? ?? '',
      extras: json['extras'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$ProfitToJson(Profit instance) => <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'profit_target': instance.profitTarget,
      'profit_target_id': instance.profitTargetId,
      'profit_rate': instance.profitRate,
      'exchange_rate': instance.exchangeRate,
      'settlement_id': instance.settlementId,
      'settled_date_start': instance.settledDateStart,
      'settled_date_end': instance.settledDateEnd,
      'total_count': instance.totalCount,
      'total_complete_count': instance.totalCompleteCount,
      'total_cancel_count': instance.totalCancelCount,
      'total_quantity_small': instance.totalQuantitySmall,
      'total_quantity_big': instance.totalQuantityBig,
      'total_unit': instance.totalUnit,
      'total_ordered': instance.totalOrdered,
      'total_cancelled': instance.totalCancelled,
      'total_origin': instance.totalOrigin,
      'total_discount': instance.totalDiscount,
      'total_sales': instance.totalSales,
      'total_payment': instance.totalPayment,
      'total_paid': instance.totalPaid,
      'total_pending': instance.totalPending,
      'total_refunded': instance.totalRefunded,
      'total_payment_fee': instance.totalPaymentFee,
      'total_complete_expense': instance.totalCompleteExpense,
      'total_cancel_expenses': instance.totalCancelExpenses,
      'total_etc_expenses': instance.totalEtcExpenses,
      'total_etc_expenses_comment': instance.totalEtcExpensesComment,
      'total_expenses': instance.totalExpenses,
      'total_profit': instance.totalProfit,
      'total_fee': instance.totalFee,
      'total_amount': instance.totalAmount,
      'status': instance.status,
      'extras': instance.extras,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

Settlement _$SettlementFromJson(Map<String, dynamic> json) => Settlement(
      uid: json['uid'] as int,
      userId: json['user_id'] as int,
      storeId: json['store_id'] as int?,
      settledDateStart: json['settled_date_start'] as String? ?? '',
      settledDateEnd: json['settled_date_end'] as String? ?? '',
      exchangeRate: (json['exchange_rate'] as num?)?.toDouble(),
      totalCount: json['total_count'] as int,
      totalCompleteCount: json['total_complete_count'] as int,
      totalCancelCount: json['total_cancel_count'] as int,
      totalQuantitySmall: json['total_quantity_small'] as int?,
      totalQuantityBig: json['total_quantity_big'] as int?,
      totalUnit: json['total_unit'] as String? ?? '',
      totalOrdered: (json['total_ordered'] as num?)?.toDouble(),
      totalCancelled: (json['total_cancelled'] as num?)?.toDouble(),
      totalOrigin: (json['total_origin'] as num?)?.toDouble(),
      totalDiscount: (json['total_discount'] as num?)?.toDouble(),
      totalSales: (json['total_sales'] as num?)?.toDouble(),
      totalPayment: (json['total_payment'] as num?)?.toDouble(),
      totalPaid: (json['total_paid'] as num?)?.toDouble(),
      totalPending: (json['total_pending'] as num?)?.toDouble(),
      totalRefunded: (json['total_refunded'] as num?)?.toDouble(),
      totalProfit: (json['total_profit'] as num?)?.toDouble(),
      totalFee: (json['total_fee'] as num?)?.toDouble(),
      totalTax: (json['total_tax'] as num?)?.toDouble(),
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      totalPaymentFee: (json['total_payment_fee'] as num?)?.toDouble(),
      totalCompleteExpense:
          (json['total_complete_expense'] as num?)?.toDouble(),
      totalCancelExpenses: (json['total_cancel_expenses'] as num?)?.toDouble(),
      totalEtcExpenses: (json['total_etc_expenses'] as num?)?.toDouble(),
      totalEtcExpensesComment:
          json['total_etc_expenses_comment'] as String? ?? '',
      totalExpenses: (json['total_expenses'] as num?)?.toDouble(),
      settledMethod: json['settled_method'] as String? ?? '',
      settledBankOwnerName: json['settled_bank_owner_name'] as String? ?? '',
      settledBankName: json['settled_bank_name'] as String? ?? '',
      settledBankCode: json['settled_bank_code'] as String? ?? '',
      settledBankAccount: json['settled_bank_account'] as String? ?? '',
      settledUnit: json['settled_unit'] as String? ?? '',
      settledTotal: (json['settled_total'] as num?)?.toDouble(),
      status: json['status'] as String? ?? '',
      extras: json['extras'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$SettlementToJson(Settlement instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'store_id': instance.storeId,
      'settled_date_start': instance.settledDateStart,
      'settled_date_end': instance.settledDateEnd,
      'exchange_rate': instance.exchangeRate,
      'total_count': instance.totalCount,
      'total_complete_count': instance.totalCompleteCount,
      'total_cancel_count': instance.totalCancelCount,
      'total_quantity_small': instance.totalQuantitySmall,
      'total_quantity_big': instance.totalQuantityBig,
      'total_unit': instance.totalUnit,
      'total_ordered': instance.totalOrdered,
      'total_cancelled': instance.totalCancelled,
      'total_origin': instance.totalOrigin,
      'total_discount': instance.totalDiscount,
      'total_sales': instance.totalSales,
      'total_payment': instance.totalPayment,
      'total_paid': instance.totalPaid,
      'total_pending': instance.totalPending,
      'total_refunded': instance.totalRefunded,
      'total_profit': instance.totalProfit,
      'total_fee': instance.totalFee,
      'total_tax': instance.totalTax,
      'total_amount': instance.totalAmount,
      'total_payment_fee': instance.totalPaymentFee,
      'total_complete_expense': instance.totalCompleteExpense,
      'total_cancel_expenses': instance.totalCancelExpenses,
      'total_etc_expenses': instance.totalEtcExpenses,
      'total_etc_expenses_comment': instance.totalEtcExpensesComment,
      'total_expenses': instance.totalExpenses,
      'settled_method': instance.settledMethod,
      'settled_bank_owner_name': instance.settledBankOwnerName,
      'settled_bank_name': instance.settledBankName,
      'settled_bank_code': instance.settledBankCode,
      'settled_bank_account': instance.settledBankAccount,
      'settled_unit': instance.settledUnit,
      'settled_total': instance.settledTotal,
      'status': instance.status,
      'extras': instance.extras,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

SmsMessage _$SmsMessageFromJson(Map<String, dynamic> json) => SmsMessage(
      uid: json['uid'] as int,
      smsProvider: json['sms_provider'] as String? ?? '',
      smsFrom: json['sms_from'] as String? ?? '',
      smsTo: json['sms_to'] as String? ?? '',
      smsMessage: json['sms_message'] as String? ?? '',
      test: json['test'] as bool,
      sent: json['sent'] as bool?,
      sentResult: json['sent_result'],
      sentAt: json['sent_at'] == null
          ? null
          : DateTime.parse(json['sent_at'] as String),
      requestId: json['request_id'] as String? ?? '',
      extras: json['extras'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$SmsMessageToJson(SmsMessage instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'sms_provider': instance.smsProvider,
      'sms_from': instance.smsFrom,
      'sms_to': instance.smsTo,
      'sms_message': instance.smsMessage,
      'test': instance.test,
      'sent': instance.sent,
      'sent_result': instance.sentResult,
      'sent_at': instance.sentAt?.toIso8601String(),
      'request_id': instance.requestId,
      'extras': instance.extras,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

Verify _$VerifyFromJson(Map<String, dynamic> json) => Verify(
      uid: json['uid'] as int,
      userId: json['user_id'] as int?,
      email: json['email'] as String? ?? '',
      validKey: json['valid_key'] as String? ?? '',
      validType: json['valid_type'] as bool,
      valid: json['valid'] as bool,
      validAt: json['valid_at'] == null
          ? null
          : DateTime.parse(json['valid_at'] as String),
      expiredAt: json['expired_at'] == null
          ? null
          : DateTime.parse(json['expired_at'] as String),
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      extras: json['extras'],
      resourceKey: json['resource_key'] as String? ?? '',
      resources: json['resources'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$VerifyToJson(Verify instance) => <String, dynamic>{
      'uid': instance.uid,
      'user_id': instance.userId,
      'email': instance.email,
      'valid_key': instance.validKey,
      'valid_type': instance.validType,
      'valid': instance.valid,
      'valid_at': instance.validAt?.toIso8601String(),
      'expired_at': instance.expiredAt?.toIso8601String(),
      'actived': instance.actived,
      'actived_at': instance.activedAt.toIso8601String(),
      'extras': instance.extras,
      'resource_key': instance.resourceKey,
      'resources': instance.resources,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };

VideoTransCode _$VideoTransCodeFromJson(Map<String, dynamic> json) =>
    VideoTransCode(
      uid: json['uid'] as int,
      convertType: json['convert_type'] as bool?,
      convertFile: json['convert_file'] as String? ?? '',
      convertResult: json['convert_result'],
      userId: json['user_id'] as int?,
      extras: json['extras'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$VideoTransCodeToJson(VideoTransCode instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'convert_type': instance.convertType,
      'convert_file': instance.convertFile,
      'convert_result': instance.convertResult,
      'user_id': instance.userId,
      'extras': instance.extras,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'archived': instance.archived,
      'archived_at': instance.archivedAt?.toIso8601String(),
    };
