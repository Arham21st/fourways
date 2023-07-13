import 'package:flutter/material.dart';
import 'package:fourways/utils/app_colors.dart';
import 'package:fourways/utils/dimensions.dart';
import 'package:fourways/utils/widgets/widgets.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
   List <String> items = [
    'Vehicle Name 1',
    'Vehicle Name 2',
    'Vehicle Name 3',
    'Vehicle Name 4',
    'Vehicle Name 5',
    'Vehicle Name 6',
    'Vehicle Name 7',
    'Vehicle Name 8',
    'Vehicle Name 9',
    'Vehicle Name 10',
    'Vehicle Name 11',
    'Vehicle Name 12',
  ];
  String? selectedValue= "Select Vehicle";
  bool isOpen = false;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            
            onTap: () {
              isOpen=!isOpen;
              selectedValue =="Select Vehicle"?
              isSelected=false:
              isSelected=!isSelected;
              setState(() {
                
              });
            },
            child: Card(
              
              shadowColor: Colors.black,
              borderOnForeground: false,
              shape: RoundedRectangleBorder (borderRadius: BorderRadius.only(topLeft: Radius.circular(Dimensions.height10),topRight: Radius.circular(Dimensions.height10))),
              elevation: 5,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.height20*2.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.height20)
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: Dimensions.height20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingText(text: selectedValue.toString(),size: Dimensions.font20,fontWeight: FontWeight.bold,color: Colors.grey.shade700,),
                      Image(image: AssetImage(isOpen? "assets/images/SlideUp.png":"assets/images/SlideDown.png"),color: Colors.black,)
                    ],
                  ),
                ),
              ),
            ),
          ),
          if(isOpen)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.height5),
            child: Container(
              padding: EdgeInsets.only(top: Dimensions.height5),
              height: Dimensions.height20*18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Dimensions.height20),bottomRight: Radius.circular(Dimensions.height20)),
                color: Colors.white
              ),
              child: ListView(
                primary: true,
                shrinkWrap: true,
                children: 
                  items.map((e) => InkWell(
                              onTap: () {
                                      selectedValue = e;
                                      isOpen=false;
                                      isSelected=true;
                                      setState(() {
                                        
                                      });
                                    },
                      child: Container(
                        height: Dimensions.height20*2.7,
                        padding: EdgeInsets.symmetric(vertical: Dimensions.height5,horizontal: Dimensions.height20),
                        decoration: BoxDecoration(
                          color: selectedValue==e? AppColors.activeTile:Colors.white,
                          borderRadius: BorderRadius.circular(Dimensions.height20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                              
                           HeadingText(text: e,size: Dimensions.font20,fontWeight: FontWeight.bold,color: selectedValue==e?Colors.white: Colors.grey.shade700,),
                           Divider(color: selectedValue==e?AppColors.activeTile:Colors.grey.shade400,thickness: 0.2,)
                            
                          ],
                        ),
                      ),
                    ),
                  ).toList(),
                
              ),
            ),
          ),
          if(isSelected)
          Padding(padding: EdgeInsets.symmetric(horizontal: Dimensions.height5,vertical: Dimensions.height10),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
            width: double.maxFinite,
            height: Dimensions.height20*5.3,
            decoration: BoxDecoration(
              color: AppColors.activeTile,
              borderRadius: BorderRadius.circular(Dimensions.height20)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:Dimensions.height5),
                    HeadingText(text: "Vehicle Name: ",size: Dimensions.font20,fontWeight: FontWeight.bold,color: Colors.white,),
                    SizedBox(height:Dimensions.height5),
                    HeadingText(text: "Vehicle Number: SKU-23455: ",size: Dimensions.height20,fontWeight: FontWeight.bold,color: Colors.white,),
                    SizedBox(height: Dimensions.height5,),
                    HeadingText(text: "Model: 2023 ",size: Dimensions.height20,fontWeight: FontWeight.bold,color: Colors.white,),
                  ],
                ),
                Icon(Icons.cancel_outlined,size: Dimensions.height30,)
              ],
            ),
          ),)
        ],
      ),
    );
  }
}