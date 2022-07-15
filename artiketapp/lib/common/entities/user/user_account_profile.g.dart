// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_account_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAccountProfile _$UserAccountProfileFromJson(Map<String, dynamic> json) =>
    UserAccountProfile(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserAccountProfileToJson(UserAccountProfile instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      profile: json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'profile': instance.profile,
      'accessToken': instance.accessToken,
    };

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile(
      gid: json['gid'] as int?,
      userEmail: json['userEmail'] as String?,
      userPhone: json['userPhone'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      userName: json['userName'] as String?,
      userFirstName: json['userFirstName'] as String?,
      userLastName: json['userLastName'] as String?,
      profileImage: json['profileImage'] as String?,
      userType: json['userType'] as String?,
      roleLevel: json['roleLevel'] as int?,
      roleType: json['roleType'] as String?,
      provider: json['provider'] as String?,
    );

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'gid': instance.gid,
      'userEmail': instance.userEmail,
      'userPhone': instance.userPhone,
      'phone': instance.phone,
      'email': instance.email,
      'username': instance.username,
      'userName': instance.userName,
      'userFirstName': instance.userFirstName,
      'userLastName': instance.userLastName,
      'profileImage': instance.profileImage,
      'userType': instance.userType,
      'roleLevel': instance.roleLevel,
      'roleType': instance.roleType,
      'provider': instance.provider,
    };
