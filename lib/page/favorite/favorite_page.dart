import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/constants/app_widgets.dart';
import 'package:nike_store/constants/styles.dart';

import '../../constants/colors.dart';
import '../view/favorite_view.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.whiteColor,
                      radius: 22.r,
                      child: const Icon(CupertinoIcons.back),
                    ),
                    richText(text: 'Favorite', style: AppStyle().blackBoldText),
                    CircleAvatar(
                      backgroundColor: AppColor.whiteColor,
                      radius: 22.r,
                      child: const Icon(CupertinoIcons.heart),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                FavoriteView()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
