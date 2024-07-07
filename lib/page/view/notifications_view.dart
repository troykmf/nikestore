import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/widget/notifications_tile.dart';

class NotificationsView extends StatelessWidget {
  NotificationsView({super.key});

  List<String> images = [
    'lib/asset/image/shoe8.png',
    'lib/asset/image/shoe7.png',
    'lib/asset/image/shoe6.png',
    'lib/asset/image/shoe5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      width: double.maxFinite.w,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            children: [
              NotificationsTile(
                image: images[index],
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          );
        },
      ),
    );
  }
}
