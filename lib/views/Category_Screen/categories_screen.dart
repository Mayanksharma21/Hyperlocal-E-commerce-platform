import 'package:eshop/views/Category_Screen/category_detailed.dart';
import 'package:eshop/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:eshop/content/consts.dart';
import 'package:get/get.dart';

class CategoriesScren extends StatelessWidget {
  const CategoriesScren({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: double.infinity,
        title: category.text.fontFamily(bold).size(23).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 200,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8),
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  Image.asset(
                    cetegoriesImagesList[index],
                    height: 150,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  10.heightBox,
                  categoriesList[index]
                      .text
                      .color(darkFontGrey)
                      .align(TextAlign.center)
                      .make(),
                ],
              )
                  .box
                  .white
                  .roundedSM
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .make()
                  .onTap(() {
                Get.to(() => categoryDetails(title: categoriesList[index]));
              });
            })),
      ),
    ));
  }
}
