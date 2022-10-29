import '../Home_screens/Home.dart';
import 'package:eshop/views/auth_screens/signup_page.dart';
import 'package:eshop/widgets_common/appLogo.dart';
import 'package:eshop/widgets_common/bg_widget.dart';
import 'package:eshop/widgets_common/customtextfields.dart';
import 'package:eshop/widgets_common/redbutton.dart';
import 'package:flutter/material.dart';
import 'package:eshop/content/consts.dart';
import 'package:get/get.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoImage(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).size(18).white.make(),
            15.heightBox,
            Column(
              children: [
                customTextField(fieldName: email),
                customTextField(fieldName: password),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetpass.text.make()),
                ),
                5.heightBox,
                redButton(
                  color: redColor,
                  textcolor: whiteColor,
                  varname: login,
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: () {
                        Get.to(() => signUpPage());
                      },
                      child: createnew.text
                          .fontFamily(regular)
                          .color(fontGrey)
                          .size(12)
                          .make()),
                ),
                10.heightBox,
                Align(
                  alignment: Alignment.center,
                  child: loginWith.text
                      .fontFamily(bold)
                      .color(Colors.black)
                      .size(13)
                      .make(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socialIconList[index],
                              width: 30,
                            ),
                          ))),
                )
              ],
            )
                .box
                .white
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .rounded
                .shadowMd
                .make(),
          ],
        ),
      ),
    ));
  }
}
