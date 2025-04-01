import 'package:ecommerce_ui/consts/consts.dart';
import 'package:ecommerce_ui/consts/list.dart';
import 'package:ecommerce_ui/views/auth_screen/signup_screen.dart';
import 'package:ecommerce_ui/views/home_screen/home.dart';
import 'package:ecommerce_ui/widget_common/applogo_widget.dart';
import 'package:ecommerce_ui/widget_common/bgwidget.dart';
import 'package:ecommerce_ui/widget_common/custom_btn.dart';
import 'package:ecommerce_ui/widget_common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            "Login to $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(
                  title: email,
                  hint: emailHint,
                ),
                customTextField(
                  title: password,
                  hint: passwordHint,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPass.text.make(),
                  ),
                ),
                5.heightBox,
                CustomBtn(
                  color: redColor,
                  textColor: whiteColor,
                  title: login,
                  onPress: () {
                    Get.to(() => Home());
                  },
                ).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAcc.text.color(fontGrey).make(),
                5.heightBox,
                CustomBtn(
                  color: lightgolden,
                  textColor: redColor,
                  title: signup,
                  onPress: () {
                    Get.to(() => SignUpScreen());
                  },
                ).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                loginwith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: lightGrey,
                          child: Image.asset(
                            socialIconList[index],
                            width: 30,
                          ),
                        ),
                      ),
                    ))
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
