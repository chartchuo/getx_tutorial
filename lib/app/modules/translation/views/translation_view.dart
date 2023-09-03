import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/translation_controller.dart';

class TranslationView extends GetView<TranslationController> {
  const TranslationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TranslationView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'greeting'.tr,
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'greeting2'.tr,
              style: const TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('th', 'TH'));
                },
                child: const Text('ไทย')),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                },
                child: const Text('English US')),
          ],
        ),
      ),
    );
  }
}
