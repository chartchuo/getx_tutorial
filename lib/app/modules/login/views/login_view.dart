import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/app/routes/app_pages.dart';
import 'package:getx_tutorial/app/services/auth_service.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text('username ${controller.user.value.username}')),
            ElevatedButton(
                onPressed: () => controller.updateUsername('New Username'),
                child: const Text('update username')),
            ElevatedButton(
                onPressed: () => Get.toNamed(Routes.HOME),
                child: const Text('Goto /Home')),
            ElevatedButton(
                onPressed: () => Get.toNamed(Routes.DETAIL),
                child: const Text('Goto Home/Detail')),
            ElevatedButton(
                onPressed: () => Get.toNamed(Routes.CLOCK),
                child: const Text('Goto Clock')),
            ElevatedButton(
                onPressed: () => Get.find<AuthService>().login(),
                child: const Text('Login')),
            ElevatedButton(
                onPressed: () => Get.find<AuthService>().logout(),
                child: const Text('Logout')),
          ],
        ),
      ),
    );
  }
}
