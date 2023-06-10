// ignore_for_file: unused_local_variable
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';
import 'package:traderx/model/user.dart';

import '../../home_page/view/homepage.dart';

class SignUpInController extends GetxController {
  var isVisible = true.obs;
  var toPhoneLogin = false.obs;
  var ischecked = false.obs;
  var clear = true.obs;

  void toPhoneLog() {
    toPhoneLogin.value = !toPhoneLogin.value;
  }

  void toClear() {
    clear.value = !clear.value;
  }

  void checked() {
    ischecked.value = !ischecked.value;
  }

  void visible() {
    isVisible.value = !isVisible.value;
  }

  void signUp(
      {required dynamic username,
      required dynamic password,
      required dynamic deviceIdentifier,
      required dynamic channel,
      required dynamic otp,
      required bool registerAsNewDevice,
      required dynamic phoneNo,
      required dynamic email}) async {
    final user = Login(
      phoneNo: phoneNo.toString(),
      email: email.toString(),
      username: username.toString(),
      password: password.toString(),
      deviceIdentifier: deviceIdentifier.toString(),
      channel: channel.toString(),
      registerAsNewDevice: registerAsNewDevice,
      otp: otp.toString(),
    );
    const String apiUrl = 'https://core.development.4traderx.com/login';

    var loginInfo = jsonEncode({
      "phoneNo": phoneNo,
      "email": email,
      "username": username,
      "password": password,
      "deviceIdentifier": deviceIdentifier,
      "registerAsNewDevice": registerAsNewDevice,
      "otp": otp,
      "channel": channel,
    });
    final response = await http.post(Uri.parse(apiUrl), body: loginInfo);
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomePage());
    });
  }
}
