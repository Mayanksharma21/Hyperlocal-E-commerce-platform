import 'package:flutter/material.dart';
import 'package:eshop/content/consts.dart';

Widget redButton({onPress, color, textcolor, String ? varname}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: const EdgeInsets.all(12),
      ),
      onPressed: () {
        onPress;
      },
      child: varname!.text.color(textcolor).fontFamily(bold).make());
}
