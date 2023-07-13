


import 'package:fourways/screens/jobs/clocking.dart';
import 'package:fourways/screens/jobs/jobs.dart';
import 'package:fourways/screens/jobs/sign_pod.dart';
import 'package:fourways/screens/login_page.dart';
import 'package:fourways/screens/main_page.dart';
import 'package:fourways/screens/vehicle_info/select_vehicle.dart';
import 'package:fourways/screens/vehicle_info/vehicle_check.dart';
import 'package:get/get.dart';

import '../screens/splash_page.dart';

class RoutesHelper {
  static const String splash = '/splash-page';
  static const String initial = '/';
  static const String login = '/login-page';
  static const String mainPage = '/dashboard';
  static const String jobs = '/jobs';
  static const String signPOD = '/sign-POD';
  static const String clocking = '/clocking';
  static const String vehicleCheck = '/vehicle-check';
  // static const String cartPage = '/cart-page';

  static String getSplash() => splash;
  static String getInitial() => initial;
  static String getLogin() => login;
  static String getMainPage() => mainPage;
  static String getJobs() => jobs;
  static String getSignPOD() => signPOD;
  static String getClocking() => clocking;
  static String getVehicleCheck() => vehicleCheck;
  // static String getPopularProducts(int pageId, String page) => "$popularItems?pageId=$pageId&page=$page";
  // static String getRecommendedProducts(int pageId, String page) =>'$recommendedItems?pageId=$pageId&page=$page';
  // static String getCartPage() => '$cartPage';

  static List<GetPage> routes = [
    GetPage(name: splash, page: () {
      return const SplashScreen();
      
    }),
    
    GetPage(name: initial, page: () {
      return const SelectVehicle();
      
    },
    transition: Transition.fadeIn),
    
    GetPage(name: login, page: () {
      return const LoginPage();
    },
    transition: Transition.fadeIn),
    
     GetPage(name: mainPage, page: () {
       return const MainPage();
     },
     transition: Transition.fadeIn),
     
     GetPage(name: jobs, page: () {
       return const JobsDetails();
     },
     transition: Transition.fadeIn),
     
     GetPage(name: signPOD, page: () {
       return const SignPOD();
     },
     transition: Transition.fadeIn),

     GetPage(name: clocking, page: () {
       return const Clocking();
     },
     transition: Transition.fadeIn),

     GetPage(name: vehicleCheck, page: () {
       return const VehicleCheck();
     },
     transition: Transition.fadeIn),
  
    // GetPage(
    //   name: popularItems, page: () {
    //     var pageId=Get.parameters["pageId"];
    //     var page=Get.parameters["page"];
    //     return popularProducts(pageId: int.parse(pageId!), page: page!);
    //   }
    // ),

    // GetPage(
    //   name: recommendedItems, page: () {
    //     var pageId=Get.parameters["pageId"];
    //     var page = Get.parameters["page"];
    //     return RecommendedProducts(pageId: int.parse(pageId!),page:page!);
    //   }
    // ),
    
    // GetPage(
    //     name: cartPage,
    //     page: () {
    //       return const CartPage();
    //     },
    //     transition: Transition.fadeIn),
  ];
}