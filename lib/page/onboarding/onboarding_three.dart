import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/page/authentication/sign_up_page.dart';

import '../../constants/app_widgets.dart';
import '../../constants/colors.dart';
import '../../constants/route/push_page.dart';
import '../../constants/styles.dart';

class OnboardingThree extends StatefulWidget {
  const OnboardingThree({super.key});

  @override
  State<OnboardingThree> createState() => _OnboardingThreeState();
}

class _OnboardingThreeState extends State<OnboardingThree> {
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
                width: 450.04.r,
                height: 255.r,
                child: Stack(
                  children: [
                    Container(
                      width: 350.r,
                      height: 250.r,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              AssetImage('lib/asset/image/AirJordanNike.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -20.r,
                      top: 10.r,
                      child: SizedBox(
                        width: 400.r,
                        height: 250.r,
                        child: Image.asset('lib/asset/image/Vector2.png'),
                      ),
                    ),
                    Positioned(
                      left: 20.r,
                      child: Container(
                        height: 65.r,
                        width: 65.r,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image:
                                    AssetImage('lib/asset/image/Misc_04.png'))),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      bottom: 0.r,
                      child: Padding(
                        padding: EdgeInsets.only(right: 30.r, bottom: 0.r),
                        child: SizedBox(
                          width: 250.r,
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
                      text: "You Have The \nPower To",
                      style: AppStyle().onboardingTitleText,
                    ),
                  ),
                  SizedBox(height: 40.r),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text:
                          "There Are Many Beautiful And Attractive \nPlants To Your Room",
                      style: AppStyle()
                          .onboardingSubtitleText
                          .copyWith(letterSpacing: 0.5.r),
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
                    const SignUpPage(),
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
