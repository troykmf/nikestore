import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/constants/colors.dart';
import 'package:nike_store/constants/styles.dart';

Widget button({
  required Color color,
  required Widget child,
}) {
  return Container(
    height: 50.r,
    width: 315.r,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15.r),
    ),
    child: child,
  );
}

Widget richText({
  required String text,
  required TextStyle style,
}) {
  return RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      text: text,
      style: style,
    ),
  );
}

Widget titleAndTextField({
  required String hintText,
  required bool suffixIcon,
  required String titleText,
  TextInputType? textInputType,
  required TextEditingController controller,
  bool? obscureText,
  required String initialValue,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      richText(
        text: titleText,
        style: AppStyle().blackRegularText,
      ),
      SizedBox(height: 10.r),
      TextField(
        obscuringCharacter: '*',
        obscureText: obscureText ?? false,
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyle().deepGreyRegularText,
          fillColor: AppColor.whiteColor,
          filled: true,
          suffixIcon: suffixIcon
              ? const Icon(
                  Icons.visibility_off_outlined,
                  size: 20,
                  color: AppColor.deepGreyColor,
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    ],
  );
}

Future<void> popUpDialog(
  BuildContext context,
  String subtitle,
) async {
  return showDialog(
    context: context,
    builder: (context) {
      return SizedBox(
        width: double.maxFinite,
        height: 196.r,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.r),
          child: AlertDialog(
            elevation: 0.0,
            alignment: Alignment.center,
            backgroundColor: AppColor.whiteColor,
            scrollable: true,
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.r,
              vertical: 8,
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30.r),
                Container(
                  width: 40.r,
                  height: 40.r,
                  decoration: const BoxDecoration(
                      color: AppColor.blueColor,
                      image: DecorationImage(
                        fit: BoxFit.scaleDown,
                        image: AssetImage('lib/asset/image/email.png'),
                      ),
                      shape: BoxShape.circle),
                ),
                SizedBox(height: 30.r),
                richText(
                  text: 'Check Your Email',
                  style: AppStyle().blackBoldText,
                ),
                SizedBox(height: 15.r),
                richText(
                  text: subtitle,
                  style: AppStyle().deepGreyRegularText,
                ),
                SizedBox(height: 30.r),
              ],
            ),
          ),
        ),
      );
    },
  );
}

Widget otpTextField(
  bool first,
  last,
  BuildContext context,
  TextEditingController controller,
) {
  return SizedBox(
    height: 85.r,
    child: AspectRatio(
      aspectRatio: 0.85,
      child: TextField(
        controller: controller,
        autofocus: true,
        onChanged: (value) {
          if (value.length == 1 && last == false) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty && first == false) {
            FocusScope.of(context).previousFocus();
          }
        },
        showCursor: false,
        readOnly: false,
        textAlign: TextAlign.center,
        style: AppStyle().authSubtitleText.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: AppColor.blackColor,
            ),
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counter: const Offstage(),
          fillColor: AppColor.scaffoldColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: const BorderSide(
              color: AppColor.deepGreyColor,
            ),
          ),
        ),
      ),
    ),
  );
}

// Widget textField(
//   TextEditingController controller,
//   TextInputType keyboardType,
//   String hintText,
//   Widget prefix,
//   Widget suffix,
// ) {
//   return TextField(
//     controller: controller,
//     keyboardType: keyboardType,
//     decoration: InputDecoration(
//         hintText: hintText,
//         hintStyle: AppStyle().blackRegularText.copyWith(fontSize: 12.r),
//         filled: true,
//         fillColor: AppColor.whiteColor,
//         prefix: prefix,
//         suffix: suffix),
//   );
// }

Widget textField({
  required TextEditingController controller,
  Widget? suffix,
  required String hintText,
}) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: AppStyle()
          .authSubtitleText
          .copyWith(fontSize: 14.r, color: AppColor.blackColor),
      prefixIcon: const Icon(
        CupertinoIcons.search,
      ),
      prefixIconColor: AppColor.blackColor,
      suffix: suffix,
      counter: const Offstage(),
      fillColor: AppColor.whiteColor,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.r),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.r),
        borderSide: const BorderSide(
          color: AppColor.deepGreyColor,
        ),
      ),
    ),
  );
}

class TabBarItems extends StatefulWidget {
  const TabBarItems({super.key});

  @override
  State<TabBarItems> createState() => _TabBarItemsState();
}

class _TabBarItemsState extends State<TabBarItems> {
  List<String> tabTitle = [
    'All Shoes',
    'Outdoor',
    'Tennis',
  ];

  int currentIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: tabTitle.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentIdx = index;
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20.r),
                  width: 110.r,
                  height: 20.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: currentIdx == index
                        ? AppColor.blueColor
                        : AppColor.whiteColor,
                  ),
                  child: Center(
                    child: richText(
                      text: tabTitle[index],
                      style: AppStyle().authSubtitleText.copyWith(
                            fontSize: 14,
                            color: currentIdx == index
                                ? AppColor.whiteColor
                                : AppColor.blackColor,
                          ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

Widget drawerRowWidget(
  String image,
  String title,
  VoidCallback ontap,
) {
  return GestureDetector(
    onTap: ontap,
    child: SizedBox(
      width: 295.r,
      height: 50.r,
      child: Row(
        children: [
          Image(
            width: 21.r,
            height: 21.r,
            color: AppColor.whiteColor,
            filterQuality: FilterQuality.high,
            image: AssetImage(image),
          ),
          SizedBox(width: 25.r),
          richText(
            text: title,
            style: AppStyle().whiteMediumText.copyWith(fontSize: 18.r),
          ),
        ],
      ),
    ),
  );
}

Widget profileTitleAndContainer({
  required String title,
  bool isIcon = false,
  required String containerTitle,
  required TextStyle style,
}) {
  return SizedBox(
    width: 335.r,
    height: 84.r,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        richText(
          text: title,
          style: AppStyle().blackBoldText,
        ),
        Container(
          height: 48.r,
          width: 335.r,
          decoration: BoxDecoration(
            color: AppColor.onbardingTitleColor,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                richText(
                  text: containerTitle,
                  style: style,
                ),
                isIcon
                    ? Icon(
                        Icons.done,
                        size: 18.r,
                        color: AppColor.blueColor,
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
