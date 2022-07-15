// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artiket_admin_service_json.swagger.dart';

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

Map<String, dynamic> _$BasicResultToJson(BasicResult instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('error', instance.error?.toJson());
  writeNotNull('status', instance.status);
  writeNotNull('data', instance.data);
  return val;
}

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

Map<String, dynamic> _$AddressBookToJson(AddressBook instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'account': instance.account,
    'address_type': instance.addressType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('phone', instance.phone);
  writeNotNull('country', instance.country);
  writeNotNull('states', instance.states);
  writeNotNull('city', instance.city);
  val['address1'] = instance.address1;
  writeNotNull('address2', instance.address2);
  writeNotNull('zipcode', instance.zipcode);
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

Admin _$AdminFromJson(Map<String, dynamic> json) => Admin(
      uid: json['uid'] as int,
      adminId: json['admin_id'] as String? ?? '',
      adminPassword: json['admin_password'] as String? ?? '',
      adminType: json['admin_type'] as String? ?? '',
      adminName: json['admin_name'] as String? ?? '',
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

Map<String, dynamic> _$AdminToJson(Admin instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('admin_id', instance.adminId);
  writeNotNull('admin_password', instance.adminPassword);
  writeNotNull('admin_type', instance.adminType);
  writeNotNull('admin_name', instance.adminName);
  writeNotNull('admin_position', instance.adminPosition);
  writeNotNull('admin_department', instance.adminDepartment);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$AnalyticsToJson(Analytics instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hash_key', instance.hashKey);
  writeNotNull('inflow_user', instance.inflowUser);
  writeNotNull('authorized_user', instance.authorizedUser);
  writeNotNull('bounced_user', instance.bouncedUser);
  writeNotNull('dau', instance.dau);
  writeNotNull('wau', instance.wau);
  writeNotNull('guest_user', instance.guestUser);
  writeNotNull('authorized_rate', instance.authorizedRate);
  writeNotNull('bounced_rate', instance.bouncedRate);
  writeNotNull('retention', instance.retention);
  writeNotNull('date_group', instance.dateGroup);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

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

Map<String, dynamic> _$LogToJson(Log instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('hash_key', instance.hashKey);
  writeNotNull('log_type', instance.logType);
  val['timestamp'] = instance.timestamp.toIso8601String();
  writeNotNull('provider', instance.provider);
  writeNotNull('content_id', instance.contentId);
  writeNotNull('content_parent_id', instance.contentParentId);
  writeNotNull('parent_user_id', instance.parentUserId);
  writeNotNull('content_type', instance.contentType);
  writeNotNull('action', instance.action);
  writeNotNull('action_content', instance.actionContent);
  writeNotNull('extras', instance.extras);
  writeNotNull('type', instance.type);
  writeNotNull('user_id', instance.userId);
  writeNotNull('group_id', instance.groupId);
  writeNotNull('username', instance.username);
  writeNotNull('user_name', instance.userName);
  writeNotNull('user_type', instance.userType);
  writeNotNull('role_type', instance.roleType);
  writeNotNull('role_level', instance.roleLevel);
  writeNotNull('app_id', instance.appId);
  writeNotNull('app_version', instance.appVersion);
  writeNotNull('os_type', instance.osType);
  writeNotNull('os_version', instance.osVersion);
  writeNotNull('device_id', instance.deviceId);
  writeNotNull('device_type', instance.deviceType);
  writeNotNull('device_name', instance.deviceName);
  writeNotNull('device_locale', instance.deviceLocale);
  writeNotNull('device_model', instance.deviceModel);
  writeNotNull('device_user_agent', instance.deviceUserAgent);
  writeNotNull('push_token', instance.pushToken);
  writeNotNull('invite_code', instance.inviteCode);
  writeNotNull('reward_user_id', instance.rewardUserId);
  writeNotNull('reward_code', instance.rewardCode);
  writeNotNull('reward_value', instance.rewardValue);
  writeNotNull('bonus_value', instance.bonusValue);
  writeNotNull('bonus_reason', instance.bonusReason);
  writeNotNull('value', instance.value);
  writeNotNull('voting_code', instance.votingCode);
  writeNotNull('voting_power', instance.votingPower);
  writeNotNull('req_ip', instance.reqIp);
  writeNotNull('req_agent', instance.reqAgent);
  writeNotNull('req_path', instance.reqPath);
  writeNotNull('req_method', instance.reqMethod);
  writeNotNull('req_params', instance.reqParams);
  writeNotNull('req_body', instance.reqBody);
  writeNotNull('res_status_code', instance.resStatusCode);
  writeNotNull('res_content_type', instance.resContentType);
  writeNotNull(
      'res_access_control_allow_origin', instance.resAccessControlAllowOrigin);
  writeNotNull('res_error', instance.resError);
  writeNotNull('date_group', instance.dateGroup);
  writeNotNull('status', instance.status);
  val['created_at'] = instance.createdAt.toIso8601String();
  return val;
}

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

Map<String, dynamic> _$AppToJson(App instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'app_id': instance.appId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('app_name', instance.appName);
  val['app_os'] = instance.appOs;
  writeNotNull('app_version', instance.appVersion);
  writeNotNull('app_version_minimum', instance.appVersionMinimum);
  writeNotNull('app_version_review', instance.appVersionReview);
  writeNotNull('app_update_link', instance.appUpdateLink);
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$ChannelToJson(Channel instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('store_id', instance.storeId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('rules', instance.rules);
  val['name'] = instance.name;
  writeNotNull('type', instance.type);
  writeNotNull('logo_image', instance.logoImage);
  writeNotNull('cover_image', instance.coverImage);
  writeNotNull('description', instance.description);
  val['sort_order'] = instance.sortOrder;
  val['hidden'] = instance.hidden;
  writeNotNull('hidden_at', instance.hiddenAt?.toIso8601String());
  val['blocked'] = instance.blocked;
  writeNotNull('blocked_at', instance.blockedAt?.toIso8601String());
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$CommentToJson(Comment instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item_code', instance.itemCode);
  writeNotNull('order_number', instance.orderNumber);
  val['comment_key'] = instance.commentKey;
  val['comment_provider'] = instance.commentProvider;
  writeNotNull('comment_target', instance.commentTarget);
  writeNotNull('comment_target_id', instance.commentTargetId);
  writeNotNull('comment_type', instance.commentType);
  writeNotNull('comment_parent_target', instance.commentParentTarget);
  writeNotNull('comment_parent_id', instance.commentParentId);
  writeNotNull('comment_depth', instance.commentDepth);
  writeNotNull('comment_order', instance.commentOrder);
  writeNotNull('comment_title', instance.commentTitle);
  val['comment_content'] = instance.commentContent;
  val['comment_emotion'] = instance.commentEmotion;
  val['comment_image_url'] = instance.commentImageUrl;
  writeNotNull('linked_target', instance.linkedTarget);
  writeNotNull('linked_target_id', instance.linkedTargetId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('user_name', instance.userName);
  writeNotNull('user_password', instance.userPassword);
  writeNotNull('extras', instance.extras);
  val['hidden'] = instance.hidden;
  writeNotNull('hidden_at', instance.hiddenAt?.toIso8601String());
  val['blocked'] = instance.blocked;
  writeNotNull('blocked_at', instance.blockedAt?.toIso8601String());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  val['replied'] = instance.replied;
  writeNotNull('replied_at', instance.repliedAt?.toIso8601String());
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$ContentToJson(Content instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('admin_id', instance.adminId);
  writeNotNull('content_group', instance.contentGroup);
  writeNotNull('content_type', instance.contentType);
  writeNotNull('content_language', instance.contentLanguage);
  writeNotNull('content_title', instance.contentTitle);
  writeNotNull('content_html', instance.contentHtml);
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$CategoryToJson(Category instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'code': instance.code,
    'category1Code': instance.category1Code,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('category1Name', instance.category1Name);
  val['category2Code'] = instance.category2Code;
  writeNotNull('category2Name', instance.category2Name);
  val['category3Code'] = instance.category3Code;
  writeNotNull('category3Name', instance.category3Name);
  val['categoryCode'] = instance.categoryCode;
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

CategoryNotice _$CategoryNoticeFromJson(Map<String, dynamic> json) =>
    CategoryNotice(
      uid: json['uid'] as int,
      categoryNotice: json['categoryNotice'] as String? ?? '',
      categoryNoticeList: json['categoryNoticeList'] as String? ?? '',
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$CategoryNoticeToJson(CategoryNotice instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('categoryNotice', instance.categoryNotice);
  writeNotNull('categoryNoticeList', instance.categoryNoticeList);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

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

Map<String, dynamic> _$DeliveryToJson(Delivery instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'item_code': instance.itemCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('delivery_template', instance.deliveryTemplate);
  writeNotNull('delivery_method', instance.deliveryMethod);
  writeNotNull('delivery_fee_0', instance.deliveryFee0);
  writeNotNull('delivery_island', instance.deliveryIsland);
  writeNotNull('delivery_fee_1', instance.deliveryFee1);
  writeNotNull('delivery_fee_2', instance.deliveryFee2);
  writeNotNull('place_of_shipment', instance.placeOfShipment);
  writeNotNull('refund_delivery_template', instance.refundDeliveryTemplate);
  val['refund_delivery_method'] = instance.refundDeliveryMethod;
  val['refund_courier_company'] = instance.refundCourierCompany;
  writeNotNull('refund_delivery_fee_0', instance.refundDeliveryFee0);
  writeNotNull('refund_delivery_fee_1', instance.refundDeliveryFee1);
  writeNotNull('refund_address', instance.refundAddress);
  writeNotNull('refund_notice', instance.refundNotice);
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$InventoryToJson(Inventory instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'store_id': instance.storeId,
    'account': instance.account,
    'item_status': instance.itemStatus,
    'item_code': instance.itemCode,
    'item_name': instance.itemName,
    'item_price': instance.itemPrice,
    'item_discount_price': instance.itemDiscountPrice,
    'item_described': instance.itemDescribed,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item_detail', instance.itemDetail);
  val['item_total_count'] = instance.itemTotalCount;
  val['item_sold_count'] = instance.itemSoldCount;
  val['item_category_0'] = instance.itemCategory0;
  val['item_category_1'] = instance.itemCategory1;
  val['item_category_2'] = instance.itemCategory2;
  writeNotNull('item_notice', instance.itemNotice);
  writeNotNull('item_notice_detail', instance.itemNoticeDetail);
  writeNotNull('option_list0', instance.optionList0);
  writeNotNull('option_list1', instance.optionList1);
  val['handmade_item'] = instance.handmadeItem;
  writeNotNull('handmade_period', instance.handmadePeriod);
  val['sales_start_at'] = instance.salesStartAt.toIso8601String();
  val['sales_end_at'] = instance.salesEndAt.toIso8601String();
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$OptionsToJson(Options instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'item_code': instance.itemCode,
    'option_type': instance.optionType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('option_template', instance.optionTemplate);
  writeNotNull('option_name', instance.optionName);
  writeNotNull('option_value', instance.optionValue);
  writeNotNull('option_price', instance.optionPrice);
  writeNotNull('option_count', instance.optionCount);
  writeNotNull('base_option', instance.baseOption);
  writeNotNull('question_option', instance.questionOption);
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$TagsToJson(Tags instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'item_code': instance.itemCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tag_0', instance.tag0);
  writeNotNull('tag_1', instance.tag1);
  writeNotNull('tag_2', instance.tag2);
  writeNotNull('tag_3', instance.tag3);
  writeNotNull('tag_4', instance.tag4);
  writeNotNull('tag_5', instance.tag5);
  writeNotNull('tag_6', instance.tag6);
  writeNotNull('tag_7', instance.tag7);
  writeNotNull('tag_8', instance.tag8);
  writeNotNull('tag_9', instance.tag9);
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$MessagesToJson(Messages instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'channel_id': instance.channelId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('images', instance.images);
  writeNotNull('links', instance.links);
  writeNotNull('user_id', instance.userId);
  writeNotNull('user_name', instance.userName);
  writeNotNull('user_email', instance.userEmail);
  writeNotNull('profile_image', instance.profileImage);
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$CartToJson(Cart instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('inventory_id', instance.inventoryId);
  writeNotNull('option_id', instance.optionId);
  val['item_code'] = instance.itemCode;
  val['count'] = instance.count;
  writeNotNull('orginal_price', instance.orginalPrice);
  writeNotNull('option_price', instance.optionPrice);
  writeNotNull('discount_price', instance.discountPrice);
  writeNotNull('payment_price', instance.paymentPrice);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

Orders _$OrdersFromJson(Map<String, dynamic> json) => Orders(
      uid: json['uid'] as int,
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
      cancelReason: json['cancel_reason'] as String? ?? '',
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      progressedAt: json['progressed_at'] == null
          ? null
          : DateTime.parse(json['progressed_at'] as String),
      deliveredAt: json['delivered_at'] == null
          ? null
          : DateTime.parse(json['delivered_at'] as String),
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
    );

Map<String, dynamic> _$OrdersToJson(Orders instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'user_id': instance.userId,
    'consignor_id': instance.consignorId,
    'order_key': instance.orderKey,
    'order_type': instance.orderType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('order_provider', instance.orderProvider);
  writeNotNull('order_number', instance.orderNumber);
  writeNotNull('order_content', instance.orderContent);
  val['ordered_at'] = instance.orderedAt.toIso8601String();
  val['goods_count'] = instance.goodsCount;
  writeNotNull('goods_content', instance.goodsContent);
  writeNotNull('orderer_name', instance.ordererName);
  writeNotNull('orderer_account', instance.ordererAccount);
  writeNotNull('orderer_phone', instance.ordererPhone);
  writeNotNull('orderer_phone_safe', instance.ordererPhoneSafe);
  writeNotNull('orderer_address', instance.ordererAddress);
  writeNotNull('orderer_address_detail', instance.ordererAddressDetail);
  writeNotNull(
      'orderer_address_postal_code', instance.ordererAddressPostalCode);
  writeNotNull('receiver_name', instance.receiverName);
  writeNotNull('receiver_account', instance.receiverAccount);
  writeNotNull('receiver_phone', instance.receiverPhone);
  writeNotNull('receiver_phone_safe', instance.receiverPhoneSafe);
  writeNotNull('receiver_address', instance.receiverAddress);
  writeNotNull('receiver_address_detail', instance.receiverAddressDetail);
  writeNotNull(
      'receiver_address_postal_code', instance.receiverAddressPostalCode);
  writeNotNull('price_unit', instance.priceUnit);
  writeNotNull('price_exchange', instance.priceExchange);
  writeNotNull('price_shipping', instance.priceShipping);
  writeNotNull('price_shipping_remoted', instance.priceShippingRemoted);
  writeNotNull('price_shipping_discount', instance.priceShippingDiscount);
  writeNotNull('tax_price', instance.taxPrice);
  writeNotNull('total_payment_price', instance.totalPaymentPrice);
  writeNotNull('paid_at', instance.paidAt?.toIso8601String());
  writeNotNull('shipping_personal_code', instance.shippingPersonalCode);
  writeNotNull('shipping_orderer_ssn', instance.shippingOrdererSsn);
  writeNotNull('shipping_orderer_phone', instance.shippingOrdererPhone);
  writeNotNull('extras', instance.extras);
  val['status'] = instance.status;
  writeNotNull('delivery_type', instance.deliveryType);
  writeNotNull('delivery_load_size', instance.deliveryLoadSize);
  writeNotNull('delivery_print_message', instance.deliveryPrintMessage);
  writeNotNull('delivery_remoted', instance.deliveryRemoted);
  writeNotNull('delivery_splited', instance.deliverySplited);
  writeNotNull('delivery_splitable', instance.deliverySplitable);
  writeNotNull('delivery_company_code', instance.deliveryCompanyCode);
  writeNotNull('delivery_company_name', instance.deliveryCompanyName);
  writeNotNull('delivery_invoice_number', instance.deliveryInvoiceNumber);
  writeNotNull(
      'delivery_expired_at', instance.deliveryExpiredAt?.toIso8601String());
  writeNotNull('cancel_reason', instance.cancelReason);
  writeNotNull('canceled_at', instance.canceledAt?.toIso8601String());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('progressed_at', instance.progressedAt?.toIso8601String());
  writeNotNull('delivered_at', instance.deliveredAt?.toIso8601String());
  writeNotNull('cancel_req_at', instance.cancelReqAt?.toIso8601String());
  writeNotNull('cancel_req_user_name', instance.cancelReqUserName);
  writeNotNull('cancel_req_user_account', instance.cancelReqUserAccount);
  writeNotNull('cancel_confirm_user_name', instance.cancelConfirmUserName);
  writeNotNull(
      'cancel_confirm_user_account', instance.cancelConfirmUserAccount);
  writeNotNull(
      'cancel_confirmed_at', instance.cancelConfirmedAt?.toIso8601String());
  writeNotNull('return_req_at', instance.returnReqAt?.toIso8601String());
  writeNotNull('return_req_user_name', instance.returnReqUserName);
  writeNotNull('return_req_user_account', instance.returnReqUserAccount);
  writeNotNull('return_confirm_user_name', instance.returnConfirmUserName);
  writeNotNull(
      'return_confirm_user_account', instance.returnConfirmUserAccount);
  writeNotNull(
      'return_confirmed_at', instance.returnConfirmedAt?.toIso8601String());
  writeNotNull('exchange_req_at', instance.exchangeReqAt?.toIso8601String());
  writeNotNull('exchange_req_user_name', instance.exchangeReqUserName);
  writeNotNull('exchange_req_user_account', instance.exchangeReqUserAccount);
  writeNotNull('exchange_confirm_user_name', instance.exchangeConfirmUserName);
  writeNotNull(
      'exchange_confirm_user_account', instance.exchangeConfirmUserAccount);
  writeNotNull(
      'exchange_confirmed_at', instance.exchangeConfirmedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$SellerVacationToJson(SellerVacation instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'account': instance.account,
    'user_mode': instance.userMode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('vacation_reason', instance.vacationReason);
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$StoreToJson(Store instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'store_status': instance.storeStatus,
    'account': instance.account,
    'store_name': instance.storeName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('artiket_representative_category',
      instance.artiketRepresentativeCategory);
  writeNotNull(
      'artiket_representative_image', instance.artiketRepresentativeImage);
  writeNotNull('store_status_description', instance.storeStatusDescription);
  writeNotNull('business_number0', instance.businessNumber0);
  writeNotNull('business_number1', instance.businessNumber1);
  writeNotNull('business_company_name', instance.businessCompanyName);
  writeNotNull('business_type', instance.businessType);
  writeNotNull('business_ceo_name', instance.businessCeoName);
  writeNotNull('business_company_address', instance.businessCompanyAddress);
  writeNotNull('online_marketing_business_number',
      instance.onlineMarketingBusinessNumber);
  writeNotNull('business_license_image0', instance.businessLicenseImage0);
  writeNotNull('business_license_image1', instance.businessLicenseImage1);
  writeNotNull(
      'artiket_place_of_shipment_name', instance.artiketPlaceOfShipmentName);
  writeNotNull('artiket_place_of_shipment', instance.artiketPlaceOfShipment);
  writeNotNull('artiket_place_of_shipment_number0',
      instance.artiketPlaceOfShipmentNumber0);
  writeNotNull('artiket_place_of_shipment_number1',
      instance.artiketPlaceOfShipmentNumber1);
  writeNotNull('refund_address_name', instance.refundAddressName);
  writeNotNull('refund_address', instance.refundAddress);
  writeNotNull('refund_number0', instance.refundNumber0);
  writeNotNull('refund_number1', instance.refundNumber1);
  writeNotNull('user_bank', instance.userBank);
  writeNotNull('user_account_name', instance.userAccountName);
  writeNotNull('user_account_number', instance.userAccountNumber);
  writeNotNull('user_account_image', instance.userAccountImage);
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'store_id': instance.storeId,
    'account': instance.account,
    'user_mode': instance.userMode,
    'user_password': instance.userPassword,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_type', instance.userType);
  val['seller_type'] = instance.sellerType;
  writeNotNull('user_number', instance.userNumber);
  writeNotNull('user_name', instance.userName);
  writeNotNull('user_email', instance.userEmail);
  writeNotNull('user_birthday', instance.userBirthday?.toIso8601String());
  writeNotNull('user_gender', instance.userGender);
  writeNotNull('user_address', instance.userAddress);
  writeNotNull('artiket_name', instance.artiketName);
  writeNotNull('artiket_introduce_content', instance.artiketIntroduceContent);
  writeNotNull(
      'artiket_profile_image_approve', instance.artiketProfileImageApprove);
  writeNotNull('artiket_profile_image', instance.artiketProfileImage);
  writeNotNull(
      'artiket_cover_image_approve', instance.artiketCoverImageApprove);
  writeNotNull('artiket_cover_image', instance.artiketCoverImage);
  writeNotNull('artiket_s_c_number', instance.artiketSCNumber);
  val['store_status'] = instance.storeStatus;
  writeNotNull('store_status_description', instance.storeStatusDescription);
  writeNotNull('artiket_representative_category',
      instance.artiketRepresentativeCategory);
  writeNotNull(
      'artiket_representative_image', instance.artiketRepresentativeImage);
  writeNotNull('business_number0', instance.businessNumber0);
  writeNotNull('business_number1', instance.businessNumber1);
  writeNotNull('business_company_name', instance.businessCompanyName);
  writeNotNull('business_type', instance.businessType);
  writeNotNull('business_ceo_name', instance.businessCeoName);
  writeNotNull('business_company_address', instance.businessCompanyAddress);
  writeNotNull('online_marketing_business_number',
      instance.onlineMarketingBusinessNumber);
  writeNotNull('business_license_image0', instance.businessLicenseImage0);
  writeNotNull('business_license_image1', instance.businessLicenseImage1);
  writeNotNull(
      'artiket_place_of_shipment_name', instance.artiketPlaceOfShipmentName);
  writeNotNull('artiket_place_of_shipment', instance.artiketPlaceOfShipment);
  writeNotNull('artiket_place_of_shipment_number0',
      instance.artiketPlaceOfShipmentNumber0);
  writeNotNull('artiket_place_of_shipment_number1',
      instance.artiketPlaceOfShipmentNumber1);
  writeNotNull('refund_address_name', instance.refundAddressName);
  writeNotNull('refund_address', instance.refundAddress);
  writeNotNull('refund_number0', instance.refundNumber0);
  writeNotNull('refund_number1', instance.refundNumber1);
  writeNotNull('user_bank', instance.userBank);
  writeNotNull('user_account_name', instance.userAccountName);
  writeNotNull('user_account_number', instance.userAccountNumber);
  writeNotNull('user_account_image', instance.userAccountImage);
  writeNotNull('username_used', instance.usernameUsed);
  writeNotNull('username_used_at', instance.usernameUsedAt?.toIso8601String());
  writeNotNull('email', instance.email);
  writeNotNull('email_valid', instance.emailValid);
  writeNotNull('phone', instance.phone);
  writeNotNull('phone_valid', instance.phoneValid);
  writeNotNull('user_phone', instance.userPhone);
  writeNotNull('user_first_name', instance.userFirstName);
  writeNotNull('user_last_name', instance.userLastName);
  writeNotNull('user_nickname', instance.userNickname);
  writeNotNull('user_birth', instance.userBirth);
  writeNotNull('user_dial_code', instance.userDialCode);
  writeNotNull('user_iso_code', instance.userIsoCode);
  writeNotNull('profile_image', instance.profileImage);
  writeNotNull('profile_bio', instance.profileBio);
  writeNotNull('role_type', instance.roleType);
  writeNotNull('role_level', instance.roleLevel);
  writeNotNull('geo_latitude', instance.geoLatitude);
  writeNotNull('geo_longitude', instance.geoLongitude);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('blocked_issue', instance.blockedIssue);
  writeNotNull('blocked', instance.blocked);
  writeNotNull('blocked_at', instance.blockedAt?.toIso8601String());
  writeNotNull('agreed', instance.agreed);
  writeNotNull('agreed_at', instance.agreedAt?.toIso8601String());
  writeNotNull('memo', instance.memo);
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$UserAccessCodeToJson(UserAccessCode instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'user_id': instance.userId,
    'access_code': instance.accessCode,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'access_expired_at', instance.accessExpiredAt?.toIso8601String());
  writeNotNull('session_token', instance.sessionToken);
  writeNotNull('extras', instance.extras);
  val['status'] = instance.status;
  writeNotNull('requested_at', instance.requestedAt?.toIso8601String());
  writeNotNull('accessed_at', instance.accessedAt?.toIso8601String());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

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

Map<String, dynamic> _$UserAuthToJson(UserAuth instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  writeNotNull('auth_type', instance.authType);
  writeNotNull('auth_id', instance.authId);
  writeNotNull('auth_token', instance.authToken);
  writeNotNull('auth_expired', instance.authExpired?.toIso8601String());
  writeNotNull('auth_encryption', instance.authEncryption);
  writeNotNull('auth_string', instance.authString);
  writeNotNull('auth_reset_token', instance.authResetToken);
  writeNotNull(
      'auth_reset_expired', instance.authResetExpired?.toIso8601String());
  val['sns_join'] = instance.snsJoin;
  writeNotNull('sns_access_token', instance.snsAccessToken);
  writeNotNull('sms_code', instance.smsCode);
  writeNotNull('sms_expired_at', instance.smsExpiredAt?.toIso8601String());
  writeNotNull('sms_extras', instance.smsExtras);
  val['email_verify'] = instance.emailVerify;
  writeNotNull('email_code', instance.emailCode);
  writeNotNull('email_expired_at', instance.emailExpiredAt?.toIso8601String());
  writeNotNull('email_extras', instance.emailExtras);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

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

Map<String, dynamic> _$UserDeviceToJson(UserDevice instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  val['device_id'] = instance.deviceId;
  writeNotNull('device_type', instance.deviceType);
  writeNotNull('device_name', instance.deviceName);
  writeNotNull('device_locale', instance.deviceLocale);
  writeNotNull('device_model', instance.deviceModel);
  writeNotNull('device_deny', instance.deviceDeny);
  writeNotNull('device_user_agent', instance.deviceUserAgent);
  writeNotNull('os_type', instance.osType);
  writeNotNull('os_version', instance.osVersion);
  writeNotNull('app_version', instance.appVersion);
  writeNotNull('app_push_token', instance.appPushToken);
  writeNotNull('geo_latitude', instance.geoLatitude);
  writeNotNull('geo_longitude', instance.geoLongitude);
  writeNotNull('push_allowed', instance.pushAllowed);
  writeNotNull('push_allowed_at', instance.pushAllowedAt?.toIso8601String());
  writeNotNull('location_allowed', instance.locationAllowed);
  writeNotNull(
      'location_allowed_at', instance.locationAllowedAt?.toIso8601String());
  val['lastest_connected_at'] = instance.lastestConnectedAt.toIso8601String();
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

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

Map<String, dynamic> _$UserRelationToJson(UserRelation instance) {
  final val = <String, dynamic>{
    '_key': instance.key,
    'user_id': instance.userId,
    'relation_target': instance.relationTarget,
    'relation_target_id': instance.relationTargetId,
    'relation_target_title': instance.relationTargetTitle,
    'relation_action': instance.relationAction,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('relation_content', instance.relationContent);
  val['linked'] = instance.linked;
  writeNotNull('linked_at', instance.linkedAt?.toIso8601String());
  writeNotNull('extras', instance.extras);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

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

Map<String, dynamic> _$BillingToJson(Billing instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'user_id': instance.userId,
    'card_code': instance.cardCode,
    'card_name': instance.cardName,
    'card_number': instance.cardNumber,
    'card_expiration_year': instance.cardExpirationYear,
    'card_expiration_month': instance.cardExpirationMonth,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card_placeholder_name', instance.cardPlaceholderName);
  val['card_enc_data'] = instance.cardEncData;
  val['is_primary'] = instance.isPrimary;
  writeNotNull('is_primary_at', instance.isPrimaryAt?.toIso8601String());
  writeNotNull('billing_gateway', instance.billingGateway);
  writeNotNull('billing_order_uid', instance.billingOrderUid);
  writeNotNull('billing_transaction_uid', instance.billingTransactionUid);
  writeNotNull('billing_data', instance.billingData);
  writeNotNull('billing_key', instance.billingKey);
  val['authorized'] = instance.authorized;
  writeNotNull('authorized_at', instance.authorizedAt?.toIso8601String());
  writeNotNull('status', instance.status);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

Receipt _$ReceiptFromJson(Map<String, dynamic> json) => Receipt(
      uid: json['uid'] as int,
      userId: json['user_id'] as int,
      orderUid: json['order_uid'] as String? ?? '',
      products: json['products'],
      reserve: json['reserve'],
      billing: json['billing'],
      paymentGateway: json['payment_gateway'] as String? ?? '',
      paymentMethod: json['payment_method'] as String? ?? '',
      paymentUnit: json['payment_unit'] as String? ?? '',
      paymentOrigin: (json['payment_origin'] as num?)?.toDouble(),
      paymentAmount: (json['payment_amount'] as num?)?.toDouble(),
      paymentTax: (json['payment_tax'] as num?)?.toDouble(),
      paymentShipping: (json['payment_shipping'] as num?)?.toDouble(),
      paymentFee: (json['payment_fee'] as num?)?.toDouble(),
      paymentTotal: (json['payment_total'] as num?)?.toDouble(),
      transactionType: json['transaction_type'] as String? ?? '',
      transactionUid: json['transaction_uid'] as String? ?? '',
      transactionData: json['transaction_data'] as String? ?? '',
      transactionAt: json['transaction_at'] == null
          ? null
          : DateTime.parse(json['transaction_at'] as String),
      vbankNum: json['vbank_num'] as String? ?? '',
      vbankDate: json['vbank_date'] as String? ?? '',
      vbankName: json['vbank_name'] as String? ?? '',
      paidUnit: json['paid_unit'] as String? ?? '',
      paidExchange: (json['paid_exchange'] as num?)?.toDouble(),
      paidTotal: (json['paid_total'] as num?)?.toDouble(),
      paid: json['paid'] as bool?,
      paidAt: json['paid_at'] == null
          ? null
          : DateTime.parse(json['paid_at'] as String),
      cancelReason: json['cancel_reason'] as String? ?? '',
      cancelReasonDetail: json['cancel_reason_detail'] as String? ?? '',
      canceled: json['canceled'] as bool?,
      canceledAt: json['canceled_at'] == null
          ? null
          : DateTime.parse(json['canceled_at'] as String),
      refundType: json['refund_type'] as String? ?? '',
      refundMethod: json['refund_method'] as String? ?? '',
      refundUnit: json['refund_unit'] as String? ?? '',
      refundTotal: (json['refund_total'] as num?)?.toDouble(),
      refunded: json['refunded'] as bool?,
      refundedAt: DateTime.parse(json['refunded_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      archived: json['archived'] as bool?,
      archivedAt: json['archived_at'] == null
          ? null
          : DateTime.parse(json['archived_at'] as String),
    );

Map<String, dynamic> _$ReceiptToJson(Receipt instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'user_id': instance.userId,
    'order_uid': instance.orderUid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('products', instance.products);
  writeNotNull('reserve', instance.reserve);
  writeNotNull('billing', instance.billing);
  writeNotNull('payment_gateway', instance.paymentGateway);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('payment_unit', instance.paymentUnit);
  writeNotNull('payment_origin', instance.paymentOrigin);
  writeNotNull('payment_amount', instance.paymentAmount);
  writeNotNull('payment_tax', instance.paymentTax);
  writeNotNull('payment_shipping', instance.paymentShipping);
  writeNotNull('payment_fee', instance.paymentFee);
  writeNotNull('payment_total', instance.paymentTotal);
  writeNotNull('transaction_type', instance.transactionType);
  writeNotNull('transaction_uid', instance.transactionUid);
  writeNotNull('transaction_data', instance.transactionData);
  writeNotNull('transaction_at', instance.transactionAt?.toIso8601String());
  writeNotNull('vbank_num', instance.vbankNum);
  writeNotNull('vbank_date', instance.vbankDate);
  writeNotNull('vbank_name', instance.vbankName);
  writeNotNull('paid_unit', instance.paidUnit);
  writeNotNull('paid_exchange', instance.paidExchange);
  writeNotNull('paid_total', instance.paidTotal);
  writeNotNull('paid', instance.paid);
  writeNotNull('paid_at', instance.paidAt?.toIso8601String());
  writeNotNull('cancel_reason', instance.cancelReason);
  writeNotNull('cancel_reason_detail', instance.cancelReasonDetail);
  writeNotNull('canceled', instance.canceled);
  writeNotNull('canceled_at', instance.canceledAt?.toIso8601String());
  writeNotNull('refund_type', instance.refundType);
  writeNotNull('refund_method', instance.refundMethod);
  writeNotNull('refund_unit', instance.refundUnit);
  writeNotNull('refund_total', instance.refundTotal);
  writeNotNull('refunded', instance.refunded);
  val['refunded_at'] = instance.refundedAt.toIso8601String();
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'user_id': instance.userId,
    'product_id': instance.productId,
    'receipt_id': instance.receiptId,
    'subscribe_type': instance.subscribeType,
    'subscribe_issue_type': instance.subscribeIssueType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'subscribe_expired_at', instance.subscribeExpiredAt?.toIso8601String());
  writeNotNull('issued_at', instance.issuedAt?.toIso8601String());
  writeNotNull('extras', instance.extras);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$TransactionToJson(Transaction instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  val['transaction_uid'] = instance.transactionUid;
  writeNotNull('ref_id', instance.refId);
  writeNotNull('type', instance.type);
  writeNotNull('paid_total', instance.paidTotal);
  writeNotNull('status', instance.status);
  writeNotNull('data', instance.data);
  writeNotNull('extras', instance.extras);
  writeNotNull('receipt_id', instance.receiptId);
  writeNotNull('target_id', instance.targetId);
  writeNotNull('transaction_name', instance.transactionName);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$PostsToJson(Posts instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('post_number', instance.postNumber);
  writeNotNull('post_type', instance.postType);
  writeNotNull('post_group', instance.postGroup);
  writeNotNull('post_parent_target', instance.postParentTarget);
  writeNotNull('post_parent_id', instance.postParentId);
  writeNotNull('post_depth', instance.postDepth);
  writeNotNull('post_order', instance.postOrder);
  writeNotNull('post_title', instance.postTitle);
  writeNotNull('post_content', instance.postContent);
  writeNotNull('post_markdown_used', instance.postMarkdownUsed);
  writeNotNull('post_markdown', instance.postMarkdown);
  writeNotNull('post_summary', instance.postSummary);
  writeNotNull('linked_target', instance.linkedTarget);
  writeNotNull('linked_target_id', instance.linkedTargetId);
  writeNotNull('tags', instance.tags);
  writeNotNull('campaign_id', instance.campaignId);
  writeNotNull('user_id', instance.userId);
  writeNotNull('user_name', instance.userName);
  writeNotNull('user_email', instance.userEmail);
  writeNotNull('user_password', instance.userPassword);
  writeNotNull('profile_image', instance.profileImage);
  writeNotNull('permission', instance.permission);
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['hidden'] = instance.hidden;
  writeNotNull('hidden_at', instance.hiddenAt?.toIso8601String());
  val['blocked'] = instance.blocked;
  writeNotNull('blocked_at', instance.blockedAt?.toIso8601String());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$ProductToJson(Product instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'campaign_id': instance.campaignId,
    'store_code': instance.storeCode,
    'product_type': instance.productType,
    'product_target': instance.productTarget,
    'product_code': instance.productCode,
    'product_value_unit': instance.productValueUnit,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_value', instance.productValue);
  val['price_unit'] = instance.priceUnit;
  writeNotNull('price_origin', instance.priceOrigin);
  writeNotNull('price', instance.price);
  val['product_name'] = instance.productName;
  val['product_thumbnail'] = instance.productThumbnail;
  val['stock_amount'] = instance.stockAmount;
  writeNotNull('extras', instance.extras);
  val['sort_order'] = instance.sortOrder;
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$PushMessageToJson(PushMessage instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'user_id': instance.userId,
    'provider': instance.provider,
    'message_id': instance.messageId,
    'message_group': instance.messageGroup,
    'message_type': instance.messageType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message_title', instance.messageTitle);
  val['message_payload'] = instance.messagePayload;
  val['message_priority'] = instance.messagePriority;
  val['published'] = instance.published;
  val['published_at'] = instance.publishedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

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

Map<String, dynamic> _$ResourceToJson(Resource instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('resource_type', instance.resourceType);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resource_tag', instance.resourceTag);
  writeNotNull('resource_status', instance.resourceStatus);
  writeNotNull('resource_hash', instance.resourceHash);
  writeNotNull('resource_url', instance.resourceUrl);
  writeNotNull('resource_order', instance.resourceOrder);
  writeNotNull('filetype', instance.filetype);
  writeNotNull('filesize', instance.filesize);
  writeNotNull('filename', instance.filename);
  writeNotNull('extension', instance.extension);
  writeNotNull('natural_width', instance.naturalWidth);
  writeNotNull('natural_height', instance.naturalHeight);
  writeNotNull('uploader', instance.uploader);
  writeNotNull('permission', instance.permission);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$ReviewCategoryToJson(ReviewCategory instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('review_code', instance.reviewCode);
  writeNotNull('review_type', instance.reviewType);
  writeNotNull('review_desc', instance.reviewDesc);
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

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

Map<String, dynamic> _$ReviewSellerToJson(ReviewSeller instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'review_code': instance.reviewCode,
    'reviewer_account': instance.reviewerAccount,
    'reviewer_name': instance.reviewerName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('store_id', instance.storeId);
  writeNotNull('seller_id', instance.sellerId);
  val['seller_account'] = instance.sellerAccount;
  val['review_status'] = instance.reviewStatus;
  writeNotNull('review_description', instance.reviewDescription);
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$BankAccountToJson(BankAccount instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'user_id': instance.userId,
    'bank_owner_name': instance.bankOwnerName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bank_owner_address', instance.bankOwnerAddress);
  val['bank_country'] = instance.bankCountry;
  val['bank_name'] = instance.bankName;
  val['bank_code'] = instance.bankCode;
  val['bank_account'] = instance.bankAccount;
  writeNotNull('bank_routing', instance.bankRouting);
  writeNotNull('bank_swift_code', instance.bankSwiftCode);
  val['is_primary'] = instance.isPrimary;
  writeNotNull('is_primary_at', instance.isPrimaryAt?.toIso8601String());
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

BankCode _$BankCodeFromJson(Map<String, dynamic> json) => BankCode(
      code: json['code'] as String? ?? '',
      type: json['type'] as String? ?? '',
      name: json['name'] as String? ?? '',
      actived: json['actived'] as bool,
      activedAt: DateTime.parse(json['actived_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$BankCodeToJson(BankCode instance) {
  final val = <String, dynamic>{
    'code': instance.code,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('name', instance.name);
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

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

Map<String, dynamic> _$ProfitToJson(Profit instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'user_id': instance.userId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('profit_target', instance.profitTarget);
  writeNotNull('profit_target_id', instance.profitTargetId);
  writeNotNull('profit_rate', instance.profitRate);
  writeNotNull('exchange_rate', instance.exchangeRate);
  writeNotNull('settlement_id', instance.settlementId);
  val['settled_date_start'] = instance.settledDateStart;
  val['settled_date_end'] = instance.settledDateEnd;
  val['total_count'] = instance.totalCount;
  val['total_complete_count'] = instance.totalCompleteCount;
  val['total_cancel_count'] = instance.totalCancelCount;
  writeNotNull('total_quantity_small', instance.totalQuantitySmall);
  writeNotNull('total_quantity_big', instance.totalQuantityBig);
  writeNotNull('total_unit', instance.totalUnit);
  writeNotNull('total_ordered', instance.totalOrdered);
  writeNotNull('total_cancelled', instance.totalCancelled);
  writeNotNull('total_origin', instance.totalOrigin);
  writeNotNull('total_discount', instance.totalDiscount);
  writeNotNull('total_sales', instance.totalSales);
  writeNotNull('total_payment', instance.totalPayment);
  writeNotNull('total_paid', instance.totalPaid);
  writeNotNull('total_pending', instance.totalPending);
  writeNotNull('total_refunded', instance.totalRefunded);
  writeNotNull('total_payment_fee', instance.totalPaymentFee);
  writeNotNull('total_complete_expense', instance.totalCompleteExpense);
  writeNotNull('total_cancel_expenses', instance.totalCancelExpenses);
  writeNotNull('total_etc_expenses', instance.totalEtcExpenses);
  writeNotNull('total_etc_expenses_comment', instance.totalEtcExpensesComment);
  writeNotNull('total_expenses', instance.totalExpenses);
  writeNotNull('total_profit', instance.totalProfit);
  writeNotNull('total_fee', instance.totalFee);
  writeNotNull('total_amount', instance.totalAmount);
  writeNotNull('status', instance.status);
  writeNotNull('extras', instance.extras);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$SettlementToJson(Settlement instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'user_id': instance.userId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('store_id', instance.storeId);
  val['settled_date_start'] = instance.settledDateStart;
  val['settled_date_end'] = instance.settledDateEnd;
  writeNotNull('exchange_rate', instance.exchangeRate);
  val['total_count'] = instance.totalCount;
  val['total_complete_count'] = instance.totalCompleteCount;
  val['total_cancel_count'] = instance.totalCancelCount;
  writeNotNull('total_quantity_small', instance.totalQuantitySmall);
  writeNotNull('total_quantity_big', instance.totalQuantityBig);
  writeNotNull('total_unit', instance.totalUnit);
  writeNotNull('total_ordered', instance.totalOrdered);
  writeNotNull('total_cancelled', instance.totalCancelled);
  writeNotNull('total_origin', instance.totalOrigin);
  writeNotNull('total_discount', instance.totalDiscount);
  writeNotNull('total_sales', instance.totalSales);
  writeNotNull('total_payment', instance.totalPayment);
  writeNotNull('total_paid', instance.totalPaid);
  writeNotNull('total_pending', instance.totalPending);
  writeNotNull('total_refunded', instance.totalRefunded);
  writeNotNull('total_profit', instance.totalProfit);
  writeNotNull('total_fee', instance.totalFee);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('total_amount', instance.totalAmount);
  writeNotNull('total_payment_fee', instance.totalPaymentFee);
  writeNotNull('total_complete_expense', instance.totalCompleteExpense);
  writeNotNull('total_cancel_expenses', instance.totalCancelExpenses);
  writeNotNull('total_etc_expenses', instance.totalEtcExpenses);
  writeNotNull('total_etc_expenses_comment', instance.totalEtcExpensesComment);
  writeNotNull('total_expenses', instance.totalExpenses);
  writeNotNull('settled_method', instance.settledMethod);
  writeNotNull('settled_bank_owner_name', instance.settledBankOwnerName);
  writeNotNull('settled_bank_name', instance.settledBankName);
  writeNotNull('settled_bank_code', instance.settledBankCode);
  writeNotNull('settled_bank_account', instance.settledBankAccount);
  writeNotNull('settled_unit', instance.settledUnit);
  writeNotNull('settled_total', instance.settledTotal);
  writeNotNull('status', instance.status);
  writeNotNull('extras', instance.extras);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$SmsMessageToJson(SmsMessage instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'sms_provider': instance.smsProvider,
    'sms_from': instance.smsFrom,
    'sms_to': instance.smsTo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sms_message', instance.smsMessage);
  val['test'] = instance.test;
  writeNotNull('sent', instance.sent);
  writeNotNull('sent_result', instance.sentResult);
  writeNotNull('sent_at', instance.sentAt?.toIso8601String());
  val['request_id'] = instance.requestId;
  writeNotNull('extras', instance.extras);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  return val;
}

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

Map<String, dynamic> _$VerifyToJson(Verify instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('user_id', instance.userId);
  val['email'] = instance.email;
  val['valid_key'] = instance.validKey;
  val['valid_type'] = instance.validType;
  val['valid'] = instance.valid;
  writeNotNull('valid_at', instance.validAt?.toIso8601String());
  writeNotNull('expired_at', instance.expiredAt?.toIso8601String());
  val['actived'] = instance.actived;
  val['actived_at'] = instance.activedAt.toIso8601String();
  writeNotNull('extras', instance.extras);
  val['resource_key'] = instance.resourceKey;
  writeNotNull('resources', instance.resources);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}

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

Map<String, dynamic> _$VideoTransCodeToJson(VideoTransCode instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('convert_type', instance.convertType);
  writeNotNull('convert_file', instance.convertFile);
  writeNotNull('convert_result', instance.convertResult);
  writeNotNull('user_id', instance.userId);
  writeNotNull('extras', instance.extras);
  val['created_at'] = instance.createdAt.toIso8601String();
  val['updated_at'] = instance.updatedAt.toIso8601String();
  writeNotNull('archived', instance.archived);
  writeNotNull('archived_at', instance.archivedAt?.toIso8601String());
  return val;
}
