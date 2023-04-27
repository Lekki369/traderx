import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controller/global.dart';

Widget accounts({
  required Color color,
  required String accountName,
  required String money,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Global.white2, width: 0.5.w),
      borderRadius: BorderRadius.circular(10.r),
      boxShadow: [
        BoxShadow(
          color: const Color.fromRGBO(190, 190, 190, 0.17),
          offset: Offset(2.sp, 5.sp),
          spreadRadius: 5.r,
          blurRadius: 10.r,
        )
      ],
    ),
    width: double.infinity,
    height: 180.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          width: double.infinity,
          height: 51.h,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                topRight: Radius.circular(10.r),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$accountName Account',
                style: Global.textStyle(
                    fontWeight: FontWeight.w700,
                    size: 16.sp,
                    color: Global.black),
              ),
              Text(
                money,
                style: Global.textStyle(
                    fontWeight: FontWeight.w700,
                    size: 16.sp,
                    color: Global.black),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 13.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome, let\'s get you started',
                style: Global.textStyle(
                    fontWeight: FontWeight.w400,
                    size: 12.sp,
                    color: Global.black),
              ),
              SizedBox(height: 16.h),
              InkWell(
                onTap: () {},
                child: Row(children: [
                  Image.asset('lib/assets/bank_cards_icon 1.png'),
                  SizedBox(width: 15.6.w),
                  Text(
                    'View Virtual Card',
                    style: Global.textStyle(
                        fontWeight: FontWeight.w600,
                        size: 14.sp,
                        color: Global.black),
                  )
                ]),
              ),
              const Divider(),
              Row(children: [
                Image.asset('lib/assets/bank_cards_icon 2.png'),
                SizedBox(width: 15.6.w),
                Text(
                  'Set up direct deposit',
                  style: Global.textStyle(
                      fontWeight: FontWeight.w600,
                      size: 14.sp,
                      color: Global.black),
                )
              ]),
            ],
          ),
        )
      ],
    ),
  );
}

Widget othersContents(
    {required String image,
    required List<Text> texts,
    required Color topColor,
    required Color buttomColor}) {
  return SizedBox(
    height: 150.h,
    child: Stack(
      children: [
        Positioned(
          left: 17.w,
          bottom: 8.h,
          child: Container(
            height: 77.h,
            width: 372.w,
            decoration: BoxDecoration(
              color: buttomColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.r),
                bottomRight: Radius.circular(15.r),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 12.h),
          height: 130.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: topColor, borderRadius: BorderRadius.circular(15.r)),
          child: Row(
            children: [
              SizedBox(
                height: 82.h,
                width: 77.w,
                child: Image.asset(image),
              ),
              SizedBox(width: 16.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: texts,
              )
            ],
          ),
        ),
      ],
    ),
  );
}
