import 'package:get/get.dart';
import 'package:getx_tutorial/app/data/models/user_model.dart';

class LoginController extends GetxController {
  final user = User().obs;

  @override
  void onInit() {
    super.onInit();
    user.update((u) {
      u?.username = 'abc';
      u?.email = 'abc@def.com';
    });
  }

  void updateUsername(String newUsername) {
    user.update((u) {
      u?.username = newUsername;
    });
  }
}
