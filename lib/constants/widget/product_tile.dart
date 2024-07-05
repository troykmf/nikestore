import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/constants/app_widgets.dart';
import 'package:nike_store/constants/colors.dart';
import 'package:nike_store/constants/styles.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.image,
    required this.amount,
    required this.sneakerName,
  });
  final String image;
  final double amount;
  final String sneakerName;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(14.r)),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 18.w),
            height: 204.h,
            width: 159.w,
            color: AppColor.whiteColor,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 17.w, right: 17.w),
                    child: Image.asset(
                      image,
                      width: 125.w,
                      height: 81.h,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        richText(
                            text: 'BEST SELLER',
                            style: AppStyle()
                                .blackSmallSemiboldText
                                .copyWith(color: AppColor.blueColor)),
                        SizedBox(height: 5.h),
                        richText(
                            text: sneakerName,
                            // 'Nike Jordan',
                            style: AppStyle().raleway16NormalFont.copyWith(
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 10.h),
                        richText(
                            text: '\$$amount',
                            style: AppStyle().poppins16NormalFont.copyWith(
                                color: AppColor.blackColor,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: -5,
            right: -5,
            child: productTileFab(),
          )
        ],
      ),
    );
  }
}
