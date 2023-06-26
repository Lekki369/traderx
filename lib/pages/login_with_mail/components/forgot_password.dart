import 'package:flutter/material.dart';
import 'package:traderx/theme/colors.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
  // final style = mainTheme.textButtonTheme.style?.textStyle;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: ThemeColor.black),
      ),
    );
  }
}