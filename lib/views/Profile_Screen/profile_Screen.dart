import 'package:eshop/views/Cart_Screen/cart_screen.dart';
import 'package:eshop/views/Profile_Screen/comPonents/ProfileButtons.dart';
import 'package:eshop/views/auth_screens/login_page.dart';
import 'package:eshop/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:eshop/content/consts.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Align(
                  alignment: Alignment.topRight,
                  child: const Icon(
                    Icons.edit,
                    color: whiteColor,
                  ).onTap(() {})),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Image.asset(imgProfile2, width: 85, fit: BoxFit.cover)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .make(),
                  10.widthBox,
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Dummy user".text.fontFamily(semibold).white.make(),
                      "Dummy@example.com".text.white.make(),
                    ],
                  )),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                        color: whiteColor,
                      )),
                      onPressed: () {
                        Get.to(() => const loginPage());
                      },
                      child: const Icon(
                        Icons.logout,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                profileButton(
                    count: "0",
                    title: "in your cart",
                    widthPassed: (context.screenWidth / 3.4)),
                profileButton(
                    count: "10",
                    title: "in your wishlist",
                    widthPassed: (context.screenWidth / 3.4)),
                profileButton(
                    count: "5",
                    title: "You ordered",
                    widthPassed: (context.screenWidth / 3.4)),
              ],
            ),
            ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, index) {
                      return ListTile(
                        leading: Image.asset(
                          profileItemIconsList[index],
                          width: 22,
                        ),
                        title: profileItemList[index]
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .make(),
                      );
                    },
                    separatorBuilder: ((context, index) {
                      return const Divider(
                        color: darkFontGrey,
                      );
                    }),
                    itemCount: profileItemList.length)
                .box
                .white
                .roundedSM
                .margin(const EdgeInsets.all(12))
                .padding(const EdgeInsets.symmetric(horizontal: 16))
                .shadowSm
                .make()
                .box
                .color(redColor)
                .make(),
          ],
        ),
      ),
    ));
  }
}
