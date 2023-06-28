import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traderx/theme/colors.dart';

class InfoCard extends StatelessWidget {
  final Color foregroundColor;
  final Color backgroundColor;
  final String image;
  final String headlineText;
  final String bodyText;
  const InfoCard(
      {super.key,
      required this.foregroundColor,
      required this.backgroundColor,
      required this.image,
      required this.headlineText,
      required this.bodyText});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(width: double.infinity, height: 122.h),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 27.h,
              width: 352.w,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10.r),
                  bottomLeft: Radius.circular(10.r),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.only(
                  left: 16.sp, right: 8.sp, top: 10.sp, bottom: 11.sp),
              height: 112.h,
              width: 380.w,
              decoration: BoxDecoration(
                color: ThemeColor.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(image),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          headlineText,
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          bodyText,
                          style: TextStyle(fontSize: 12.sp),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
