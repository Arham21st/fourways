


import 'package:fourways/screens/jobs/jobs.dart';
import 'package:fourways/screens/login_page.dart';
import 'package:fourways/screens/main_page.dart';
import 'package:fourways/screens/vehicle_info/select_vehicle.dart';
import 'package:fourways/screens/vehicle_info/vehicle_details.dart';
import 'package:get/get.dart';

import '../screens/login_page.dart';
import '../screens/splash_page.dart';

class RoutesHelper {
  static const String splash = '/splash-page';
  static const String initial = '/';
  static const String login = '/login-page';
  static const String details = '/vehicle-details';
  static const String mainPage = '/dashboard';
  static const String jobs = '/jobs';
  static const String boardinPass = '/boarding-passt';
  // static const String popularItems = '/popular-Items';
  // static const String recommendedItems = '/recommended-Items';
  // static const String cartPage = '/cart-page';

  static String getSplash() => splash;
  static String getInitial() => initial;
  static String getLogin() => login;
  static String getVehicleDetails() => details;
  static String getMainPage() => mainPage;
  static String getJobs() => jobs;
  static String getBoardingPass() => boardinPass;
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
     GetPage(name: details, page: () {
       return const VehicleDetails();
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
    // GetPage(name: boardinPass, page: () => const BoardingPass()),
  
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