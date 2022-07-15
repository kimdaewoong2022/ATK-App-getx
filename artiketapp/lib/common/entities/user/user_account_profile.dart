import 'package:json_annotation/json_annotation.dart';
//import 'package:dio/dio.dart';

part 'user_account_profile.g.dart';

@JsonSerializable()
class UserAccountProfile {
  String? status;
  Data? data;

  UserAccountProfile({this.status, this.data});

  UserAccountProfile.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

@JsonSerializable()
class Data {
  Profile? profile;
  String? accessToken;

  Data({this.profile, this.accessToken});

  Data.fromJson(Map<String, dynamic> json) {
    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.profile != null) {
      data['profile'] = this.profile!.toJson();
    }
    data['access_token'] = this.accessToken;
    return data;
  }
}

@JsonSerializable()
class Profile {
  int? gid;
  String? userEmail;
  String? userPhone;
  String? phone;
  String? email;
  String? username;
  String? userName;
  String? userFirstName;
  String? userLastName;
  String? profileImage;
  String? userType;
  int? roleLevel;
  String? roleType;
  String? provider;

  Profile(
      {this.gid,
      this.userEmail,
      this.userPhone,
      this.phone,
      this.email,
      this.username,
      this.userName,
      this.userFirstName,
      this.userLastName,
      this.profileImage,
      this.userType,
      this.roleLevel,
      this.roleType,
      this.provider});

  Profile.fromJson(Map<String, dynamic> json) {
    gid = json['gid'];
    userEmail = json['user_email'];
    userPhone = json['user_phone'];
    phone = json['phone'];
    email = json['email'];
    username = json['username'];
    userName = json['user_name'];
    userFirstName = json['user_first_name'];
    userLastName = json['user_last_name'];
    profileImage = json['profile_image'];
    userType = json['user_type'];
    roleLevel = json['role_level'];
    roleType = json['role_type'];
    provider = json['provider'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gid'] = this.gid;
    data['user_email'] = this.userEmail;
    data['user_phone'] = this.userPhone;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['username'] = this.username;
    data['user_name'] = this.userName;
    data['user_first_name'] = this.userFirstName;
    data['user_last_name'] = this.userLastName;
    data['profile_image'] = this.profileImage;
    data['user_type'] = this.userType;
    data['role_level'] = this.roleLevel;
    data['role_type'] = this.roleType;
    data['provider'] = this.provider;
    return data;
  }
}
