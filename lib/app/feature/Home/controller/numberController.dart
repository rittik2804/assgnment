import 'package:get/get.dart';

class NumberController extends GetxController {
  RxList<int> numList = [1, 2].obs;
  void addNum() {
    numList.add(numList.last + 1);
  }
}
