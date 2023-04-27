// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../controller/global.dart';
import 'reused_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: Global.textStyle(
            fontWeight: FontWeight.w500,
            size: 10.sp,
            color: Global.black,
          ),
          unselectedLabelStyle: Global.textStyle(
            fontWeight: FontWeight.w500,
            size: 10.sp,
            color: Global.black,
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Global.black,
          unselectedItemColor: Global.lightgrey3,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                color: Global.orange,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Accounts',
              icon: Image.asset('lib/assets/bank_cards_icon 3.png'),
            ),
            BottomNavigationBarItem(
              label: 'Apps',
              icon: Image.asset('lib/assets/apps_icon.png'),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Image.asset('lib/assets/settings_icon.png'),
            ),
          ]),
      body: Padding(
        padding: EdgeInsets.only(
          left: 12.w,
          right: 12.w,
          top: 30.h,
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Global.grey3,
                      child: Image.asset('lib/assets/user_profile.png'),
                    ),
                    SizedBox(width: 7.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome',
                          style: Global.textStyle(
                            fontWeight: FontWeight.w500,
                            size: 16.sp,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Michael Ajayi',
                          style: Global.textStyle(
                              fontWeight: FontWeight.w700,
                              size: 20.sp,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Global.grey3,
                      child: Stack(
                        children: [
                          Icon(Icons.notifications, color: Global.grey6),
                          Positioned(
                              left: 16.w,
                              child: CircleAvatar(
                                  radius: 3.r, backgroundColor: Colors.red)),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 24.h),
                accounts(
                    color: Global.lightgreen,
                    accountName: 'Checkings',
                    money: '\$25,000.00'),
                SizedBox(height: 24.h),
                accounts(
                    color: Global.orange2,
                    accountName: 'Business',
                    money: '\$5,000.00'),
                SizedBox(height: 24.h),
                othersContents(
                  topColor: Global.lightBlue2,
                  buttomColor: Global.lightBlue,
                  image: 'lib/assets/group1.png',
                  texts: [
                    Text(
                      'Get \$5 plus 10% of the fee for 365 days',
                      style: Global.textStyle(
                          fontWeight: FontWeight.w700,
                          size: 14.sp,
                          color: Global.black),
                    ),
                    Text(
                      'Refer a friend and get \$5 when they make',
                      style: Global.textStyle(
                          fontWeight: FontWeight.w400,
                          size: 12.sp,
                          color: Global.black),
                    ),
                    Text(
                      'their first dollars to naira exchange of \$500',
                      style: Global.textStyle(
                          fontWeight: FontWeight.w400,
                          size: 12.sp,
                          color: Global.black),
                    ),
                    Text(
                      'and above, plus 10% of the fee everytime',
                      style: Global.textStyle(
                          fontWeight: FontWeight.w400,
                          size: 12.sp,
                          color: Global.black),
                    ),
                    Text(
                      'they make exchange for 365 days.',
                      style: Global.textStyle(
                          fontWeight: FontWeight.w400,
                          size: 12.sp,
                          color: Global.black),
                    )
                  ],
                ),
                othersContents(
                    image: 'lib/assets/group2.png',
                    texts: [
                      Text(
                        'Currency Exchange',
                        style: Global.textStyle(
                            fontWeight: FontWeight.w700,
                            size: 14.sp,
                            color: Global.black),
                      ),
                      Text(
                        'View pendng and completed exchange request',
                        style: Global.textStyle(
                            fontWeight: FontWeight.w400,
                            size: 12.sp,
                            color: Global.black),
                      ),
                      Text(
                        'request',
                        style: Global.textStyle(
                            fontWeight: FontWeight.w400,
                            size: 12.sp,
                            color: Global.black),
                      ),
                    ],
                    topColor: Global.lightgrey,
                    buttomColor: Global.lightgrey2)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
