import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:fourways/utils/app_colors.dart';
import 'package:fourways/utils/dimensions.dart';
import 'package:fourways/utils/widgets/widgets.dart';
import 'package:line_icons/line_icons.dart';
import 'package:get/get.dart';
class HomeHeader extends StatelessWidget {
  
  dynamic backwaardRoute;
  bool? isText;
  bool? refreshIcon;
  String? text;
  
  HomeHeader({super.key, this.backwaardRoute,this.isText=false,this.refreshIcon=false,this.text="Jobs"});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.maxFinite,
            height: Dimensions.height20*11,
            color: AppColors.background,
            child: Padding(
              padding: EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Dimensions.height20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(backwaardRoute);
                        },
                        child: Image(image: AssetImage("assets/images/Slide Up.png"))
                        ),
                        if(isText==true)
                        HeadingText(text: text.toString(),size: Dimensions.font20,fontWeight: FontWeight.bold,)
                    ],
                  ),
                  SizedBox(height: Dimensions.height30,),
                  HeadingText(text: "Welcome,",size: Dimensions.font20,fontWeight: FontWeight.w600,),
                  HeadingText(text: "John Doe",fontWeight: FontWeight.w600,),
                  SizedBox(height: Dimensions.height20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingText(text: "#SK21BH10",size: Dimensions.font16,fontWeight: FontWeight.w800,color: AppColors.mainColor,),
                      if(refreshIcon==true)
                      Icon(Icons.refresh_outlined,color: Colors.grey.shade700,size: Dimensions.height30,) 
                    
                    ],
                  )
                ],
              ),
            ),
          );
         
  }
}