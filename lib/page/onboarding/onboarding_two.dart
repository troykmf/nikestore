import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/constants/route/push_page.dart';
import 'package:nike_store/constants/styles.dart';
import 'package:nike_store/page/onboarding/onboarding_three.dart';

import '../../constants/app_widgets.dart';
import '../../constants/colors.dart';

class OnboardingTwo extends StatefulWidget {
  const OnboardingTwo({super.key});

  @override
  State<OnboardingTwo> createState() => _OnboardingTwoState();
}

class _OnboardingTwoState extends State<OnboardingTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.onboardingColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.r,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: 356.04.r,
                height: 255.r,
                child: Stack(
                  children: [
                    SizedBox(
                      width: 309.32.r,
                      height: 275.r,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('lib/asset/image/shoes2.png'),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 10.r,
                      top: 0.r,
                      child: SizedBox(
                        width: 95.r,
                        height: 70.r,
                        child: Image.asset('lib/asset/image/Highlight_1.png'),
                      ),
                    ),
                    Positioned(
                      right: 15.r,
                      child: SizedBox(
                        width: 45.r,
                        height: 40.r,
                        child: Image.asset('lib/asset/image/Misc_04.png'),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      bottom: 0.r,
                      child: Padding(
                        padding: EdgeInsets.only(right: 30.r, bottom: 0.r),
                        child: SizedBox(
                          width: 220.r,
                          height: 30.r,
                          child: Image.asset('lib/asset/image/Ellipse3.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              width: 486.r,
              height: 166.r,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/asset/image/Vector1.png'),
                ),
              ),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Let's Start Journey With Nike",
                      style: AppStyle().onboardingTitleText,
                    ),
                  ),
                  const SizedBox(height: 40),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          "Smart, Gorgeous & Fashionable \nCollection Explore Now",
                      style: AppStyle().onboardingSubtitleText,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  createRoute(
                    const OnboardingThree(),
                  ),
                  (route) => false,
                );
              },
              child: button(
                color: AppColor.primaryButtonColor,
                child: Center(
                  child: Text(
                    'Get Started',
                    style: AppStyle().secondaryButtonText,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
