import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traderx/pages/global_account/screen.dart';
import '../../../../api/api.dart';
import '../../../../theme/theme.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 60.h,
        child: ElevatedButton(
          onPressed: () {
            Api.post();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GlobalAccount(),
              ),
            );
          },
          child: Text(
            'Log In',
            style: TextStyle(color: ThemeColor.white),
          ),
        ),
      ),
    );
  }
}
