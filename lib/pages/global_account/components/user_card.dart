import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traderx/model/image.dart';
import 'package:traderx/theme/theme.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 22.r,
          child: Image.asset(Images.user),
        ),
        SizedBox(width: 7.w),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: TextsTheme.headerTextStyle1,
            ),
            Text(
              'Micheal Ajayi',
              style: TextsTheme.headerTextStyle2,
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            height: 34.h,
            width: 34.w,
            decoration: BoxDecoration(
              color: ThemeColor.lightGrey,
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                Icon(
                  Icons.notifications,
                  size: 20.sp,
                  color: ThemeColor.grey,
                ),
                Positioned(
                  bottom: 14.h,
                  left: 12.w,
                  child: Container(
                    height: 5.h,
                    width: 5.h,
                    decoration: BoxDecoration(
                      color: ThemeColor.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
