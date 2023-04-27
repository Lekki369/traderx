import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io' show Platform;

class Global {
  static Color green = const Color.fromRGBO(0, 168, 90, 1);
  static Color grey6 = Colors.grey.shade600;
  static Color grey3 = Colors.grey.shade300;
  static Color grey = Colors.grey.shade200;
  static Color black = Colors.black;
  static Color white = Colors.white;
  static Color lightgreen = const Color.fromRGBO(204, 238, 222, 1);
  static Color white2 = const Color.fromRGBO(234, 234, 234, 1);
  static Color lightBlue2 = const Color.fromRGBO(226, 243, 252, 1);
  static Color lightBlue = const Color.fromRGBO(230, 239, 245, 1);
  static Color lightgrey = const Color.fromRGBO(247, 247, 247, 1);
  static Color lightgrey2 = const Color.fromRGBO(251, 251, 251, 1);
  static Color orange = const Color.fromRGBO(236, 126, 61, 1);
  static Color lightgrey3 = const Color.fromRGBO(193, 189, 189, 1);

  static TextStyle textStyle({
    required FontWeight fontWeight,
    required double size,
    required Color color,
  }) {
    return TextStyle(
      color: color,
      fontSize: size.sp,
      fontWeight: fontWeight,
    );
  }

  static Widget textFieldContainer({
    required String text,
    required double width,
    required double height,
    required Color color,
    required Widget child,
    required bool hasBorder,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (text.isNotEmpty) Text(text),
        SizedBox(height: 5.h),
        Container(
          padding: EdgeInsets.only(left: 15.w, right: 10.w),
          height: height.h,
          width: width.w,
          decoration: BoxDecoration(
              color: Global.grey,
              borderRadius: BorderRadius.circular(10.r),
              border: hasBorder ? Border.all(color: color, width: 1.w) : null),
          child: child,
        ),
      ],
    );
  }

  static Widget defaultContainer({
    required double width,
    required double height,
    required Color color,
    required Widget child,
    required bool hasBorder,
  }) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.r),
          border:
              hasBorder ? Border.all(color: Global.green, width: 1.w) : null),
      child: child,
    );
  }

  static String deviceInfo() {
    if (Platform.isAndroid) {
      return 'Mobile Andriod';
    }
    if (Platform.isIOS) {
      return 'Mobile IOS';
    } else {
      return 'Desktop';
    }
  }
}
