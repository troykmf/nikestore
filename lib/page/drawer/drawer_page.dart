import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:nike_store/constants/app_widgets.dart';
import 'package:nike_store/constants/colors.dart';
import 'package:nike_store/constants/route/push_page.dart';
import 'package:nike_store/constants/styles.dart';
import 'package:nike_store/page/drawer/drawer_profile_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.onboardingColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: IconButton(
                  onPressed: () {
                    ZoomDrawer.of(context)!.close();
                  },
                  icon: const Icon(
                    CupertinoIcons.clear,
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
              SizedBox(
                width: 183,
                height: 134,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 96,
                      height: 96,
                      decoration: const BoxDecoration(
                        color: AppColor.whiteColor,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.contain,
                          image: AssetImage('lib/asset/image/shoe1.png'),
                        ),
                      ),
                    ),
                    richText(
                      text: 'Bello Tolulope',
                      style: AppStyle().whiteMediumText,
                    )
                  ],
                ),
              ),
              SizedBox(height: 30.r),
              drawerRowWidget(
                'lib/asset/icon/person.png',
                'Profile',
                () {
                  Navigator.push(
                    context,
                    createRoute(
                      const DrawerProfilePage(),
                    ),
                  );
                },
              ),
              drawerRowWidget(
                'lib/asset/icon/bag.png',
                'My Cart',
                () {},
              ),
              drawerRowWidget(
                'lib/asset/icon/favorite.png',
                'Favorite',
                () {},
              ),
              drawerRowWidget(
                'lib/asset/icon/orders.png',
                'Orders',
                () {},
              ),
              drawerRowWidget(
                'lib/asset/icon/notification.png',
                'Notifications',
                () {},
              ),
              drawerRowWidget(
                'lib/asset/icon/settings.png',
                'Settings',
                () {},
              ),
              SizedBox(height: 20.r),
              Divider(
                thickness: 3.r,
                color: AppColor.whiteColor,
              ),
              SizedBox(height: 20.r),
              drawerRowWidget(
                'lib/asset/icon/signout.png',
                'Sign Out',
                () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
