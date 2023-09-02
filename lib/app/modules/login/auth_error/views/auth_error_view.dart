import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/app/routes/app_pages.dart';

import '../controllers/auth_error_controller.dart';

class AuthErrorView extends GetView<AuthErrorController> {
  const AuthErrorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('AuthErrorView'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => Get.offAllNamed(Routes.LOGIN),
            child: const Text('Auth error click to login')),
      ),
    );
  }
}
