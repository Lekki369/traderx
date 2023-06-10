// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:traderx/controller/global.dart';
import 'package:traderx/sign_up_in_page/controller/sign_up_in_controller.dart';
import 'package:traderx/sign_up_in_page/views/reused_widget.dart';

class SignUpEmail extends GetView<SignUpInController> {
  const SignUpEmail({super.key});

  @override
  Widget build(BuildContext context) {
    String deviceType = Global.deviceInfo();

    TextEditingController userName = TextEditingController();
    TextEditingController password = TextEditingController();
    Get.put(SignUpInController());
    void signUp() {
      controller.signUp(
        email: userName.text.trim(),
        phoneNo: 'null',
        channel: deviceType,
        deviceIdentifier: deviceType,
        otp: 'null',
        password: password.text.trim(),
        registerAsNewDevice: true,
        username: 'User',
      );
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 70.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: Global.textStyle(
                  fontWeight: FontWeight.w500,
                  size: 16.sp,
                  color: Colors.black,
                ),
              ),
              Text(
                'Michael',
                style: Global.textStyle(
                    fontWeight: FontWeight.w700, size: 20, color: Colors.black),
              ),
              SizedBox(
                height: 50.h,
              ),
              Global.textFieldContainer(
                text: 'Email',
                width: double.infinity,
                height: 57,
                color: Global.grey,
                hasBorder: false,
                child: textField(
                    iscancelButtonPresent: false,
                    isclearPhoneNoIconPresent: false,
                    isPasswordVisible: controller.isVisible.value,
                    forPassword: false,
                    controller: userName,
                    hintText: 'Email',
                    icons: Icons.abc,
                    isIconPresent: false,
                    iconFunction: () {}),
              ),
              SizedBox(height: 24.h),
              Obx(() {
                return Global.textFieldContainer(
                    text: 'Password',
                    width: double.infinity,
                    height: 57,
                    color: Global.grey,
                    child: textField(
                      iscancelButtonPresent: false,
                      isclearPhoneNoIconPresent: false,
                      isPasswordVisible: controller.isVisible.value,
                      forPassword: true,
                      controller: password,
                      isIconPresent: true,
                      hintText: 'Password',
                      icons: Icons.visibility,
                      iconFunction: () => controller.visible(),
                    ),
                    hasBorder: false);
              }),
              forgetPassword(controller: controller),
              SizedBox(height: 73.h),
              Global.defaultContainer(
                  width: double.infinity,
                  height: 60,
                  color: Global.green,
                  child: TextButton(
                    onPressed: () async {
                      signUp();
                    },
                    child: Text(
                      'Login',
                      style: Global.textStyle(
                          fontWeight: FontWeight.w700,
                          size: 18.sp,
                          color: Global.white),
                    ),
                  ),
                  hasBorder: false),
              SizedBox(height: 32.5.h),
              emailPhoneLogIn(controller: controller)
            ],
          ),
        ),
      ),
    );
  }
}
