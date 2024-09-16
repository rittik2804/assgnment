import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/utils/screen_ratio.dart';
import 'package:flutter_application_1/app/feature/Home/controller/numberController.dart';
import 'package:flutter_application_1/app/globalWidget/button.dart';
import 'package:flutter_application_1/app/globalWidget/ktext.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.title});

  final String title;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          height: ScreenSize.height - kToolbarHeight,
          width: ScreenSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Obx(() {
                return Container(
                  padding: const EdgeInsets.only(left: 20),
                  height: ScreenSize.height * 0.3,
                  width: ScreenSize.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Get.find<NumberController>().numList.length,
                      itemBuilder: (context, index) {
                        return Text(
                          Get.find<NumberController>()
                              .numList[index]
                              .toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        );
                      }),
                );
              }),
              SizedBox(
                height: ScreenSize.height * 0.18,
              ),
              SizedBox(width: ScreenSize.width, child: const kText()),
              const Spacer(),
            ],
          ),
        ),
        floatingActionButton: const IncrementButton());
  }
}
