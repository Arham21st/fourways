import 'package:flutter/material.dart';

import '../../utils/Dimensions.dart';
import '../../utils/app_colors.dart';
import '../../utils/widgets/widgets.dart';

class ToDoJobs extends StatelessWidget {
  const ToDoJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context,index){
      return Padding(padding: EdgeInsets.all(Dimensions.height10),
      child: Container(
        width: double.maxFinite,
        height: Dimensions.height20*15,
        decoration: BoxDecoration(
          color: AppColors.activeTile,
          borderRadius: BorderRadius.circular(Dimensions.height20)
        ),
        child: Padding(
          padding:  EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimensions.height20,),
              HeadingText(text: "HB Project Ltd",color: Colors.white,size: Dimensions.font20,fontWeight: FontWeight.bold,),
              SizedBox(height: Dimensions.height5,),
              HeadingText(text: "Anytime 14 yard open exchange",color: Colors.grey.shade100,size: Dimensions.font16,fontWeight: FontWeight.normal,),
              SizedBox(height: Dimensions.height5,),
              Row(
                children: [
                  HeadingText(text: "Tip Site ",color: Colors.grey.shade100,size: Dimensions.font16,fontWeight: FontWeight.normal,), 
                  HeadingText(text: "Home Ltd.",color: Colors.white,size: Dimensions.height20,fontWeight: FontWeight.bold,),
                ],
              ),
              SizedBox(height: Dimensions.height5,),
              Row(
                children: [
                  HeadingText(text: "Grade ",color: Colors.grey.shade100,size: Dimensions.font16,fontWeight: FontWeight.normal,),
                  HeadingText(text: "Mixed C & D",color: Colors.white,size: Dimensions.height20,fontWeight: FontWeight.bold,),
                ],
              ),
              SizedBox(height: Dimensions.height5,),
              Row(
                children: [
                  HeadingText(text: "Status ",color: Colors.grey.shade200,size: Dimensions.font16,fontWeight: FontWeight.w600,),
                  HeadingText(text: "To Do",color: Colors.white,size: Dimensions.height20,fontWeight: FontWeight.bold,),
                ],
              ),
              SizedBox(height: Dimensions.height5,),
              Row(
                children: [
                  HeadingText(text: "Notes ",color: Colors.grey.shade100,size: Dimensions.font16,fontWeight: FontWeight.normal,),
                  HeadingText(text: "Type your notes here...",color: Colors.white,size: Dimensions.height20,fontWeight: FontWeight.bold,),
                
                ],
              ),
              SizedBox(height: Dimensions.height20,),
              ElevatedButton(onPressed: () {
                
              }, child: HeadingText(text: "Move to In-Progress",size: Dimensions.font16,color: AppColors.mainColor,fontWeight: FontWeight.bold),style: whiteButton,)
       
            ],
          ),
        ),
      ),
      );
    }
    );
          
  }
}