import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/page/authentication/sign_in_page.dart';
import 'package:nike_store/services/auth/auth_service.dart';

import '../../constants/app_widgets.dart';
import '../../constants/colors.dart';
import '../../constants/route/push_page.dart';
import '../../constants/styles.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  signup({
    required String email,
    required String password,
  }) async {
    try {
      await AuthService.fromFirebase().createUser(
        email: email,
        password: password,
      );
      AuthService.fromFirebase().sendEmailVerification();
      Navigator.of(context).pushAndRemoveUntil(
        createRoute(const SignInPage()),
        (route) => false,
      );
      popUpDialog(context, 'We Have Sent Verification Code To Your Email');
    } catch (_) {}
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
              Container(
                width: 44.r,
                height: 44.r,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.scaffoldColor,
                ),
                child: const Icon(CupertinoIcons.back),
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
                        text: 'Register Account',
                        style: AppStyle().authHeadingText,
                      ),
                      const Spacer(),
                      richText(
                        text:
                            'Fill Your Details Or Continue With \nSocial Media',
                        style: AppStyle().authSubtitleText.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30.r),
              titleAndTextField(
                hintText: 'xxxxxxxxx',
                titleText: 'Your Name',
                controller: _nameController,
                initialValue: 'initialValue',
                suffixIcon: false,
              ),
              SizedBox(height: 30.r),
              titleAndTextField(
                hintText: 'xyz@gmail.com',
                titleText: 'Email Address',
                controller: _emailController,
                initialValue: 'initialValue',
                suffixIcon: false,
              ),
              SizedBox(height: 30.r),
              titleAndTextField(
                obscureText: true,
                hintText: '**************',
                titleText: 'Password',
                controller: _passwordController,
                initialValue: 'initialValue',
                suffixIcon: true,
              ),
              SizedBox(height: 40.r),
              GestureDetector(
                onTap: () {
                  final email = _emailController.text.trim();
                  final password = _passwordController.text.trim();
                  signup(email: email, password: password);
                },
                child: Align(
                  child: button(
                    color: AppColor.blueColor,
                    child: Align(
                      child: richText(
                        text: 'Sign Up',
                        style: AppStyle().primaryButtonText.copyWith(
                              fontSize: 14,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.r),
              Align(
                child: button(
                  color: AppColor.scaffoldColor,
                  child: Align(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('lib/asset/image/google.png'),
                        SizedBox(width: 10.r),
                        richText(
                          text: 'Sign Up With Google',
                          style: AppStyle().blackRegularText.copyWith(
                                fontSize: 14.r,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    createRoute(
                      const SignInPage(),
                    ),
                    (route) => false,
                  );
                },
                child: Align(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already Have Account? ',
                          style: AppStyle().deepGreyRegularText.copyWith(
                                color: AppColor.deepGreyColor,
                              ),
                        ),
                        TextSpan(
                          text: 'Log In',
                          style: AppStyle().blackRegularText,
                        ),
                      ],
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
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
