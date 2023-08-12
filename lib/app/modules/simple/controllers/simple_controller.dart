import 'package:get/get.dart';

class SimpleController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update();
  }
}
