import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traderx/theme/colors.dart';
import 'package:traderx/theme/themes.dart';

class PhoneTextField extends StatefulWidget {
  final TextEditingController controller;
  const PhoneTextField({super.key, required this.controller});

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  bool isCleared = false;
  void cleared() {
    setState(() {
      isCleared = true;
      if (isCleared) {
        widget.controller.clear();
        isCleared = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          height: 57.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
            color: ThemeColor.textFieldBackgoundColor,
          ),
          child: TextField(
            controller: widget.controller,
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Phone Number',
              hintStyle: TextsTheme.hintTextStyle,
              suffixIcon: IconButton(
                onPressed: cleared,
                icon: const Icon(Icons.clear_outlined),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
