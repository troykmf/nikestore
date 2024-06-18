import 'package:flutter/material.dart';
import 'package:nike_store/constants/colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldColor,
      body: Center(
        child: Image.asset('lib/asset/icon/bag.png'),
      ),
    );
  }
}
