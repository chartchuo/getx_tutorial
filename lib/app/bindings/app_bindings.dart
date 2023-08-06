import 'package:get/get.dart';
import 'package:getx_tutorial/app/controllers/app_controller.dart';
import 'package:getx_tutorial/app/data/providers/api_provider.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(
      () => AppController(),
    );
    Get.lazyPut<ApiProvider>(
      () => ApiProvider(),
    );
  }
}
