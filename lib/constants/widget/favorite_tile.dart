import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/constants/app_widgets.dart';
import 'package:nike_store/constants/colors.dart';
import 'package:nike_store/constants/styles.dart';

class FavoriteTile extends StatelessWidget {
  const FavoriteTile(
      {super.key,
      required this.images,
      required this.title,
      required this.amount});

  final String images;
  final String title;
  final double amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      width: 159.w,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Image.asset(
                width: 125.w,
                height: 81.h,
                images,
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            richText(
              text: 'BEST SELLER',
              style: AppStyle().poppins12BoldFont.copyWith(
                    color: AppColor.blueColor,
                  ),
            ),
            richText(
              text: title,
              style: AppStyle().raleway16NormalFont.copyWith(
                    color: AppColor.blackColor,
                  ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              width: 131.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  richText(
                    text: '\$$amount',
                    style: AppStyle().poppins16BoldFont.copyWith(
                          color: AppColor.blackColor,
                        ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColor.blueColor,
                        radius: 8.r,
                      ),
                      SizedBox(width: 10.w),
                      CircleAvatar(
                        backgroundColor: AppColor.blackColor,
                        radius: 8.r,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
