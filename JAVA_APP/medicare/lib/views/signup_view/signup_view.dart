import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:medicare/consts/images.dart';
import 'package:medicare/consts/strings.dart';
import 'package:medicare/res/components/custom_button.dart';
import 'package:medicare/res/components/custom_textfield.dart';
import 'package:velocity_x/velocity_x.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top:40),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Column(

              children: [
                Image.asset(
              AppAssets.icSignup,
              width: 250,
              ),
              10.heightBox,
              AppStrings.signupnow.text.bold.xl3.align(TextAlign.center).make(),
              ],
            ),
            10.heightBox,
              Expanded(
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(hint:AppStrings.fullname),
                    10.heightBox,
                    CustomTextField(hint:AppStrings.email),
                    10.heightBox,
                    CustomTextField(hint:AppStrings.password),
                    20.heightBox,
                    CustomButton(buttonText: AppStrings.signup,onTap: () {}),
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppStrings.alreadyHaveAccount.text.make(),
                        8.widthBox,
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: AppStrings.login.text.bold.make(),
                        ),
                      ],
                    ),
                              ],
                              ),
                )),
            ),
          ],
        ),
      ),
    );
  }
}