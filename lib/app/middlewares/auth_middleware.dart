import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/app/routes/app_pages.dart';
import 'package:getx_tutorial/app/services/auth_service.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final authService = Get.find<AuthService>();

    if (authService.authed) {
      return null;
    } else {
      return const RouteSettings(name: Routes.AUTH_ERROR);
    }
  }
}
