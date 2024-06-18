import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/constants/app_widgets.dart';
import 'package:nike_store/constants/colors.dart';
import 'package:nike_store/constants/styles.dart';
import 'package:nike_store/page/authentication/forgot_password_page.dart';
import 'package:nike_store/page/authentication/sign_up_page.dart';
import 'package:nike_store/page/dash_board_page.dart';
import 'package:nike_store/services/auth/auth_service.dart';

import '../../constants/route/push_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  signin({required String email, required String password}) async {
    try {
      await AuthService.fromFirebase().logIn(
        email: email,
        password: password,
      );
      final user = AuthService.fromFirebase().currentUser;
      if (user?.isEmailVerified ?? false) {
        Navigator.of(context).pushAndRemoveUntil(
          createRoute(
            const DashBoardPage(),
          ),
          (route) => false,
        );
      } else {
        popUpDialog(context,
            'Please Kindly Verify Your Email Or Sign Up To Use The App');
      }
    } catch (_) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 20.r),
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
                        text: 'Hello Again!',
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
              SizedBox(height: 15.r),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    createRoute(
                      const ForgotPasswordPage(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: richText(
                    text: 'Recovery Password',
                    style: AppStyle().deepGreyRegularText.copyWith(
                          fontSize: 12.r,
                        ),
                  ),
                ),
              ),
              SizedBox(height: 15.r),
              GestureDetector(
                onTap: () {
                  final email = _emailController.text.trim();
                  final password = _passwordController.text.trim();
                  signin(email: email, password: password);
                },
                child: Align(
                  child: button(
                    color: AppColor.blueColor,
                    child: Align(
                      child: richText(
                        text: 'Sign In',
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
                          text: 'Sign In With Google',
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
                      const SignUpPage(),
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
                          text: 'New User? ',
                          style: AppStyle().deepGreyRegularText.copyWith(
                                color: AppColor.deepGreyColor,
                              ),
                        ),
                        TextSpan(
                          text: 'Create Account',
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
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
