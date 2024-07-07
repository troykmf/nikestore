import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:intl/intl.dart';
import 'package:nike_store/constants/helper/date_time_helper.dart';

import '../../constants/app_widgets.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';
import '../view/notifications_view.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  DateTime myDate = DateTime.now();

  // String dateFormatted;

  @override
  void initState() {
    // dateFormatted = DateFormat('dd/MM/yyyy').format(myDate);
    super.initState();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
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
                    richText(
                        text: 'Notifications', style: AppStyle().blackBoldText),
                    CircleAvatar(
                      backgroundColor: AppColor.whiteColor,
                      radius: 22.r,
                      child: const Icon(CupertinoIcons.delete),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    checkDate(DateTime.now().toString()),
                    style: AppStyle().raleway18BoldFont,
                  ),
                ),
                SizedBox(height: 20.h),
                NotificationsView(),
                // SizedBox(height: 20.h)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
