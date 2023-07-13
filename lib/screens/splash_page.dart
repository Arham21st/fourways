import 'dart:async';

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../routes/routes_helper.dart';
import '../utils/dimensions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  // late Animation<double> animation2;
  // late AnimationController controller2;
  // Future<void> _loadResources() async{
  //      await Get.find<PopularProductController>().getPopularProductList();
  //      await Get.find<RecommendedProductController>().getRecommendedProductList(); 
  //}     

  @override
  void initState(){
    super.initState();
    
    
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this)..forward();

      // controller2 = AnimationController(
      // duration: const Duration(seconds: 2),
      // vsync: this)..forward();
    
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.linear);

      // animation2 = CurvedAnimation(
      // parent: controller,
      // curve: Curves.easeInExpo
      // );

    Timer(
      const Duration(seconds: 4),
      () => Get.offNamed(RoutesHelper.getLogin())
    );

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),  // Replace with the actual path and file name of your image
            fit: BoxFit.cover,
          ),
        ),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: Dimensions.height10,),
              ScaleTransition(scale: animation,
              child: Center(child: Image.asset("assets/images/logo.png",
              width: Dimensions.width25*10,))),
              Image.asset("assets/images/truck.png",
                  width: Dimensions.width25*14,alignment: Alignment.bottomLeft,)
              
              // Center(child: Image.asset("assets/logo part 2.png",width: Dimensions.width25*8,))
            ],
          ),
        ),
      ),
      
    );
  }
}