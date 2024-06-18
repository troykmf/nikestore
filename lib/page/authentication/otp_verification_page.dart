import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_widgets.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({super.key});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  late final TextEditingController _firstController;
  late final TextEditingController _secondController;
  late final TextEditingController _thirdController;
  late final TextEditingController _fourthController;

  @override
  void initState() {
    _firstController = TextEditingController();
    _secondController = TextEditingController();
    _thirdController = TextEditingController();
    _fourthController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: 44.r,
                  height: 44.r,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.scaffoldColor,
                  ),
                  child: const Icon(CupertinoIcons.back),
                ),
              ),
              SizedBox(height: 10.r),
              Center(
                child: SizedBox(
                  width: 315.r,
                  height: 94.r,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      richText(
                        text: 'OTP Verification',
                        style: AppStyle().authHeadingText,
                      ),
                      const Spacer(),
                      richText(
                        text:
                            'Please Check Your Email To See The Verification Code',
                        style: AppStyle().authSubtitleText.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.r),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  richText(
                    text: 'OTP Code',
                    style: AppStyle().blackBoldText.copyWith(
                        fontSize: 18.r, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 10.r),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      otpTextField(true, false, context, _firstController),
                      otpTextField(false, false, context, _secondController),
                      otpTextField(false, false, context, _thirdController),
                      otpTextField(false, true, context, _fourthController),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.r),
              GestureDetector(
                onTap: () => popUpDialog(context,
                    'We Have Sent Password Recovery Code In Your Email'),
                child: Align(
                  child: button(
                    color: AppColor.blueColor,
                    child: Align(
                      child: richText(
                        text: 'Verify',
                        style:
                            AppStyle().primaryButtonText.copyWith(fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _firstController.dispose();
    _secondController.dispose();
    _thirdController.dispose();
    _fourthController.dispose();
    super.dispose();
  }
}
