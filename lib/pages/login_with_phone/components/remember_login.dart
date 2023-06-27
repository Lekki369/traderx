import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/theme.dart';

class RememberLogin extends StatefulWidget {
  const RememberLogin({super.key});

  @override
  State<RememberLogin> createState() => _RememberLoginState();
}

class _RememberLoginState extends State<RememberLogin> {
  bool isAllowed = false;
  void allowed() {
    setState(() {
      isAllowed = !isAllowed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: allowed,
          icon: Icon(
            isAllowed ? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.grey,
          ),
        ),
        Text(
          'Remember Login',
          style: TextStyle(
            fontSize: 14.sp,
            color: ThemeColor.black,
          ),
        )
      ],
    );
  }
}
