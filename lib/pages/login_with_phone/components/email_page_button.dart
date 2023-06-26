import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traderx/pages/login_with_mail/screens/mail_screen.dart';
import 'package:traderx/theme/colors.dart';

class EmailPageButton extends StatelessWidget {
  const EmailPageButton({super.key});

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
                  builder: (context) => const LoginMail(),
                ),
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.mail, size: 30.sp),
                SizedBox(width: 10.w),
                Text(
                  'Email',
                  style: TextStyle(color: ThemeColor.green),
                ),
              ],
            )),
      ),
    );
  }
}
