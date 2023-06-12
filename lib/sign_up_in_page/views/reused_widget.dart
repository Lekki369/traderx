import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import '../../controller/global.dart';
import 'sign_up_email.dart';
import 'sign_up_phone.dart';

Widget textField({
  required bool iscancelButtonPresent,
  required bool isPasswordVisible,
  required bool forPassword,
  required bool isIconPresent,
  required bool isclearPhoneNoIconPresent,
  required TextEditingController controller,
  required String hintText,
  required IconData icons,
  required VoidCallback iconFunction,
}) {
  return TextField(
    cursorColor: Global.grey6,
    textInputAction: forPassword ? TextInputAction.done : TextInputAction.next,
    obscureText: forPassword
        ? iscancelButtonPresent
            ? false
            : isPasswordVisible
        : false,
    keyboardType: iscancelButtonPresent
        ? TextInputType.number
        : forPassword
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
    controller: controller,
    decoration: InputDecoration(
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      suffixIcon: isIconPresent
          ? IconButton(
              onPressed: iconFunction,
              icon: Icon(forPassword
                  ? isPasswordVisible
                      ? Icons.visibility_off
                      : Icons.visibility
                  : iscancelButtonPresent
                      ? icons
                      : isclearPhoneNoIconPresent
                          ? Icons.cancel_outlined
                          : icons),
              color: Global.grey6,
            )
          : null,
      hintText: hintText,
      hintStyle: Global.textStyle(
        fontWeight: FontWeight.w500,
        size: 14.sp,
        color: Global.grey6,
      ),
    ),
  );
}

Widget forgetPassword({required var controller}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Obx(() => Row(
            children: [
              IconButton(
                onPressed: () => controller.checked(),
                icon: Icon(controller.ischecked.value
                    ? Icons.check_box
                    : Icons.check_box_outline_blank),
              ),
              Text(
                'Remember Login',
                style: Global.textStyle(
                    fontWeight: FontWeight.w400,
                    size: 14.sp,
                    color: Global.black),
              )
            ],
          )),
      TextButton(
        onPressed: () {},
        child: Text(
          'ForgetPassword?',
          style: Global.textStyle(
              fontWeight: FontWeight.w700, size: 14.sp, color: Global.black),
        ),
      )
    ],
  );
}

Widget dontHaveAnAccount() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Don\'t have an account?',
        style: Global.textStyle(
            fontWeight: FontWeight.w600, size: 16.sp, color: Global.black),
      ),
      TextButton(
        onPressed: () {},
        child: Text(
          'SignUp',
          style: Global.textStyle(
              fontWeight: FontWeight.w600, size: 16.sp, color: Global.green),
        ),
      )
    ],
  );
}

Widget emailPhoneLogIn({required var controller}) {
  return Column(
    children: [
      dontHaveAnAccount(),
      SizedBox(height: 53.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '-or log in with-',
            style: Global.textStyle(
                fontWeight: FontWeight.w500, size: 14, color: Global.black),
          )
        ],
      ),
      SizedBox(height: 27.h),
      Center(
        child: Global.defaultContainer(
            width: 170.w,
            height: 47.h,
            color: Colors.transparent,
            child: Obx(() => TextButton(
                onPressed: () async {
                  controller.toPhoneLog();
                  await controller.toPhoneLogin.value
                      ? Get.to(() => const SignUpPhone())
                      : Get.to(() => const SignUpEmail());
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      controller.toPhoneLogin.value ? Icons.email : Icons.phone,
                      size: 30.sp,
                      color: Global.green,
                    ),
                    // SizedBox(width: 10.w),
                    Text(
                      controller.toPhoneLogin.value ? 'Email' : 'Phone Number',
                      style: Global.textStyle(
                          fontWeight: FontWeight.w700,
                          size: 14.sp,
                          color: Global.green),
                    ),
                  ],
                ))),
            hasBorder: true),
      ),
    ],
  );
}
