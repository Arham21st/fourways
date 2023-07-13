import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';

import '../../utils/Dimensions.dart';
import '../../utils/app_colors.dart';
import '../../utils/widgets/widgets.dart';
import 'package:get/get.dart';

class InProgessJobs extends StatefulWidget {

  const InProgessJobs({super.key});

  @override
  State<InProgessJobs> createState() => _InProgessJobsState();
}

class _InProgessJobsState extends State<InProgessJobs> {
  bool signPOD = true;
  bool markAsComplete = true;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context,index){
      return Padding(padding: EdgeInsets.all(Dimensions.height10),
      child: Container(
        width: double.maxFinite,
        height: Dimensions.height20*14,
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
              HeadingText(text: "Anytime 14 yard open exchange",color: Colors.grey.shade100,size: Dimensions.font16,fontWeight: FontWeight.w600,),
              SizedBox(height: Dimensions.height5,),
              Row(
                children: [
                  HeadingText(text: "Tip Site:",color: Colors.grey.shade100,size: Dimensions.font16,fontWeight: FontWeight.w600,), 
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(Dimensions.height20, 0, 0, 0),
                    child: HeadingText(text: "Home Ltd.",color: Colors.white,size: Dimensions.height20/1.15,fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height5,),
              Row(
                children: [
                  HeadingText(text: "Grade:   ",color: Colors.grey.shade100,size: Dimensions.font16,fontWeight: FontWeight.w600,),
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(Dimensions.height20, 0, 0, 0),
                    child: HeadingText(text: "Mixed C & D",color: Colors.white,size: Dimensions.height20/1.15,fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.height5,),
              Row(
                children: [
                  HeadingText(text: "Status:  ",color: Colors.grey.shade200,size: Dimensions.font16,fontWeight: FontWeight.w600,),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(Dimensions.height20, 0, 0, 0),
                    child: HeadingText(text: "Sign POD",color: Colors.white,size: Dimensions.height20/1.15,fontWeight: FontWeight.bold,),
                  ),],
              ),
              SizedBox(height: Dimensions.height5,),
              Row(
                children: [
                  HeadingText(text: "Notes:   ",color: Colors.grey.shade100,size: Dimensions.font16,fontWeight: FontWeight.w600,),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(Dimensions.height20, 0, 0, 0),
                    child: SizedBox(
                      
                      width: Dimensions.height20*13,
                      height: Dimensions.height30,
                      child:  TextField(

                        maxLines: 1,
                        style: TextStyle(fontFamily: "Heading",color: Colors.white,fontSize: Dimensions.font16,fontWeight: FontWeight.w600,height: 0.5),
                        cursorColor: Colors.white,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          
                          contentPadding: const EdgeInsets.all(0),
                          fillColor: AppColors.activeTile,
                          filled: true,
                          enabledBorder:const OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: "Type your notes here...",
                          hintStyle: TextStyle(fontFamily: "Heading",color: Colors.white,fontSize: Dimensions.font16,fontWeight: FontWeight.w600,height: 0.5),
                          
                        ),
                      ),
                    ),
                 
                  ),],
              ),
              
              SizedBox(height: Dimensions.height20,),
              Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              
              onPressed: () {
                


              setState(() {
                signPOD=false;
                markAsComplete=!markAsComplete;},
              );
              
             signPOD==false && markAsComplete==true?Get.toNamed(RoutesHelper.getSignPOD()):null;

              
            },
            style: whiteButton, child: signPOD==true? HeadingText(text: "Sign POD",
            color: AppColors.mainColor,
            size: Dimensions.font16,
            fontWeight: FontWeight.w600,):HeadingText(text: "Mark as Complete",
            color: AppColors.mainColor,
            size: Dimensions.font16,
            fontWeight: FontWeight.w600,),),
            
            ElevatedButton(onPressed: () {
              
            },
            style: smallButton, child: HeadingText(text: "To Tip ",
            color: Colors.white,
            size: Dimensions.font16,
            fontWeight: FontWeight.w600,),),
          ],
        ),
       
            ],
          ),
        ),
      ),
      );
    }
    );
          
  }
}