import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/app/feature/Home/controller/numberController.dart';
import 'package:get/get.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Get.find<NumberController>().addNum();
      },
      child: const Icon(Icons.add),
    );
  }
}
