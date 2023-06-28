import 'package:flutter/material.dart';
import '../../../../theme/theme.dart';

class NoAccount extends StatelessWidget {
  const NoAccount({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Don\'t have an account?'),
          TextButton(
            onPressed: () {},
            child: Text(
              'Sign Up',
              style: TextStyle(color: ThemeColor.green),
            ),
          ),
        ],
      ),
    );
  }
}
