import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:fourways/screens/home_header.dart';
import 'package:fourways/utils/app_colors.dart';
import 'package:fourways/utils/dimensions.dart';
import 'package:fourways/utils/widgets/widgets.dart';
import 'package:get/get.dart';
class VehicleDetails extends StatefulWidget {
  const VehicleDetails({super.key});

  @override
  State<VehicleDetails> createState() => _VehicleDetailsState();
}

class _VehicleDetailsState extends State<VehicleDetails> {
  final List<String> items = [
    'Vehicle Name:',
    
  ];
  String? selectedValue;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            HomeHeader(backwaardRoute: RoutesHelper.getInitial(),),
            SizedBox(height: Dimensions.height30,),
            Row(
              children: [
                SizedBox(width: Dimensions.height25,),
                HeadingText(text: "Selected Vehicle",
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
                          child: HeadingText(text: "Vehicle Name",
                          fontWeight: FontWeight.w600,
                          size: Dimensions.font20,
                          color: Colors.grey.shade500,)
                        ),
                      ],
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    isThreeLine: true,
                                    title: HeadingText(text:item,
                                    fontWeight: FontWeight.w600,
                                    size: Dimensions.font20,
                                    color: Colors.white,),
                                    subtitle: HeadingText(text:"Vehicle Number: \n Model:",
                                    fontWeight: FontWeight.w600,
                                    size: Dimensions.font20,
                                    color: Colors.white,),
                                    
                                    trailing: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.cancel_outlined)
                                      ],
                                    )
                                  )
                               
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (String? value) {
                      setState(() {
                        
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
                      icon: Image(image: AssetImage("assets/images/SlideDown.png")
                      ),
                      
                    ),
                    dropdownStyleData: DropdownStyleData(
                      
                      
                      maxHeight: Dimensions.height20*20,
                      //width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.height15),
                        color: AppColors.activeTile
                      ),
                      //offset: Offset(Dimensions.height25, 0),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    menuItemStyleData:  MenuItemStyleData(
                      height: Dimensions.height20*5,
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
                  Get.toNamed(RoutesHelper.getMainPage());
                }, child: HeadingText(text: "Select",color: Colors.white,size: Dimensions.font16,),style: mainButton,),
              ),
    );
  }
}