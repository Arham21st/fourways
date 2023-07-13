import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:fourways/screens/home_header.dart';
import 'package:fourways/utils/Dimensions.dart';
import 'package:fourways/utils/widgets/custom_dropdown.dart';
import 'package:fourways/utils/widgets/widgets.dart';
import 'package:get/get.dart';

class SelectVehicle extends StatefulWidget {
  const SelectVehicle({super.key});

  @override
  State<SelectVehicle> createState() => _SelectVehicleState();
}

class _SelectVehicleState extends State<SelectVehicle> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            HomeHeader(backwaardRoute: RoutesHelper.getLogin()),
            SizedBox(height: Dimensions.height30,),
            Row(
              children: [
                SizedBox(width: Dimensions.height25,),
                HeadingText(text: "Select Vehicle",
                size: Dimensions.font26,
                fontWeight: FontWeight.w600,
                ),
              ],
            ),
             Padding(
                padding: EdgeInsets.all(Dimensions.height20),
                child: const CustomDropDown()
              ),
              
          ],
        ),
      
      ),
      bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20,bottom: Dimensions.height20),
                child: ElevatedButton(onPressed: () {
                  Get.toNamed(RoutesHelper.getMainPage());
                },style: mainButton, child: HeadingText(text: "Select",color: Colors.white,size: Dimensions.font16,),),
              ),
    );
  
  }
}