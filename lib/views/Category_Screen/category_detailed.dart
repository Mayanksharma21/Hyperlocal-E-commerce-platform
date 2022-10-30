import 'package:eshop/views/Category_Screen/item_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:eshop/content/consts.dart';
import 'package:get/get.dart';
import '../../widgets_common/bg_widget.dart';

class categoryDetails extends StatelessWidget {
  final String? title;
  const categoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: double.infinity,
        title: title!.text.fontFamily(bold).size(23).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Baby clothes"
                        .text
                        .size(14)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .roundedSM
                        .white
                        .size(150, 60)
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),
            20.heightBox,
            Expanded(
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 250,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8),
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          Image.asset(
                            imgFc6,
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
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
                      )
                          .box
                          .white
                          .outerShadowSm
                          .margin(const EdgeInsets.symmetric(horizontal: 4))
                          .roundedSM
                          .padding(const EdgeInsets.all(12))
                          .make()
                          .onTap(() {
                        Get.to(() => const itemDetails(title: "Apple iPhone 13(128GB)",));
                      });
                    })))
          ],
        ),
      ),
    ));
  }
}
