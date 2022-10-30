import 'package:eshop/widgets_common/redbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:eshop/content/consts.dart';
import 'package:get/get.dart';

import '../../widgets_common/goCartbutton.dart';

class itemDetails extends StatelessWidget {
  final String? title;
  const itemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: darkFontGrey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: Colors.red,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(
                      height: 250,
                      aspectRatio: 16 / 9,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          imgPi4,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      }),
                  10.heightBox,
                  title!.text
                      .size(18)
                      .color(darkFontGrey)
                      .fontFamily(bold)
                      .make(),
                  10.heightBox,
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  "\u{20B9}64,000"
                      .text
                      .color(redColor)
                      .fontFamily(bold)
                      .size(18)
                      .make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Seller"
                              .text
                              .color(lightGrey)
                              .fontFamily(semibold)
                              .make(),
                          5.heightBox,
                          "In House Brands"
                              .text
                              .color(darkFontGrey)
                              .fontFamily(semibold)
                              .make(),
                        ],
                      )),
                      const CircleAvatar(
                        backgroundColor: whiteColor,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      )
                    ],
                  )
                      .box
                      .height(60)
                      .padding(const EdgeInsets.symmetric(horizontal: 16))
                      .color(textfieldGrey)
                      .make(),
                  5.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Colors"
                                .text
                                .color(Colors.black)
                                .fontFamily(bold)
                                .size(16)
                                .make(),
                          ),
                          Row(
                            children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(30, 30)
                                    .roundedFull
                                    .shadowSm
                                    .color(Vx.randomPrimaryColor)
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 6))
                                    .make()),
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Quantity"
                                .text
                                .color(Colors.black)
                                .size(16)
                                .fontFamily(bold)
                                .make(),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove)),
                              "0"
                                  .text
                                  .color(darkFontGrey)
                                  .size(16)
                                  .fontFamily(bold)
                                  .make(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add)),
                              10.widthBox,
                              "(0 available)".text.color(textfieldGrey).make(),
                            ],
                          ),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total"
                                .text
                                .color(Colors.black)
                                .fontFamily(bold)
                                .size(16)
                                .make(),
                          ),
                          "\u{20B9}0.00"
                              .text
                              .color(redColor)
                              .size(16)
                              .fontFamily(bold)
                              .make(),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                    ],
                  ).box.white.shadowSm.make(),
                  //Description Section
                  10.heightBox,
                  "Description"
                      .text
                      .color(Colors.black)
                      .size(16)
                      .fontFamily(bold)
                      .make(),
                  10.heightBox,
                  "Apple iPhone 13 with 128GB Space and other description text here...."
                      .text
                      .color(darkFontGrey)
                      .make(),
                  10.heightBox,
                  ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(
                          itemDetailsList.length,
                          (index) => ListTile(
                                title: itemDetailsList[index]
                                    .text
                                    .fontFamily(semibold)
                                    .color(darkFontGrey)
                                    .make(),
                                trailing: const Icon(Icons.arrow_forward),
                              ))),
                  20.heightBox,
                  productYoumay.text
                      .color(darkFontGrey)
                      .fontFamily(bold)
                      .size(16)
                      .make(),
                  10.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                            6,
                            (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      imgPi6,
                                      width: 170,
                                      fit: BoxFit.cover,
                                    ),
                                    10.heightBox,
                                    "Apple iPhone 12(64GB) | Black"
                                        .text
                                        .fontFamily(semibold)
                                        .color(darkFontGrey)
                                        .make(),
                                    10.heightBox,
                                    "\u{20B9}38,000"
                                        .text
                                        .color(redColor)
                                        .size(16)
                                        .fontFamily(bold)
                                        .make(),
                                  ],
                                )
                                    .box
                                    .white
                                    .roundedSM
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 4))
                                    .padding(const EdgeInsets.all(8))
                                    .make())),
                  )
                ],
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: goCartButton(
                color: redColor, textcolor: whiteColor, varname: "Add to cart"),
          ),
        ],
      ),
    );
  }
}
