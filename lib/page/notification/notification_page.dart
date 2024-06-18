import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: Center(
        child: Image.asset('lib/asset/icon/notification.png'),
      ),
    );
  }
}
