import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traderx/pages/login_with_phone/screens/phone_screen.dart';
import 'package:traderx/theme/colors.dart';

class PhonePageButton extends StatelessWidget {
  const PhonePageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 47.h,
        child: OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PhoneMail(),
                ),
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.phone, size: 30.sp),
                SizedBox(width: 10.w),
                Text(
                  'Phone Number',
                  style: TextStyle(color: ThemeColor.green),
                ),
              ],
            )),
      ),
    );
  }
}
