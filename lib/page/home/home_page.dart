import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:nike_store/constants/app_widgets.dart';
import 'package:nike_store/constants/colors.dart';
import 'package:nike_store/constants/styles.dart';
// import 'package:nike_store/page/home/home_page_provider.dart';
// import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final TextEditingController searchController;

  // double xOffset = 0;
  // double yOffset = 0;

  // bool isDrawerOpen = false;
  final zoomController = ZoomDrawerController();

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final allProductProvider = Provider.of<HomePageProvider>(context);
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.maxFinite.r,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // isDrawerOpen
                      //     ? GestureDetector(
                      //         onTap: () {
                      //           setState(() {
                      //             xOffset = 0;
                      //             yOffset = 0;
                      //             isDrawerOpen = false;
                      //           });
                      //         },
                      //         child: SizedBox(
                      //           width: 25.17.r,
                      //           height: 18.r,
                      //           child: Image.asset(
                      //               'lib/asset/image/Hamburger.png'),
                      //         ),
                      //       )
                      //     : GestureDetector(
                      //         onTap: () {
                      //           setState(() {
                      //             xOffset = 280;
                      //             yOffset = 80;
                      //             isDrawerOpen = true;
                      //           });
                      //         },
                      //         child: SizedBox(
                      //           width: 25.17.r,
                      //           height: 18.r,
                      //           child: Image.asset(
                      //               'lib/asset/image/Hamburger.png'),
                      //         ),
                      //       ),

                      GestureDetector(
                        onTap: () {
                          if (ZoomDrawer.of(context)!.isOpen()) {
                            ZoomDrawer.of(context)!.close();
                          } else {
                            ZoomDrawer.of(context)!.open();
                          }
                        },
                        child: SizedBox(
                          width: 25.17.r,
                          height: 18.r,
                          child: Image.asset('lib/asset/image/Hamburger.png'),
                        ),
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            height: 40,
                            width: 170,
                            child: richText(
                                text: 'Explore',
                                style: AppStyle().authHeadingText),
                          ),
                          Positioned(
                              left: -0.r,
                              child: Image.asset(
                                'lib/asset/image/Highlight_05.png',
                                color: AppColor.blackColor,
                                height: 19,
                                width: 18,
                              ))
                        ],
                      ),
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 25.r,
                            backgroundColor: Colors.white70,
                            child: Image.asset('lib/asset/icon/bag.png'),
                          ),
                          Positioned(
                              right: 5.r,
                              top: 5.r,
                              child: Image.asset('lib/asset/image/reddot.png'))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 270.r,
                    height: 55.r,
                    child: textField(
                      controller: searchController,
                      hintText: 'Lookin for shoes',
                      suffix: null,
                    ),
                  ),
                  SizedBox(
                      width: 52.r,
                      height: 52.r,
                      child: Image.asset('lib/asset/image/searchfilter.png')),
                ],
              ),
              SizedBox(height: 15.r),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: richText(
                  text: 'Select Category',
                  style: AppStyle()
                      .blackRegularText
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 15.r),
              const TabBarItems(),
            ],
          ),
        ),
      ),
    );
    // Container(
    //   // transform: Matrix4.translationValues(xOffset, yOffset, 0)
    //   //   ..scale(isDrawerOpen ? 0.85 : 1.00)
    //   //   ..rotateZ(isDrawerOpen ? -50 : 0),
    //   // duration: const Duration(milliseconds: 200),
    //   height: MediaQuery.of(context).size.height,
    //   width: MediaQuery.of(context).size.width,
    //   color: AppColor.scaffoldColor,
    //   child:
    // );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
