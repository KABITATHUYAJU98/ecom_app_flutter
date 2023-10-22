import 'package:ecom_app_ddbahinicreation/constts/consts.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/applogo_widget.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/bg_widget.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/custom_textfield.dart';
import 'package:ecom_app_ddbahinicreation/widgets_common/our_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
               Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {}, child: forgetPass.text.make())),
            
              5.heightBox,
              ourButton(
                      color: redColor,
                      title: signup,
                      textColor: whiteColor,
                      onPress: () {})
                  .box
                  .width(context.screenWidth - 50)
                  .make(),
              Row(
                children: [
                  Checkbox(value: false, onChanged: (newValue){}),
                  10.widthBox,
                  RichText(text: TextSpan(children: [
                    TextSpan(text: "I agree to the", style: TextStyle(
                      fontFamily: bold,
                      color: fontGrey,
                    )),
                    TextSpan(text: termsAndCond, style: TextStyle(fontFamily: bold, color: redColor)),
                    TextSpan(text: "&", style: TextStyle(fontFamily: bold, color: fontGrey)),
                    TextSpan(text: privacyPolicy, style: TextStyle(fontFamily: bold, color: redColor))
                    
                  ]),)

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
