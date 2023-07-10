

import 'package:flutter/material.dart';

import '../Dimensions.dart';
import '../app_colors.dart';

// ignore: must_be_immutable
class HeadingText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  FontWeight fontWeight;
  
  HeadingText({super.key,
          this.color = const Color.fromARGB(255, 10, 10, 10),
          required this.text,
          this.size=0,
          this.fontWeight= FontWeight.w500
          });

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        
        
        style: TextStyle(
          color: color,
          fontSize: size==0?Dimensions.height35:size,
          fontWeight: fontWeight,
          fontFamily: "Heading"
        ),
        
    );
  }
}
final ButtonStyle mainButton = ElevatedButton.styleFrom(

    
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(Dimensions.height10),),
    foregroundColor: AppColors.mainColor,
    backgroundColor: AppColors.mainColor,
    //surfaceTintColor: Colors.brown,
    elevation: Dimensions.height5,
    //shadowColor: Colors.brown,
    fixedSize: Size(double.maxFinite, Dimensions.height20*2.8)
    //maximumSize: Size(Dimensions.height20*15, Dimensions.height20*6)

);
final ButtonStyle smallButton = ElevatedButton.styleFrom(

    
    shape: RoundedRectangleBorder(
    side: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(Dimensions.height15),),
    foregroundColor: AppColors.activeTile,
    backgroundColor: AppColors.activeTile,
    //surfaceTintColor: Colors.brown,
    elevation: Dimensions.height5,
    //shadowColor: Colors.brown,
    fixedSize: Size(Dimensions.height20*8, Dimensions.height20*2.8)
    //maximumSize: Size(Dimensions.height20*15, Dimensions.height20*6)

);

final ButtonStyle whiteButton = ElevatedButton.styleFrom(

    
    shape: RoundedRectangleBorder(
    side: BorderSide(color: AppColors.mainColor,strokeAlign: BorderSide.strokeAlignInside),
    borderRadius: BorderRadius.circular(Dimensions.height15),),
    foregroundColor: AppColors.activeTile,
    backgroundColor: Colors.white,
    //surfaceTintColor: Colors.brown,
    elevation: Dimensions.height5,
    //shadowColor: Colors.brown,
    minimumSize: Size(Dimensions.height20*8, Dimensions.height20*2.8)
    //maximumSize: Size(Dimensions.height20*15, Dimensions.height20*6)

);
