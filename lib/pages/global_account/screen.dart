import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:traderx/pages/global_account/components/bottom_narbar_items.dart';
import '../../model/image.dart';
import '../../theme/theme.dart';
import '../global_account/components/component.dart';

class GlobalAccount extends StatelessWidget {
  const GlobalAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: items,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                const UserCard(),
                SizedBox(height: 25.h),
                AccountCard(
                    color: ThemeColor.lightGreen,
                    accountType: 'Checkings Account',
                    accountBalance: '\$25,000.00'),
                SizedBox(height: 25.h),
                AccountCard(
                    color: ThemeColor.lightOrange2,
                    accountType: 'Business Account',
                    accountBalance: '\$5,000.00'),
                SizedBox(height: 25.h),
                InfoCard(
                  foregroundColor: ThemeColor.lightBlue,
                  backgroundColor: ThemeColor.lightBlue2,
                  image: Images.group1,
                  headlineText: 'Get \$5 plus 10% of the fee for 365 days',
                  bodyText: ' Refer a friend and get \$5 when they make'
                      'and above, plus 10% of the fee everytime '
                      'they make exchange for 365 days.',
                ),
                SizedBox(height: 25.h),
                InfoCard(
                  foregroundColor: ThemeColor.lightBrown,
                  backgroundColor: ThemeColor.lightBrown2,
                  image: Images.group2,
                  headlineText: 'Currency Exchange',
                  bodyText: ' View penidng and completed exchange request',
                ),
                SizedBox(height: 25.h),
                const Card3()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
