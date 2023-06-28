import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/user.dart';

class Api {
  static post([User? user]) {
    user = User();
    var data = jsonEncode(User.toJson(user));
    http.post(Uri.parse('https://core.development.4traderx.com/login'),
        body: data);
  }
}
