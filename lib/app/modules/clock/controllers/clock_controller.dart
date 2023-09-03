import 'dart:async';

import 'package:get/get.dart';

class ClockController extends GetxController {
  final currentTime = DateTime.now().obs;
  late Timer timer;

  @override
  void onInit() {
    super.onInit();
    Get.log('start timer');
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      updateCurrentTime();
    });
  }

  @override
  void onReady() {
    super.onReady();
    Get.log('on ready');
    // Get.toNamed(Routes.LOGIN);
    // Get.offAndToNamed(Routes.LOGIN);
    // Get.showSnackbar(const GetSnackBar(title: 'title', message: 'message'));
  }

  @override
  void onClose() {
    super.onClose();
    Get.log('cancel timer');
    timer.cancel();
  }

  void updateCurrentTime() {
    currentTime.value = DateTime.now();
  }
}
