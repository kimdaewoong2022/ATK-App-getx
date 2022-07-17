import 'package:artiket/common/values/values.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget inputTextEdit({
  TextEditingController? controller,
  TextInputType keyboardType = TextInputType.text,
  String? hintText,
  bool isPassword = false,
  double marginTop = 15,
  bool autofocus = false,
}) {
  return Container(
    height: 44.h,
    margin: EdgeInsets.only(top: marginTop.h),
    decoration: BoxDecoration(
      color: AppColors.secondaryElement,
      borderRadius: Radii.k6pxRadius,
    ),
    child: TextField(
      autofocus: autofocus,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 9),
        border: InputBorder.none,
      ),
      style: TextStyle(
        color: AppColors.primaryText,
        fontFamily: "Avenir",
        fontWeight: FontWeight.w400,
        fontSize: 18.sp,
      ),
      maxLines: 1,
      autocorrect: false, // 自动纠正
      obscureText: isPassword, // 隐藏输入内容, 密码框
    ),
  );
}

Widget inputTextEdit_artiket({
  TextEditingController? controller,
  TextInputType keyboardType = TextInputType.text,
  String? hintText,
  bool isPassword = false,
  double marginTop = 15,
  bool autofocus = false,
}) {
  return Container(
    height: 44.h,
    margin: EdgeInsets.only(top: marginTop.h),
    decoration: BoxDecoration(
      color: AppColors.secondaryElement,
      borderRadius: Radii.k6pxRadius,
    ),
    child: TextField(
      autofocus: autofocus,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        labelText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        fillColor: AppColors.primaryBackground,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inputBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inputBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inputBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inputBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inputBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        // contentPadding: contentPadding ??
        //     const EdgeInsets.symmetric(horizontal: 26, vertical: 22),
        contentPadding:
            EdgeInsets.only(left: 11, right: 3, top: 12, bottom: 12),
        //border: InputBorder.none,
        errorStyle: TextStyle(fontSize: 9, height: 0.5),
      ),
      style: TextStyle(
        color: AppColors.primaryText,
        fontFamily: "Metropolis",
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
      ),
      maxLines: 1,
      autocorrect: false, // 自动纠正
      obscureText: isPassword, // 隐藏输入内容, 密码框
    ),
  );
}

final isObsecure = true.obs;

Widget inputPasswordTextEdit_artiket({
  TextEditingController? controller,
  TextInputType keyboardType = TextInputType.text,
  String? hintText,
  bool isPassword = false,
  double marginTop = 15,
  bool autofocus = false,
}) {
  return Container(
    height: 44.h,
    margin: EdgeInsets.only(top: marginTop.h),
    decoration: BoxDecoration(
      color: AppColors.secondaryElement,
      borderRadius: Radii.k6pxRadius,
    ),
    child: TextField(
      autofocus: autofocus,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: true,
        //hintStyle: const TextStyle(color: Colors.grey),
        labelText: '비밀번호',
        // suffixIcon: InkWell(
        //   onTap: () {
        //     isObsecure.value = !isObsecure.value;
        //   },
        //   child: Icon(
        //       isObsecure.value ? BootstrapIcons.eye : BootstrapIcons.eye_slash),
        // ),
        fillColor: AppColors.primaryBackground,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inputBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inputBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inputBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inputBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.inputBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        // contentPadding: contentPadding ??
        //     const EdgeInsets.symmetric(horizontal: 26, vertical: 22),
        contentPadding:
            EdgeInsets.only(left: 11, right: 3, top: 12, bottom: 12),
        //border: InputBorder.none,
        errorStyle: TextStyle(fontSize: 9, height: 0.5),
      ),
      style: TextStyle(
        color: AppColors.primaryText,
        fontFamily: "Metropolis",
        fontWeight: FontWeight.w400,
        fontSize: 16.sp,
      ),
      maxLines: 1,
      autocorrect: false,
      obscureText: isObsecure.value,
    ),
  );
}

/// 이메일 입력창
/// 배경 흰색, 텍스트 검정색, 그림자 포함
Widget inputEmailEdit({
  TextEditingController? controller,
  TextInputType keyboardType = TextInputType.text,
  String? hintText,
  bool isPassword = false,
  double marginTop = 15,
  bool autofocus = false,
}) {
  return Container(
    height: 44.h,
    margin: EdgeInsets.only(top: marginTop.h),
    decoration: BoxDecoration(
      color: AppColors.primaryBackground,
      borderRadius: Radii.k6pxRadius,
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(41, 0, 0, 0),
          offset: Offset(0, 1),
          blurRadius: 0,
        ),
      ],
    ),
    child: TextField(
      autofocus: autofocus,
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.fromLTRB(20, 10, 0, 9),
        border: InputBorder.none,
        hintStyle: TextStyle(
          color: AppColors.primaryText,
        ),
      ),
      style: TextStyle(
        color: AppColors.primaryText,
        fontFamily: "Avenir",
        fontWeight: FontWeight.w400,
        fontSize: 18.sp,
      ),
      maxLines: 1,
      autocorrect: false,
      obscureText: isPassword,
    ),
  );
}
