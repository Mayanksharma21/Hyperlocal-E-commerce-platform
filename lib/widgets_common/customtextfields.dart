import 'package:flutter/material.dart';
import 'package:eshop/content/consts.dart';

Widget customTextField({String? fieldName, String? fieldNameHint, conrtoller}) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        fieldName!.text.color(Colors.black).fontFamily(semibold).size(16).make(),
        5.heightBox,
        TextFormField(
          decoration: InputDecoration(
            hintStyle: TextStyle(
              fontFamily: semibold,
              color: textfieldGrey,
            ),
            hintText: fieldNameHint,
            isDense: true,
            fillColor: lightGrey,
            filled: true,
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.black,
            )),
          ),
        ),
        5.heightBox,
      ],
    );
}
