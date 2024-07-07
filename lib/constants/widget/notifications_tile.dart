import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/constants/colors.dart';
import 'package:nike_store/constants/styles.dart';

class NotificationsTile extends StatelessWidget {
  const NotificationsTile({super.key, required this.image});

  // bool isSelected = false;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.h,
      width: 335.w,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: ColoredBox(
                color: AppColor.scaffoldColor,
                child: SizedBox(
                  width: 87.w,
                  height: 85.h,
                  child: Center(
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.w),
            SizedBox(
              width: 152.w,
              height: 60.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'We Have New \nProducts With Offers',
                    style: AppStyle().raleway16NormalFont.copyWith(
                          fontSize: 14,
                          height: 1.2.h,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$364.95',
                          style: AppStyle()
                              .poppins16BoldFont
                              .copyWith(fontSize: 14.sp),
                        ),
                        Text(
                          '\$260.00',
                          style: AppStyle().poppins16NormalFont.copyWith(
                              fontSize: 14.sp, color: AppColor.deepGreyColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
