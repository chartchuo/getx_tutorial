import 'dart:async';

import 'package:get/get.dart';

class ClockController extends GetxController {
  final currentTime = DateTime.now().obs;
  late Timer timer;

  @override
  void onInit() {
    super.onInit();
    print('start timer');
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      updateCurrentTime();
    });
  }

  @override
  void onReady() {
    super.onReady();
    print('on ready');
    // Get.toNamed(Routes.LOGIN);
    // Get.offAndToNamed(Routes.LOGIN);
    // Get.showSnackbar(const GetSnackBar(title: 'title', message: 'message'));
  }

  @override
  void onClose() {
    super.onClose();
    print('cancel timer');
    timer.cancel();
  }

  void updateCurrentTime() {
    currentTime.value = DateTime.now();
  }
}
