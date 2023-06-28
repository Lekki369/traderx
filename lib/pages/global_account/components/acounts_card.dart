import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traderx/model/image.dart';
import 'package:traderx/theme/theme.dart';

class AccountCard extends StatelessWidget {
  final String accountType;
  final String accountBalance;
  final Color color;
  const AccountCard({
    super.key,
    required this.accountType,
    required this.accountBalance,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      decoration: BoxDecoration(
        color: ThemeColor.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: ThemeColor.lightGrey, width: 0.5.w),
        boxShadow: [
          BoxShadow(
            offset: Offset(5.w, 5.h),
            color: ThemeColor.lightBlack,
            spreadRadius: 5.r,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 51.h,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.r),
                topRight: Radius.circular(10.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    accountType,
                    style: TextsTheme.headerTextStyle1,
                  ),
                  Text(
                    accountBalance,
                    style: TextsTheme.headerTextStyle1,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.sp),
            child: Text(
              'Welcome, let\'s get you started',
              style: TextStyle(
                fontSize: 12.sp,
              ),
            ),
          ),
          // SizedBox(),
          SizedBox(
            height: 50.h,
            child: Material(
              child: InkWell(
                borderRadius: BorderRadius.circular(10.r),
                overlayColor: MaterialStatePropertyAll(ThemeColor.lightGrey),
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: Row(
                    children: [
                      Image.asset(Images.bankCard1),
                      SizedBox(width: 12.w),
                      Text(
                        'View Virtual Card',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Divider(),

          SizedBox(
            height: 50.h,
            child: Material(
              child: InkWell(
                borderRadius: BorderRadius.circular(10.r),
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.sp),
                  child: Row(
                    children: [
                      Image.asset(Images.bankCard2),
                      SizedBox(width: 12.w),
                      Text(
                        'Set up direct deposit',
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
