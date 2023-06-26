import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traderx/theme/colors.dart';

class TradexTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        overlayColor:
            MaterialStatePropertyAll(ThemeColor.green.withOpacity(0.8)),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(ThemeColor.green),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        overlayColor:
            MaterialStatePropertyAll(ThemeColor.green.withOpacity(0.1)),
        iconSize: MaterialStatePropertyAll(20.sp),
        iconColor: MaterialStatePropertyAll(ThemeColor.green),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14.sp,
          ),
        ),
        side: MaterialStatePropertyAll(
          BorderSide(color: ThemeColor.green, width: 1.5.w),
        ),
        backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        overlayColor:
            MaterialStatePropertyAll(ThemeColor.green.withOpacity(0.1)),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    ),
  );
}

class TextsTheme {
  static TextStyle hintTextStyle = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ThemeColor.textFieldHintTextColor,
  );

  static TextStyle labelTextStyle = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: ThemeColor.textFieldLabelextColor,
  );

  static TextStyle headerTextStyle1 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: ThemeColor.black,
  );

  static TextStyle headerTextStyle2 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    color: ThemeColor.black,
  );
}
