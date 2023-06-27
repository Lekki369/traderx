import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../theme/theme.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 60.h,
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Log In',
            style: TextStyle(color: ThemeColor.white),
          ),
        ),
      ),
    );
  }
}
