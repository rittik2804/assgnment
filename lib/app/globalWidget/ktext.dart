import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../feature/Home/controller/numberController.dart';

class kText extends StatelessWidget {
  const kText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Text(
        Get.find<NumberController>().numList.last.toString(),
        style: Theme.of(context).textTheme.headlineMedium,
      );
    });
  }
}
