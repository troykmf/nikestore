import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_widgets.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  late final TextEditingController _emailController;

  @override
  void initState() {
    _emailController = TextEditingController();
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
                  height: 94,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      richText(
                        text: 'Forgot Password',
                        style: AppStyle().authHeadingText,
                      ),
                      const Spacer(),
                      richText(
                        text:
                            'Enter Your Email Account To Reset \nYour Password',
                        style: AppStyle().authSubtitleText.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40.r),
              titleAndTextField(
                hintText: 'xxxxxxxxx',
                titleText: 'Your Name',
                controller: _emailController,
                initialValue: 'initialValue',
                suffixIcon: false,
              ),
              SizedBox(height: 30.r),
              GestureDetector(
                onTap: () => popUpDialog(context,
                    'We Have Sent Password Recovery Code In Your Email'),
                child: Align(
                  child: button(
                    color: AppColor.blueColor,
                    child: Align(
                      child: richText(
                        text: 'Reset Password',
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
    _emailController.dispose();
    super.dispose();
  }
}
