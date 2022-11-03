import 'package:eshop/views/Home_screens/Home.dart';
import 'package:eshop/views/Home_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:eshop/content/consts.dart';
import 'package:get/get.dart';

Widget redButton({color, textcolor, String? varname, onpress}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: const EdgeInsets.all(12),
      ),
      onPressed: () {
        Get.to(() => Home());
      },
      child: varname!.text.color(textcolor).fontFamily(bold).make());
}
