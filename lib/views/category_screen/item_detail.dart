// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ecommerce_ui/consts/consts.dart';
import 'package:ecommerce_ui/widget_common/custom_btn.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_ui/consts/colors.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/styles.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({
    Key? key,
    this.title,
  }) : super(key: key);

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
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VxSwiper.builder(
                    height: 350,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        imgFc5,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ).box.rounded.make();
                    },
                  ),
                  10.heightBox,
                  title!.text
                      .size(16)
                      .color(darkFontGrey)
                      .fontFamily(semibold)
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
                  "\$30,000"
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
                          "Seller".text.white.fontFamily(semibold).make(),
                          5.heightBox,
                          "In House Brands"
                              .text
                              .color(darkFontGrey)
                              .fontFamily(semibold)
                              .make()
                        ],
                      )),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.message_rounded,
                          color: darkFontGrey,
                        ),
                      ),
                    ],
                  )
                      .box
                      .height(60)
                      .color(textfieldGrey)
                      .padding(EdgeInsets.symmetric(horizontal: 16))
                      .make()
                ],
              )),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: CustomBtn(
                textColor: whiteColor,
                color: redColor,
                title: "Add to Cart",
                onPress: () {}),
          )
        ],
      ),
    );
  }
}
