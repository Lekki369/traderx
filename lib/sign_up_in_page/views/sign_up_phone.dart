// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:country_code_picker/country_code_picker.dart';
import '../../controller/global.dart';
import '../controller/sign_up_in_controller.dart';
import 'reused_widget.dart';

class SignUpPhone extends GetView<SignUpInController> {
  const SignUpPhone({super.key});

  @override
  Widget build(BuildContext context) {
    String deviceType = Global.deviceInfo();
    TextEditingController phoneNo = TextEditingController();
    TextEditingController password = TextEditingController();
    String countryCode = '';

    void signUp() {
      controller.signUp(
        email: 'null',
        phoneNo: countryCode + phoneNo.text.trim(),
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
                    fontWeight: FontWeight.w700,
                    size: 20.sp,
                    color: Colors.black),
              ),
              SizedBox(
                height: 50.h,
              ),
              Row(
                children: [
                  Global.defaultContainer(
                      width: 100,
                      height: 57,
                      color: Global.grey3,
                      child: CountryCodePicker(
                        onChanged: (value) {
                          countryCode = value.toString();
                        },
                        initialSelection: '',
                      ),
                      hasBorder: false),
                  SizedBox(width: 16.w),
                  Expanded(
                    child: Global.textFieldContainer(
                      text: '',
                      width: double.infinity,
                      height: 57,
                      color: Global.grey,
                      hasBorder: false,
                      child: Row(
                        children: [
                          Expanded(
                            child: textField(
                                iscancelButtonPresent: true,
                                isclearPhoneNoIconPresent: true,
                                isPasswordVisible: controller.isVisible.value,
                                forPassword: false,
                                controller: phoneNo,
                                hintText: 'Phone Number',
                                icons: Icons.cancel_outlined,
                                isIconPresent: false,
                                iconFunction: () {}),
                          ),
                          IconButton(
                              onPressed: () => phoneNo.clear(),
                              icon: const Icon(Icons.cancel_outlined))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Obx(() {
                return Global.textFieldContainer(
                    text: 'Password',
                    width: double.infinity,
                    height: 57,
                    color: Global.grey,
                    child: textField(
                      isclearPhoneNoIconPresent: false,
                      iscancelButtonPresent: false,
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
