import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/constants/widget/product_tile.dart';

class ProductView extends StatelessWidget {
  ProductView({super.key, required this.title, required this.ontap});

  final String title;
  final VoidCallback ontap;

  List<String> images = [
    'lib/asset/image/shoe8.png',
    'lib/asset/image/shoe7.png',
  ];

  List<double> sneakerAmount = [
    302.50,
    752.00,
  ];

  List<String> names = [
    'Nike Jordan',
    'Nike Air Max',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 159.w,
      height: 204.h,
      child: ListView.builder(
        // shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 2,
        itemBuilder: (context, index) {
          return ProductTile(
            image: images[index],
            amount: sneakerAmount[index],
            sneakerName: names[index],
          );
        },
      ),
    );
  }
}
