import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../theme/theme.dart';
import '../components/conponents.dart';

class PhoneMail extends StatelessWidget {
  const PhoneMail({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back!', style: TextsTheme.headerTextStyle1),
                Text('Micheal', style: TextsTheme.headerTextStyle2),
                SizedBox(height: 30.h),
                CodePicker(emailController: phoneController),
                SizedBox(height: 30.h),
                PasswordTextField(controller: passwordController),
                SizedBox(height: 5.h),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RememberLogin(),
                    ForgotPassword(),
                  ],
                ),
                SizedBox(height: 50.h),
                const SignInButton(),
                const NoAccount(),
                SizedBox(height: 30.h),
                const Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 5,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                      Text('or log in with'),
                      SizedBox(
                        width: 5,
                        child: Divider(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                const EmailPageButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
