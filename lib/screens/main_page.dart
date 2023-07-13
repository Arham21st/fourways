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
                      Get.toNamed(RoutesHelper.getInitial());
                    },
                    child: const Image(image: AssetImage("assets/images/Slide Up.png"))),
                  SizedBox(height: Dimensions.height30,),
                  HeadingText(text: "Welcome,",size: Dimensions.font20,fontWeight: FontWeight.w600,),
                  HeadingText(text: "John Doe",fontWeight: FontWeight.w600,),
                  SizedBox(height: Dimensions.height20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: () {
                        
                      },
                      style: whiteButton, child: HeadingText(text: "Sync All",
                      color: AppColors.mainColor,
                      size: Dimensions.font16,
                      fontWeight: FontWeight.w600,),),
                      
                      ElevatedButton(onPressed: () {
                        
                      },
                      style: smallButton, child: HeadingText(text: "Change Vehicle",
                      color: Colors.white,
                      size: Dimensions.font16,
                      fontWeight: FontWeight.w600,),),
                    ],
                  ),
                 
                  SizedBox(height: Dimensions.height20,),
                  HeadingText(text: "#SK21BH10",size: Dimensions.font16,fontWeight: FontWeight.w800,color: AppColors.mainColor,)
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
                child: InkWell(
                  onTap: () {
                    Get.toNamed(RoutesHelper.getVehicleCheck());
                  },
                  child: Container(
                    
                    
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(Dimensions.height20),
                      image: const DecorationImage(image: AssetImage("assets/images/img1.png"),fit: BoxFit.cover)
                    ),),
                ),
              ),
                Padding(
                padding:  EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20,top: Dimensions.height10,bottom: Dimensions.height10),
                child: InkWell(
                  onTap: () {
                    showDialog(context: context, builder: (context){
                      return AlertDialog(

                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.height15)),
                        backgroundColor: AppColors.activeTile,
                        title: HeadingText(text: "Are you sure to confirm this vehicle?",size: Dimensions.font20,fontWeight: FontWeight.bold,
                        color: Colors.white,),
                        actions: [

                          TextButton(onPressed: () {
                             Get.toNamed(RoutesHelper.getVehicleCheck());
                          }, child: HeadingText(text: "Check Agian",size: Dimensions.font20,fontWeight: FontWeight.bold,color: Colors.white,)),

                          TextButton(onPressed: () {
                             Get.toNamed(RoutesHelper.getJobs());
                          },child: HeadingText(text: "Confirm",size: Dimensions.font20,fontWeight: FontWeight.bold,color: Colors.white,)),
                          
                          
                        ],
                      );
                    }
                    );
                    
                  },
                  child: Container(
                    
                    
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(Dimensions.height20),
                      image: const DecorationImage(image: AssetImage("assets/images/img2.png"),fit: BoxFit.cover)
                    ),),
                ),
              ),
               Padding(
                padding:  EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20,top: Dimensions.height10,bottom: Dimensions.height10),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(RoutesHelper.getClocking());
                  },
                  child: Container(
                    
                    
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(Dimensions.height20),
                      image: const DecorationImage(image: AssetImage("assets/images/img3.png"),fit: BoxFit.cover)
                    ),),
                ),
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
                      image: const DecorationImage(image: AssetImage("assets/images/img4.png"),fit: BoxFit.cover)
                    ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20,top: Dimensions.height10,bottom: Dimensions.height10),
                child: InkWell(
                  onTap: () {
                    Get.toNamed(RoutesHelper.getJobs());
                  },
                  child: Container(
                    
                    
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(Dimensions.height20),
                      image: const DecorationImage(image: AssetImage("assets/images/img5.png"),fit: BoxFit.cover)
                    ),),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left:Dimensions.height20,right: Dimensions.height20,top: Dimensions.height10,bottom: Dimensions.height10),
                child: InkWell(
                  onTap: () {
                    showDialog(context: context, builder: (context){
                      return AlertDialog(

                        elevation: 7,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.height15)),
                        backgroundColor: AppColors.activeTile,
                        title: HeadingText(text: "Do you want to finish your day?",size: Dimensions.font20,fontWeight: FontWeight.bold,
                        color: Colors.white,),
                        actions: [

                          TextButton(onPressed: () {
                             Get.toNamed(RoutesHelper.getMainPage());
                          }, child: HeadingText(text: "No",size: Dimensions.font20,fontWeight: FontWeight.bold,color: Colors.white,)),

                          TextButton(onPressed: () {
                             Get.toNamed(RoutesHelper.getInitial());
                          },child: HeadingText(text: "Yes",size: Dimensions.font20,fontWeight: FontWeight.bold,color: Colors.white,)),
                          
                          
                        ],
                      );
                    }
                    );
                    
                  },

                  child: Container(
                    
                    
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(Dimensions.height20),
                      image: const DecorationImage(image: AssetImage("assets/images/img6.png"),fit: BoxFit.cover)
                    ),),
                ),
              ),
             
            ],),
          )
         
            ],
      )
      ),
    );
  }
}