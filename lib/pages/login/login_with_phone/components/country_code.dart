import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../theme/theme.dart';
import 'conponents.dart';

class CodePicker extends StatelessWidget {
  final TextEditingController emailController;
  const CodePicker({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Phone', style: TextsTheme.labelTextStyle),
        SizedBox(height: 2.h),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 57.h,
              width: 100.w,
              decoration: BoxDecoration(
                color: ThemeColor.countryCodeBackgoundColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: const CountryCodePicker(
                initialSelection: 'Nigeria',
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: PhoneTextField(controller: emailController),
            ),
          ],
        ),
      ],
    );
  }
}
