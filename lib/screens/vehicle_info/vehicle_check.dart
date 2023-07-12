import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:fourways/screens/home_header.dart';
import 'package:fourways/utils/app_colors.dart';
import 'package:fourways/utils/dimensions.dart';
import 'package:fourways/utils/widgets/widgets.dart';
import 'package:get/get.dart';

class VehicleCheck extends StatefulWidget {
  const VehicleCheck({super.key});

  @override
  State<VehicleCheck> createState() => _VehicleCheckState();
}

class _VehicleCheckState extends State<VehicleCheck> {
  int currentIndex=0;
  bool newValue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(children: [
          HomeHeader(backwaardRoute: RoutesHelper.getMainPage(),
          isText: true,
          text: "Vehicle Check",),
          SizedBox(height: Dimensions.height10,),
          HeadingText(text: "swipe left to mark red",
          size: Dimensions.font16,
          color: Colors.grey.shade500,
          fontWeight: FontWeight.bold,),
          //SizedBox(height: Dimensions.height10,),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
                return Padding(
                  padding: EdgeInsets.only(left: Dimensions.height20*1.5,right: Dimensions.height20*1.5),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
                    child: CheckboxListTile(
                      
                      
                      onChanged: (value) {
                       
                        setState(() {
                          currentIndex=index;
                          newValue=!newValue;
                        });
                      },
                      value: newValue,
                      
                      checkboxShape: CircleBorder(side: BorderSide(style: BorderStyle.solid,color: AppColors.activeTile)),
                      fillColor: currentIndex==index? const MaterialStatePropertyAll(Colors.white): MaterialStatePropertyAll(AppColors.activeTile),
                      checkColor: currentIndex==index? AppColors.activeTile: AppColors.activeTile,
                      activeColor: currentIndex==index?Colors.white:AppColors.activeTile,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.height20)),
                      tileColor: currentIndex==index?AppColors.activeTile: Colors.white,
                      title: HeadingText(text: "All ext lights and indicators",
                      color: currentIndex==index?Colors.white:Colors.black,
                      size: Dimensions.font20,fontWeight: FontWeight.bold,),
                      
                    ),
                  ),
                );
              }
              )
              )
        ],
        )
        ),
    );
  }
}