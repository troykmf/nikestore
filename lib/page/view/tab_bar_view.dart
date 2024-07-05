import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/page/view/product_view.dart';

import '../../constants/app_widgets.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';

class TabBarItems extends StatefulWidget {
  const TabBarItems({super.key});

  @override
  State<TabBarItems> createState() => _TabBarItemsState();
}

class _TabBarItemsState extends State<TabBarItems> {
  List<String> tabTitle = [
    'All Shoes',
    'Outdoor',
    'Tennis',
  ];

  int currentIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // tab bar
        SizedBox(
          height: 50.h,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: tabTitle.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentIdx = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20.w),
                  width: 110.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: currentIdx == index
                        ? AppColor.blueColor
                        : AppColor.whiteColor,
                  ),
                  child: Center(
                    child: richText(
                      text: tabTitle[index],
                      style: AppStyle().authSubtitleText.copyWith(
                            fontSize: 14.sp,
                            color: currentIdx == index
                                ? AppColor.whiteColor
                                : AppColor.blackColor,
                          ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20.h),
        // main tab bar view
        SizedBox(
          // width: double.maxFinite.w,
          height: 243.h,
          child: Column(
            children: [
              seeAll(
                title: 'Popular Shoes',
                ontap: () {},
              ),
              SizedBox(height: 20.h),
              ProductView(
                title: 'Popular Shoes',
                ontap: () {},
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        seeAll(
          title: 'New Arrivals',
          ontap: () {},
        )
      ],
    );
  }
}
