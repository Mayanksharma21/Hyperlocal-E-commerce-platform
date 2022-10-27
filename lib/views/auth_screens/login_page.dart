import 'package:eshop/widgets_common/appLogo.dart';
import 'package:eshop/widgets_common/bg_widget.dart';
import 'package:eshop/widgets_common/customtextfields.dart';
import 'package:flutter/material.dart';
import 'package:eshop/content/consts.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoImage(),
              10.heightBox,
              "Log in to $appname".text.fontFamily(bold).size(18).white.make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(fieldName: email, fieldNameHint: emailHint),
                  customTextField(fieldName: password, fieldNameHint: passwordHint),
                ],
              ).box.white.padding(EdgeInsets.all(16)).width(context.screenWidth - 70).rounded.make(),
            ],
          ),
        ),
    ));
  }
}
