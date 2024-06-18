import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/constants/app_widgets.dart';
import 'package:nike_store/constants/styles.dart';

import '../../constants/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColor.onbardingTitleColor,
                    child: Icon(
                      CupertinoIcons.back,
                      size: 18.r,
                    ),
                  ),
                  SizedBox(width: 120.r),
                  Center(
                    child: richText(
                      text: 'Profile',
                      style: AppStyle().blackSemiBoldHeading,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.r),
              SizedBox(
                width: 185.r,
                height: 149.r,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 96.r,
                      height: 96.r,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.whiteColor,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage('lib/asset/image/shoe1.png'),
                        ),
                      ),
                    ),
                    richText(
                      text: 'Bello Tolulope',
                      style: AppStyle().blackSemiBoldHeading,
                    ),
                    richText(
                      text: 'Change Profile Picture',
                      style: AppStyle().blackSmallSemiboldText.copyWith(
                            color: AppColor.blueColor,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.r),
              profileTitleAndContainer(
                isIcon: true,
                title: 'First Name',
                containerTitle: 'Tolulope',
                style: AppStyle().blackSmallNormalText.copyWith(
                      letterSpacing: 1.5.r,
                    ),
              ),
              SizedBox(height: 15.r),
              profileTitleAndContainer(
                isIcon: true,
                title: 'Last Name',
                containerTitle: 'Bello',
                style: AppStyle().blackSmallNormalText.copyWith(
                      letterSpacing: 1.5.r,
                    ),
              ),
              SizedBox(height: 15.r),
              profileTitleAndContainer(
                isIcon: true,
                title: 'Location',
                containerTitle: 'Nigeria',
                style: AppStyle().blackSmallNormalText.copyWith(
                      letterSpacing: 1.5.r,
                    ),
              ),
              SizedBox(height: 15.r),
              profileTitleAndContainer(
                isIcon: true,
                title: 'Mobile Number',
                containerTitle: '0803-973-4788',
                style: AppStyle().blackSmallNormalText.copyWith(
                      letterSpacing: 1.5.r,
                    ),
              ),
              SizedBox(height: 15.r),
            ],
          ),
        ),
      ),
    );
  }
}
