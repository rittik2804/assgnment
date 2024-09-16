import 'package:flutter_application_1/app/feature/Home/binding/home_page_binding.dart';
import 'package:flutter_application_1/app/feature/Home/view/homeScreen.dart';
import 'package:flutter_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../feature/Home/view/secondScreen.dart';

class AppRoutes {
  static String getHome() => AppPages.home;
  static String SecondPageRoutes() => AppPages.secondPage;
  static List<GetPage> routes = [
    GetPage(
        name: AppPages.home,
        page: () => const MyHomePage(title: 'Home Page'),
        binding: HomePageBinding()),
    GetPage(
        name: AppPages.secondPage,
        page: () => const SecondPage(title: 'Second Page'),
        binding: HomePageBinding())
  ];
}
