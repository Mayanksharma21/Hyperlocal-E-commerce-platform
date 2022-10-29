import 'package:eshop/views/Home_screens/Components/featured_components.dart';
import 'package:eshop/widgets_common/home_Buttons.dart';
import 'package:flutter/material.dart';
import 'package:eshop/content/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: redColor,
        title: appname.text.white
            .size(23)
            .fontFamily(bold)
            .align(TextAlign.left)
            .make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        color: lightGrey,
        width: context.screenWidth,
        height: context.screenHeight,
        child: SafeArea(
            child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 45,
              color: lightGrey,
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: whiteColor,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: const BorderSide(
                          color: redColor,
                        )),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    hintText: search,
                    hintStyle: const TextStyle(
                      color: textfieldGrey,
                    )),
              ),
            ),
            8.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        autoPlayCurve: Curves.easeIn,
                        enlargeCenterPage: true,
                        itemCount: sliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            sliderList[index],
                            fit: BoxFit.fitWidth,
                          )
                              .box
                              .rounded
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    8.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            2,
                            (index) => homeButton(
                                height: context.screenHeight * 0.10,
                                width: context.screenWidth / 2.5,
                                iconName:
                                    index == 0 ? icTodaysDeal : icFlashDeal,
                                title: index == 0 ? today : flashsale))),
                    8.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        autoPlayCurve: Curves.easeIn,
                        itemCount: secondSliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            secondSliderList[index],
                            fit: BoxFit.fitWidth,
                          )
                              .box
                              .rounded
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    8.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            3,
                            (index) => homeButton(
                                  height: context.screenHeight * 0.15,
                                  width: context.screenWidth / 3.5,
                                  iconName: index == 0
                                      ? icTopCategories
                                      : index == 1
                                          ? icBrands
                                          : icTopSeller,
                                  title: index == 0
                                      ? topCategory
                                      : index == 1
                                          ? brand
                                          : topSeller,
                                ))),
                    20.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featuredategory.text
                            .color(darkFontGrey)
                            .size(18)
                            .fontFamily(bold)
                            .make()),
                    10.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    featuredButton(
                                        title: feturedTitleList[index],
                                        icon: featuredImagesList[index]),
                                    10.heightBox,
                                    featuredButton(
                                        title: scondFeturedTitleList[index],
                                        icon: secondFeaturedImagesList[index]),
                                  ],
                                )).toList(),
                      ),
                    ),
                    20.heightBox,
                    Container(
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: featuredProducts.text.white
                                  .fontFamily(bold)
                                  .size(23)
                                  .make()),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                                children: List.generate(
                                    6,
                                    (index) => Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              imgP1,
                                              width: 150,
                                              fit: BoxFit.cover,
                                            ),
                                            10.heightBox,
                                            "HP Elitebook 4GB|512GB"
                                                .text
                                                .fontFamily(semibold)
                                                .color(darkFontGrey)
                                                .make(),
                                            10.heightBox,
                                            "\u{20B9}46,000"
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
                    8.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: secondSliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            secondSliderList[index],
                            fit: BoxFit.fitWidth,
                          )
                              .box
                              .rounded
                              .margin(const EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        }),
                    8.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: "All Products"
                            .text
                            .fontFamily(bold)
                            .color(Colors.black)
                            .size(23)
                            .make()),
                    8.heightBox,
                    GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 8,
                                crossAxisSpacing: 8,
                                mainAxisExtent: 300),
                        itemBuilder: ((context, index) {
                          return Column(
                            children: [
                              Image.asset(
                                imgFc6,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              10.heightBox,
                              "Apple iPhone 13(128GB)"
                                  .text
                                  .fontFamily(semibold)
                                  .color(darkFontGrey)
                                  .make(),
                              10.heightBox,
                              "\u{20B9}64,000"
                                  .text
                                  .color(redColor)
                                  .size(16)
                                  .fontFamily(bold)
                                  .make(),
                            ],
                          ).box.white.roundedSM.make();
                        }))
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
