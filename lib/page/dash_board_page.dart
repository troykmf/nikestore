import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:nike_store/constants/colors.dart';
import 'package:nike_store/page/drawer/drawer_page.dart';
import 'package:nike_store/page/favorite/favorite_page.dart';
import 'package:nike_store/page/home/home_page.dart';
import 'package:nike_store/page/notification/notification_page.dart';
import 'package:nike_store/page/profile/profile_page.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int selectedIndex = 0;
  bool selectIndex = false;

  var pages = const [
    HomePage(),
    FavoritePage(),
    NotificationPage(),
    ProfilePage(),
  ];

  final zoomController = ZoomDrawerController();

  final PageController pageController = PageController(initialPage: 0);

  List<BottomNavigationBarItem> items = [
    // first bottom bar item
    const BottomNavigationBarItem(
        icon: Icon(
          Icons.home_outlined,
        ),
        label: 'Home'),
    // second bottom bar item
    const BottomNavigationBarItem(
        icon: Icon(
          CupertinoIcons.heart,
        ),
        label: 'Favorite'),
    // third bottom bar item
    const BottomNavigationBarItem(
        icon: Icon(
          CupertinoIcons.bell,
        ),
        label: 'Notification'),
    // fourth bottom bar item
    const BottomNavigationBarItem(
        icon: Icon(
          CupertinoIcons.person,
        ),
        label: 'Person'),
  ];

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreenWidth: MediaQuery.of(context).size.width,
      controller: zoomController,
      menuScreen: const DrawerPage(),
      mainScreen: Scaffold(
        backgroundColor: AppColor.onboardingColor,
        extendBody: true,
        body: pages[selectedIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          elevation: 0.r,
          shape: const CircleBorder(),
          backgroundColor: AppColor.blueColor,
          onPressed: () {},
          child: Image.asset(
            'lib/asset/icon/bag.png',
            color: AppColor.whiteColor,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          surfaceTintColor: AppColor.scaffoldColor,
          color: AppColor.scaffoldColor,
          elevation: 0.r,
          height: 90.r,
          shape: const CircularNotchedRectangle(),
          notchMargin: 15.r,
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            child: BottomNavigationBar(
              elevation: 0.r,
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColor.whiteColor,
              selectedItemColor: AppColor.blueColor,
              unselectedItemColor: AppColor.deepGreyColor,
              items: items,
            ),
          ),
        ),
      ),
    );
  }
}
