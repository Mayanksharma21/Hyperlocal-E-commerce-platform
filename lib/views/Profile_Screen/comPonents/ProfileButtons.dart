import 'package:flutter/material.dart';
import 'package:eshop/content/consts.dart';

Widget profileButton({String? count, String? title, widthPassed}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      count!.text.fontFamily(bold).color(darkFontGrey).size(16).make(),
      5.heightBox,
      title!.text.color(darkFontGrey).size(14).make(),
    ],
  )
  .box
  .white
  .roundedSM
  .width(widthPassed)
  .height(80)
  .padding(const EdgeInsets.all(4))
  .make();
}
