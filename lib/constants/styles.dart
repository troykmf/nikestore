import 'package:nike_store/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  final authHeadingText = GoogleFonts.raleway(
    fontSize: 32.r,
    fontWeight: FontWeight.bold,
    color: AppColor.blackColor,
  );

  final authSubtitleText = GoogleFonts.poppins(
    fontSize: 16.r,
    fontWeight: FontWeight.normal,
    color: AppColor.scaffoldColor,
  );

  final blackSemiBoldHeading = GoogleFonts.raleway(
    fontSize: 20.r,
    fontWeight: FontWeight.w600,
    color: AppColor.blackColor,
  );

  final deepGreyRegularText = GoogleFonts.raleway(
    fontSize: 16.r,
    fontWeight: FontWeight.normal,
    color: AppColor.deepGreyColor,
  );

  final deepGreyBoldText = GoogleFonts.raleway(
    fontSize: 16.r,
    fontWeight: FontWeight.bold,
    color: AppColor.deepGreyColor,
  );

  final blackRegularText = GoogleFonts.raleway(
    fontSize: 16.r,
    fontWeight: FontWeight.normal,
    color: AppColor.blackColor,
  );

  final blackBoldText = GoogleFonts.raleway(
    fontSize: 16.r,
    fontWeight: FontWeight.bold,
    color: AppColor.blackColor,
  );

  final whiteMediumText = GoogleFonts.raleway(
    fontSize: 21.r,
    fontWeight: FontWeight.w600,
    color: AppColor.whiteColor,
  );

  final blackSmallSemiboldText = GoogleFonts.poppins(
    fontSize: 12.5.r,
    fontWeight: FontWeight.w600,
    color: AppColor.blackColor,
  );

  final blackSmallNormalText = GoogleFonts.raleway(
    fontSize: 12.5.r,
    fontWeight: FontWeight.normal,
    color: AppColor.blackColor,
  );

  final primaryButtonText = GoogleFonts.raleway(
    fontSize: 14.r,
    fontWeight: FontWeight.bold,
    color: AppColor.whiteColor,
  );

  final secondaryButtonText = GoogleFonts.raleway(
    fontSize: 14.r,
    fontWeight: FontWeight.bold,
    color: AppColor.blackColor,
  );

  final onboardingTitleText = GoogleFonts.raleway(
    fontSize: 34.r,
    fontWeight: FontWeight.bold,
    color: AppColor.onbardingTitleColor,
    letterSpacing: 1,
  );

  final onboardingSubtitleText = GoogleFonts.raleway(
    fontSize: 16.r,
    fontWeight: FontWeight.normal,
    color: AppColor.onboardingRegularColor,
    letterSpacing: 1,
  );
}
