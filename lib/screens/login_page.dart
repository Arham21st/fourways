import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:fourways/utils/app_colors.dart';
import 'package:fourways/utils/dimensions.dart';
import 'package:fourways/utils/widgets/text_field.dart';
import 'package:fourways/utils/widgets/widgets.dart';
import 'package:get/get.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.background,
      backgroundColor:AppColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Dimensions.height20*5,),
            const Image(image: AssetImage("assets/images/logo.png")),
            SizedBox(height: Dimensions.height20*2,),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: Dimensions.height20),
                  child: HeadingText(text: "Login",size: Dimensions.height35,)
                )
              ],
            ),
            SizedBox(height: Dimensions.height20*3),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
              child: MainTextField(keyboardType: TextInputType.emailAddress,controller: emailController,hintText: "Username/Email"),
            ),
            SizedBox(height: Dimensions.height20,),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
              child: MainTextField(keyboardType: TextInputType.visiblePassword,controller: passwordController,hintText: "Password"),
            ),
            SizedBox(height: Dimensions.height20,),
            Padding(
              padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
              child: ElevatedButton(onPressed: () {
                Get.toNamed(RoutesHelper.getInitial());
              },style: mainButton, child: HeadingText(text: "Login",color: Colors.white,fontWeight: FontWeight.w400,size: Dimensions.font16,),),
            )
          ],
        )),
    );
  }
}