import 'package:flutter/material.dart';

import '../../../model/image.dart';

final items = BottomNavigationBar(
  items: [
    BottomNavigationBarItem(icon: Image.asset(Images.homeIcon), label: 'Home'),
    BottomNavigationBarItem(
        icon: Image.asset(Images.accountIcon), label: 'Accounts'),
    BottomNavigationBarItem(icon: Image.asset(Images.appIcon), label: 'Apps'),
    BottomNavigationBarItem(
        icon: Image.asset(Images.settingIcon), label: 'Settings'),
  ],
);
