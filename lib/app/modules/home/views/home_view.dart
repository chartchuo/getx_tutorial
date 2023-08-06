import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/app/controllers/app_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text(
                  'Count ${Get.find<AppController>().count.value}',
                  style: const TextStyle(fontSize: 20),
                )),
            ElevatedButton(
              onPressed: () => Get.find<AppController>().increment(),
              child: const Text('Inc'),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed('/home/detail'),
              child: const Text('Goto Detail'),
            ),
          ],
        ),
      ),
    );
  }
}
