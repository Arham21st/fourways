import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:fourways/utils/app_colors.dart';
import 'package:fourways/utils/dimensions.dart';
import 'package:fourways/utils/widgets/widgets.dart';
import 'package:line_icons/line_icons.dart';
import 'package:get/get.dart';
class HomeHeader extends StatelessWidget {
  
  dynamic data;
  
  HomeHeader({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.maxFinite,
            height: Dimensions.height20*11,
            color: AppColors.background,
            child: Padding(
              padding: EdgeInsets.only(left:Dimensions.height20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Dimensions.height20,),
                  InkWell(
                    onTap: () {
                      Get.toNamed(data);
                    },
                    child: Image(image: AssetImage("assets/images/Slide Up.png"))),
                  SizedBox(height: Dimensions.height30,),
                  HeadingText(text: "Welcome,",size: Dimensions.font20,fontWeight: FontWeight.w600,),
                  HeadingText(text: "John Doe",fontWeight: FontWeight.w600,),
                  SizedBox(height: Dimensions.height20,),
                  HeadingText(text: "#SK21BH10",size: Dimensions.font16,fontWeight: FontWeight.w500,color: AppColors.mainColor,)
                ],
              ),
            ),
          );
         
  }
}