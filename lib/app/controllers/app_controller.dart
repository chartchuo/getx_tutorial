import 'package:get/get.dart';

class AppController extends GetxController {
  final count = 0.obs;

  void increment() => count.value++;
}
