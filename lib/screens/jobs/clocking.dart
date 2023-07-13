import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:fourways/screens/home_header.dart';
import 'package:fourways/utils/dimensions.dart';
import 'package:fourways/utils/widgets/widgets.dart';

import '../../utils/app_colors.dart';


class Clocking extends StatefulWidget {
  const Clocking({super.key});

  @override
  State<Clocking> createState() => _ClockingState();
}

class _ClockingState extends State<Clocking> {
  bool isClockedIn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(child: 
      Column(
        children: [
          HomeHeader(
            backwaardRoute: RoutesHelper.getMainPage(),
            isText: true,
            text: "Clocking",

          ),
          SizedBox(height: Dimensions.height30,),
          Padding(padding: EdgeInsets.only(left: Dimensions.height30,right: Dimensions.height30),
          child: Container(
            height: Dimensions.height20*12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.height20),
              color: Colors.white,
            ),
            child: Center(
              child: HeadingText(text: "12:45:54",
              size: Dimensions.font26*3,
              fontWeight: FontWeight.w900,
              color: const Color.fromARGB(255, 130, 179, 120)
              ),
            ),
          ),
          ),
          SizedBox(height: Dimensions.height10,),
          Padding(
            padding: EdgeInsets.only(left: Dimensions.height25,right: Dimensions.height25),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                
                onPressed: () {
                  
          
          
                setState(() {
                  isClockedIn=true;
                  },
                );
                
               
          
                
              },
              style: whiteButton, child: isClockedIn==false? HeadingText(text: "Clocked In",
              color: AppColors.mainColor,
              size: Dimensions.font16,
              fontWeight: FontWeight.w600,):Column(
                children: [
                  HeadingText(text: "Clocked In",
                  color: AppColors.mainColor,
                  size: Dimensions.font12,
                  fontWeight: FontWeight.w600,),
                  HeadingText(text: "08/22/35",
                  color: AppColors.mainColor,
                  size: Dimensions.font16,
                  fontWeight: FontWeight.w600,),
                ],
              ),),
              
              ElevatedButton(onPressed: () {
                
              },
              style: smallButton, child: HeadingText(text: "Checked Out",
              color: Colors.white,
              size: Dimensions.font16,
              fontWeight: FontWeight.w600,),),
            ],
                  ),
          ),
       
        ],
      )
      ),
    );
  }
}