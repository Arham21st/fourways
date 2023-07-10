import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:get/get.dart';

import '../utils/Dimensions.dart';
import '../utils/app_colors.dart';
import '../utils/widgets/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
               Container(
            width: double.maxFinite,
            height: Dimensions.height20*15,
            color: AppColors.background,
            child: Padding(
              padding: EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: Dimensions.height20,),
                  InkWell(
                    onTap: () {
                      Get.toNamed(RoutesHelper.getVehicleDetails());
                    },
                    child: Image(image: AssetImage("assets/images/Slide Up.png"))),
                  SizedBox(height: Dimensions.height30,),
                  HeadingText(text: "Welcome,",size: Dimensions.font20,fontWeight: FontWeight.w600,),
                  HeadingText(text: "John Doe",fontWeight: FontWeight.w600,),
                  SizedBox(height: Dimensions.height20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {
                        
                      }, child: HeadingText(text: "Change Vehicle",
                      color: AppColors.mainColor,
                      size: Dimensions.font16,
                      fontWeight: FontWeight.w600,),
                      style: whiteButton,),
                      
                      ElevatedButton(onPressed: () {
                        
                      }, child: HeadingText(text: "Change Vehicle",
                      color: Colors.white,
                      size: Dimensions.font16,
                      fontWeight: FontWeight.w600,),
                      style: smallButton,),
                    ],
                  ),
                 
                  SizedBox(height: Dimensions.height20,),
                  HeadingText(text: "#SK21BH10",size: Dimensions.font16,fontWeight: FontWeight.w500,color: AppColors.mainColor,)
                ],
              ),
            ),
          ),

          Expanded(
            child: GridView.count(crossAxisCount: 2,
            
            
            shrinkWrap: true,
            childAspectRatio: 1.1,
            children: [
              Padding(
                padding:  EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20,top: Dimensions.height10,bottom: Dimensions.height10),
                child: Container(
                  
                  
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(Dimensions.height20),
                    image: DecorationImage(image: AssetImage("assets/images/img1.png"),fit: BoxFit.cover)
                  ),),
              ),
                Padding(
                padding:  EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20,top: Dimensions.height10,bottom: Dimensions.height10),
                child: Container(
                  
                  
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(Dimensions.height20),
                    image: DecorationImage(image: AssetImage("assets/images/img2.png"),fit: BoxFit.cover)
                  ),),
              ),
               Padding(
                padding:  EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20,top: Dimensions.height10,bottom: Dimensions.height10),
                child: Container(
                  
                  
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(Dimensions.height20),
                    image: DecorationImage(image: AssetImage("assets/images/img3.png"),fit: BoxFit.cover)
                  ),),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(RoutesHelper.getJobs());
                },
                child: Padding(
                  padding:  EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20,top: Dimensions.height10,bottom: Dimensions.height10),
                  child: Container(
                    
                    
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(Dimensions.height20),
                      image: DecorationImage(image: AssetImage("assets/images/img4.png"),fit: BoxFit.cover)
                    ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20,top: Dimensions.height10,bottom: Dimensions.height10),
                child: Container(
                  
                  
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(Dimensions.height20),
                    image: DecorationImage(image: AssetImage("assets/images/img5.png"),fit: BoxFit.cover)
                  ),),
              ),
              Padding(
                padding:  EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20,top: Dimensions.height10,bottom: Dimensions.height10),
                child: Container(
                  
                  
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(Dimensions.height20),
                    image: DecorationImage(image: AssetImage("assets/images/img6.png"),fit: BoxFit.cover)
                  ),),
              ),
             
            ],),
          )
         
            ],
      )
      ),
    );
  }
}