import 'package:flutter/material.dart';
import '../../../theme/theme.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});
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
