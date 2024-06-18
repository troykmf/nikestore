import 'package:nike_store/constants/app_widgets.dart';
import 'package:nike_store/constants/colors.dart';
import 'package:nike_store/constants/route/push_page.dart';
import 'package:nike_store/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/page/onboarding/onboarding_two.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.onboardingColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Center(
              child: Stack(
                children: [
                  SizedBox(
                    width: 280.r,
                    height: 115.r,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text: 'WELCOME TO NIKE',
                          style: AppStyle().onboardingTitleText,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -5,
                    left: -5,
                    child: SizedBox(
                      width: 45,
                      height: 45,
                      child: Image.asset(
                        'lib/asset/image/Highlight_05.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.r,
              width: 134.r,
              child: Image.asset(
                'lib/asset/image/Vector.png',
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 70, 0, 0).r,
                  child: SizedBox(
                    width: double.maxFinite.r,
                    height: 400.r,
                    child: Image.asset('lib/asset/image/Vector1.png'),
                  ),
                ),
                Positioned(
                  top: -120.r,
                  right: 0.r,
                  child: SizedBox(
                    height: 550.r,
                    child: Image.asset(
                      'lib/asset/image/shoe1.png',
                      height: 55.r,
                    ),
                  ),
                ),
                Positioned(
                  left: 60.r,
                  top: 80.r,
                  child: SizedBox(
                    height: 45.r,
                    width: 45.r,
                    child: Image.asset(
                      'lib/asset/image/Misc_04.png',
                    ),
                  ),
                ),
                Positioned(
                  bottom: 90,
                  right: 35,
                  child: SizedBox(
                    height: 80.r,
                    width: 90.r,
                    child: Image.asset('lib/asset/image/Highlight_1.png'),
                  ),
                ),
                Positioned(
                  left: 25.r,
                  bottom: 20.r,
                  child: SizedBox(
                    height: 80.r,
                    width: 90.r,
                    child: Image.asset('lib/asset/image/Highlight_2.png'),
                  ),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                  createRoute(
                    const OnboardingTwo(),
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
