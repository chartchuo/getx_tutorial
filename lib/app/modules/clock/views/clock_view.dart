import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/clock_controller.dart';

class ClockView extends GetView<ClockController> {
  const ClockView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClockView'),
        centerTitle: true,
      ),
      body: Center(
        child: Obx(() => Text(
              controller.currentTime.value.toString(),
              style: const TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
