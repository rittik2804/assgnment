//import 'package:flutter_application_1/app/controller/numberController.dart';
import 'package:get/get.dart';

import '../controller/numberController.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NumberController());
  }
}
