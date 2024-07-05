import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nike_store/constants/widget/favorite_tile.dart';

class FavoriteView extends StatelessWidget {
  FavoriteView({super.key});

  List<String> images = [
    'lib/asset/image/shoe8.png',
    'lib/asset/image/shoe7.png',
    'lib/asset/image/shoe6.png',
    'lib/asset/image/shoe5.png',
    'lib/asset/image/shoe8.png',
    'lib/asset/image/shoe7.png',
    'lib/asset/image/shoe6.png',
    'lib/asset/image/shoe5.png',
  ];

  List<double> sneakerAmount = [
    58.7,
    37.8,
    47.7,
    57.6,
    58.7,
    37.8,
    47.7,
    57.6,
  ];

  List<String> names = [
    'Nike Jordan',
    'Nike Air Max',
    'Nike Club Max',
    'Nike Air Max',
    'Nike Jordan',
    'Nike Air Max',
    'Nike Club Max',
    'Nike Air Max',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 740.h,
      // width: double.maxFinite.w,
      child: GridView.count(
        physics: const BouncingScrollPhysics(),
        // shrinkWrap: true,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        children: List.generate(
          8,
          (index) {
            return FavoriteTile(
              images: images[index],
              title: names[index],
              amount: sneakerAmount[index],
            );
          },
        ),
      ),
    );
  }
}
