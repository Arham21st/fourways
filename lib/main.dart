import 'package:flutter/material.dart';
import 'package:fourways/routes/routes_helper.dart';
import 'package:fourways/screens/jobs/jobs.dart';
import 'package:fourways/screens/login_page.dart';
import 'package:fourways/screens/home_header.dart';
import 'package:get/get.dart';

import 'screens/vehicle_info/select_vehicle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       //home: JobsDetails(),
      initialRoute: RoutesHelper.getSplash(),
      getPages: RoutesHelper.routes,
      
    );
  }
}

