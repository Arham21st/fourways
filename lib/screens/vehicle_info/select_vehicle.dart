import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:fourways/screens/home_header.dart';
import 'package:fourways/utils/Dimensions.dart';
import 'package:fourways/utils/app_colors.dart';
import 'package:fourways/utils/widgets/widgets.dart';
import 'package:get/get.dart';

class SelectVehicle extends StatefulWidget {
  const SelectVehicle({super.key});

  @override
  State<SelectVehicle> createState() => _SelectVehicleState();
}

class _SelectVehicleState extends State<SelectVehicle> {
  final List<dynamic> items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.grey.shade100,
    //   body: SafeArea(child: 
    //   Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       const HomeHeader(),
    //       SizedBox(height: Dimensions.height30,),
    //       Padding(
    //         padding: EdgeInsets.only(left: Dimensions.height30,right: Dimensions.height30),
    //         child: HeadingText(text: "Select Vehicle",size: Dimensions.font20,fontWeight: FontWeight.bold,),
    //       ),
    //       Padding(padding: EdgeInsets.only(left: Dimensions.height30,right: Dimensions.height30,top: Dimensions.height10),
    //       child: Container(
    //         height: Dimensions.height20*23,
    //         decoration: BoxDecoration(
    //           color: Colors.white,
    //           borderRadius: BorderRadius.circular(Dimensions.height20)
    //         ),
    //         child: ListView.builder(
    //           itemCount: 10,
    //           itemBuilder: (context, index) {
    //           return ListTile(
                
    //             contentPadding: EdgeInsets.only(left:Dimensions.height10,right: Dimensions.height20),
    //             title: HeadingText(text: "Vehicle name",color: Colors.grey.shade500,size: Dimensions.font20,),
    //             trailing: Image(image: AssetImage("assets/images/SlideDown.png",),),
                
    //           );
    //         },
    //         ),
    //       ),
    //       ),
    //       SizedBox(height: Dimensions.height20,),
    //       Padding(
    //         padding: EdgeInsets.only(left: Dimensions.height30,right: Dimensions.height30),
    //         child: ElevatedButton(onPressed: () {
              
    //         }, child: HeadingText(text: "Select",size: Dimensions.font20,color: Colors.white,),style: mainButton,),
    //       )


    //     ],
    //   )
    //   ),
    // );
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            HomeHeader(data: RoutesHelper.getLogin()),
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
                padding: const EdgeInsets.all(20.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: Row(
                      children: [
                        // Icon(
                        //   Icons.list,
                        //   size: 16,
                        //   color: Colors.yellow,
                        // ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: HeadingText(text: "Select Vehicle",
                          fontWeight: FontWeight.w600,
                          size: Dimensions.font20,
                          color: Colors.grey.shade500,)
                        ),
                      ],
                    ),
                    items: items
                        .map((dynamic item) => DropdownMenuItem<String>(
                              value: item,
                              child: HeadingText(text: "Vehicle $item", 
                          fontWeight: FontWeight.w600,
                          size: Dimensions.font20,
                          color: Colors.grey.shade500,)
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      
                      setState(() {
                        selectedValue = value;
                        
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      height: Dimensions.height20*2.5,
                      width: double.maxFinite,
                      padding: const EdgeInsets.only(left: 14, right: 14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black26,
                        ),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      elevation: 2,
                    ),
                    iconStyleData:  const IconStyleData(
                      icon: Image(image: AssetImage("assets/images/SlideDown.png")),
                      
                    ),
                    
                    dropdownStyleData: DropdownStyleData(
                      
                      
                      maxHeight: Dimensions.height20*20,
                      //width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.height15),
                        color: Colors.white,
                         
                      ),

                      //offset: Offset(Dimensions.height25, 0),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: Radius.circular(Dimensions.height20),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),

                    
                    menuItemStyleData:  MenuItemStyleData(
                      overlayColor: MaterialStatePropertyAll(AppColors.activeTile,),
                      
                      height: Dimensions.height20*2.5,
                      padding: EdgeInsets.only(left: 14, right: 14),
                      
                    ),
                    
                  ),
                ),
              ),
              
          ],
        ),
      
      ),
      bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: Dimensions.height20,right: Dimensions.height20,bottom: Dimensions.height20),
                child: ElevatedButton(onPressed: () {
                  Get.toNamed(RoutesHelper.getVehicleDetails());
                }, child: HeadingText(text: "Select",color: Colors.white,size: Dimensions.font16,),style: mainButton,),
              ),
    );
  
  }
}