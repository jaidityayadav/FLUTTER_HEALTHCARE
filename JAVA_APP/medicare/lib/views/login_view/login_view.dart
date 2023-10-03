import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:medicare/consts/images.dart';
import 'package:medicare/consts/strings.dart';
import 'package:medicare/res/components/custom_button.dart';
import 'package:medicare/res/components/custom_textfield.dart';
import 'package:medicare/views/home_view/home.dart';
import 'package:medicare/views/signup_view/signup_view.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
              AppAssets.icLogin,
              width: 330,
              ),
              10.heightBox,
              AppStrings.welcomeback.text.xl2.make(),
              ],
            ),
            10.heightBox,
              Expanded(
              child: Form(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(hint:AppStrings.email),
                    10.heightBox,
                    CustomTextField(hint:AppStrings.password),
                    20.heightBox,
                    Align(
                      alignment: Alignment.centerRight,
                      child: AppStrings.forgetPassword.text.make(),
                    ),
                    20.heightBox,
                    CustomButton(
                      buttonText: AppStrings.login,
                      onTap: () {
                        Get.to(()=>const Home());
                      }
                    ),
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppStrings.dontHaveAccount.text.make(),
                        8.widthBox,
                        GestureDetector(
                          onTap: () {
                            Get.to(()=>const SignupView());
                          },
                          child: AppStrings.signup.text.bold.make(),
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