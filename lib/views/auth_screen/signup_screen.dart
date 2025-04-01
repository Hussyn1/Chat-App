import 'package:ecommerce_ui/consts/colors.dart';
import 'package:ecommerce_ui/consts/strings.dart';
import 'package:ecommerce_ui/consts/styles.dart';
import 'package:ecommerce_ui/widget_common/applogo_widget.dart';
import 'package:ecommerce_ui/widget_common/bgwidget.dart';
import 'package:ecommerce_ui/widget_common/custom_btn.dart';
import 'package:ecommerce_ui/widget_common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(
                  title: name,
                  hint: nameHint,
                ),
                customTextField(
                  title: email,
                  hint: emailHint,
                ),
                customTextField(
                  title: password,
                  hint: passwordHint,
                ),
                customTextField(
                  title: retypePass,
                  hint: passwordHint,
                ),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                      checkColor: whiteColor,
                      activeColor: redColor,
                      value: isCheck,
                      onChanged: (newVal) {
                        setState(() {
                          isCheck = newVal;
                        });
                      },
                    ),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "I agree the ",
                              style: TextStyle(
                                  fontFamily: regular, color: fontGrey),
                            ),
                            TextSpan(
                              text: termandCon,
                              style: TextStyle(
                                  fontFamily: regular, color: redColor),
                            ),
                            TextSpan(
                              text: " & ",
                              style: TextStyle(
                                  fontFamily: regular, color: fontGrey),
                            ),
                            TextSpan(
                              text: privPolicy,
                              style: TextStyle(
                                  fontFamily: regular, color: redColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                5.heightBox,
                CustomBtn(
                  color: isCheck == true ? redColor : lightGrey,
                  textColor: whiteColor,
                  title: signup,
                  onPress: () {},
                ).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: alreadyhaveandAcc,
                        style: TextStyle(fontFamily: bold, color: fontGrey),
                      ),
                      TextSpan(
                        text: login,
                        style: TextStyle(fontFamily: bold, color: redColor),
                      )
                    ],
                  ),
                ).onTap(() {
                  Get.back();
                })
              ],
            )
                .box
                .white
                .rounded
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
