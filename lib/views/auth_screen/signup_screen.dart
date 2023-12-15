import 'package:ecom_app_ddbahinicreation/constts/consts.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/applogo_widget.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/bg_widget.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/custom_textfield.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// we have to change this screen to stateful for checkbox
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
        children: [
          (context.screenHeight * 0.1).heightBox,
          appLogoWidget(),
          10.heightBox,
          "Join the $appname".text.fontFamily(bold).white.size(16).make(),
          15.heightBox,
          Column(
            children: [
              customTextField(name, nameHint),
              customTextField(email, emailHint),
              customTextField(password, passwordHint),
              customTextField(reTypePassword, passwordHint),
              5.heightBox,
              Row(
                children: [
                  Checkbox(
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      }),
                  10.widthBox,
                  Expanded(
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "I agree to the ",
                            style: TextStyle(
                              fontFamily: regular,
                              color: fontGrey,
                            )),
                        TextSpan(
                            text: termsAndCond,
                            style: TextStyle(
                                fontFamily: regular, color: redColor)),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(
                                fontFamily: regular, color: fontGrey)),
                        TextSpan(
                            text: privacyPolicy,
                            style:
                                TextStyle(fontFamily: regular, color: redColor))
                      ]),
                    ),
                  ),
                ],
              ),
              5.heightBox,
              ourButton(
                      color: isCheck == true ? redColor : lightGrey,
                      title: signup,
                      textColor: whiteColor,
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              10.heightBox,

              // //Wrap this richtext - into gesture detector of Velocity X
              // RichText(
              //     text: TextSpan(children: [
              //   TextSpan(
              //       text: alreadyHaveAccount,
              //       style: TextStyle(fontFamily: bold, color: fontGrey)),
              //   TextSpan(
              //       text: login,
              //       style: TextStyle(fontFamily: bold, color: redColor))
              // ])).onTap(() {
              //   //we have already gone through login to signup so to move on login again ..we have to go back
              //   Get.back();
              // })
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  alreadyHaveAccount.text.color(fontGrey).make(),
                  login.text.color(redColor).make().onTap(() {
                    Get.back();
                  })
                ],
              )
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
      )),
    ));
  }
}


