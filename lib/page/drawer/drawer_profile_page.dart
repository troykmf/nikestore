import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/constants/app_widgets.dart';
import 'package:nike_store/constants/colors.dart';

import '../../constants/styles.dart';

class DrawerProfilePage extends StatefulWidget {
  const DrawerProfilePage({super.key});

  @override
  State<DrawerProfilePage> createState() => _DrawerProfilePageState();
}

class _DrawerProfilePageState extends State<DrawerProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: CircleAvatar(
                    backgroundColor: AppColor.onbardingTitleColor,
                    child: Icon(
                      CupertinoIcons.back,
                      size: 18.r,
                    ),
                  ),
                ),
                SizedBox(width: 110.r),
                Center(
                  child: richText(
                    text: 'Profile',
                    style: AppStyle().blackSemiBoldHeading,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.r),
            Container(
              width: 80.r,
              height: 82.r,
              decoration: const BoxDecoration(
                color: AppColor.onbardingTitleColor,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('lib/asset/image/shoe1.png'),
                ),
              ),
            ),
            SizedBox(height: 20.r),
            profileTitleAndContainer(
              title: 'Your Name',
              containerTitle: 'BELLO TOLULOPE',
              style: AppStyle().blackSmallSemiboldText.copyWith(),
            ),
            SizedBox(height: 20.r),
            profileTitleAndContainer(
              title: 'Email Address',
              containerTitle: 'troykmf@gmail.com',
              style: AppStyle().blackSmallSemiboldText.copyWith(),
            ),
            SizedBox(height: 20.r),
            profileTitleAndContainer(
              title: 'Password',
              containerTitle: '**********',
              style: AppStyle()
                  .blackSmallSemiboldText
                  .copyWith(letterSpacing: 1.r, color: AppColor.deepGreyColor),
            ),
            SizedBox(height: 40.r),
            button(
              color: AppColor.blueColor,
              child: Center(
                child: richText(
                  text: 'Save Now',
                  style: AppStyle().primaryButtonText,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
