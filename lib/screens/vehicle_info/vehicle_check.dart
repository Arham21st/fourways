import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:fourways/screens/home_header.dart';
import 'package:fourways/utils/app_colors.dart';
import 'package:fourways/utils/dimensions.dart';
import 'package:fourways/utils/widgets/widgets.dart';

class VehicleCheck extends StatefulWidget {
  const VehicleCheck({super.key});

  @override
  State<VehicleCheck> createState() => _VehicleCheckState();
}

class _VehicleCheckState extends State<VehicleCheck> {
 List <Map> items = [
    {"name": "Vehicle Name 1", "isChecked": false},
    {"name": "Vehicle Name 2", "isChecked": false},
    {"name": "Vehicle Name 3", "isChecked": false},
    {"name": "Vehicle Name 4", "isChecked": false},
    {"name": "Vehicle Name 5", "isChecked": false},
    {"name": "Vehicle Name 6", "isChecked": false},
    {"name": "Vehicle Name 7", "isChecked": false},
    {"name": "Vehicle Name 8", "isChecked": false},
    {"name": "Vehicle Name 9", "isChecked": false},
    {"name": "Vehicle Name 10", "isChecked": false},
   
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(children: [
          HomeHeader(backwaardRoute: RoutesHelper.getMainPage(),
          isText: true,
          text: "Vehicle Check",),
          Container(
            color: Colors.grey.shade100,
            height: Dimensions.height10,),
          Container(
            color: Colors.grey.shade100,
            height: Dimensions.height30,
            width: double.maxFinite,
            child: Center(
              child: HeadingText(text: "swipe left to mark red",
              size: Dimensions.font16,
              color: Colors.grey.shade500,
              fontWeight: FontWeight.bold,),
            ),
          ),
          //SizedBox(height: Dimensions.height10,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: items.map((e) => 
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: Dimensions.height20,vertical: Dimensions.height10),
                  child: CheckboxListTile(
                    value: e["isChecked"], 
                    onChanged: (value) {
                    e["isChecked"]= value;
                    selectedValue=e["name"];
                    setState(() {
                      
                    });
                  },
                  //checkBox
                  activeColor: selectedValue==e["name"]?Colors.white: AppColors.activeTile,
                  checkColor: selectedValue==e["name"]?AppColors.activeTile:Colors.white,
                  checkboxShape: const CircleBorder(),
                  side:  selectedValue==e["name"]?const BorderSide(strokeAlign: BorderSide.strokeAlignOutside,color: Colors.white) :
                  const BorderSide(color: AppColors.activeTile,strokeAlign: BorderSide.strokeAlignOutside),
                  //listTile
                  title: HeadingText(text: e["name"].toString(),size: Dimensions.font20,fontWeight: FontWeight.bold,
                  color: selectedValue==e["name"]?Colors.white:Colors.black,),
                  tileColor: selectedValue==e["name"]?AppColors.activeTile: Colors.white,
                  
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.height20)),

                  ),
                )
                ).toList(),
              ),
            )
              )
        ],
        )
        ),
    );
  }
}