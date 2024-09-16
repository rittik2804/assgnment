import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/core/utils/screen_ratio.dart';
import 'package:flutter_application_1/app/core/values/app_string.dart';
import 'package:flutter_application_1/app/feature/Home/controller/numberController.dart';
import 'package:flutter_application_1/app/routes/app_routes.dart';
import 'package:get/get.dart';

import '../../../globalWidget/button.dart';
import '../../../globalWidget/ktext.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
            const kText(),
            SizedBox(
              height: ScreenSize.height * 0.18,
            ),
            Obx(() {
              return SizedBox(
                height: ScreenSize.height * 0.4,
                width: ScreenSize.width,
                child: ListView.builder(
                    itemCount: Get.find<NumberController>().numList.length,
                    itemBuilder: (context, index) {
                      return Text(
                        Get.find<NumberController>().numList[index].toString(),
                        style: Theme.of(context).textTheme.headlineMedium,
                      );
                    }),
              );
            }),
            const Spacer(),
            ElevatedButton(
                child: Text(AppString.goToSecondPage),
                onPressed: () {
                  Get.toNamed(AppRoutes.SecondPageRoutes());
                })
          ],
        ),
      ),
      floatingActionButton: const IncrementButton(),
    );
  }
}
