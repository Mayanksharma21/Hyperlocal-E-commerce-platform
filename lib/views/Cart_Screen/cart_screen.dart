import 'package:flutter/material.dart';
import 'package:eshop/content/consts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: "your cart is empty!!"
            .text
            .color(darkFontGrey)
            .fontFamily(bold)
            .size(18)
            .makeCentered());
  }
}
