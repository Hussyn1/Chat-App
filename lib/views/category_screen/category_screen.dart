import 'package:ecommerce_ui/consts/list.dart';
import 'package:ecommerce_ui/views/category_screen/category_details.dart';
import 'package:ecommerce_ui/widget_common/bgwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';
import '../../consts/strings.dart';
import '../../consts/styles.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
          appBar: AppBar(
            title: categories.text.fontFamily(bold).white.make(),
          ),
          body: Container(
            padding: EdgeInsets.all(12),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    mainAxisExtent: 200),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Image.asset(
                        categoriesImgList[index],
                        height: 120,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                      10.heightBox,
                      "${categoriesList[index]}"
                          .text
                          .align(TextAlign.center)
                          .color(darkFontGrey)
                          .make()
                    ],
                  )
                      .box
                      .white
                      .rounded
                      .clip(Clip.antiAlias)
                      .outerShadowSm
                      .make()
                      .onTap(
                    () {
                      Get.to(() => CategoryDetails(
                            title: categoriesList[index],
                          ));
                    },
                  );
                }),
          )),
    );
  }
}
