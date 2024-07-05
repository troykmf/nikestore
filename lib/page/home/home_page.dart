import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:nike_store/constants/app_widgets.dart';
import 'package:nike_store/constants/colors.dart';
import 'package:nike_store/constants/styles.dart';

import '../view/tab_bar_view.dart';
// import 'package:nike_store/page/home/home_page_provider.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController searchController;

  final zoomController = ZoomDrawerController();

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final allProductProvider = Provider.of<HomePageProvider>(context);
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.maxFinite.w,
                child: Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          ZoomDrawer.of(context)!.open();
                        },
                        child: Image.asset(
                            width: 25.17.w,
                            height: 18.h,
                            'lib/asset/image/Hamburger.png'),
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            height: 40.h,
                            width: 170.w,
                            child: richText(
                                text: 'Explore',
                                style: AppStyle().authHeadingText),
                          ),
                          Positioned(
                            left: -0.w,
                            child: Image.asset(
                              'lib/asset/image/Highlight_05.png',
                              color: AppColor.blackColor,
                              height: 19.h,
                              width: 18.w,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 25.r,
                            backgroundColor: Colors.white70,
                            child: Image.asset('lib/asset/icon/bag.png'),
                          ),
                          Positioned(
                              right: 5.w,
                              top: 5.h,
                              child: Image.asset('lib/asset/image/reddot.png'))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 270.w,
                    height: 55.h,
                    child: textField(
                      controller: searchController,
                      hintText: 'Lookin for shoes',
                      suffix: null,
                    ),
                  ),
                  Image.asset(
                    'lib/asset/image/searchfilter.png',
                    width: 52.w,
                    height: 52.h,
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: richText(
                  text: 'Select Category',
                  style: AppStyle()
                      .blackRegularText
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 15.h),
              TabBarItems(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
