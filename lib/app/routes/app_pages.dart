// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../middlewares/auth_middleware.dart';
import '../modules/clock/bindings/clock_binding.dart';
import '../modules/clock/views/clock_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/detail/bindings/detail_binding.dart';
import '../modules/home/detail/views/detail_view.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/auth_error/bindings/auth_error_binding.dart';
import '../modules/login/auth_error/views/auth_error_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/simple/views/simple_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      middlewares: [
        AuthMiddleware(),
      ],
      children: [
        GetPage(
          name: _Paths.DETAIL,
          page: () => const DetailView(),
          binding: DetailBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
      children: [
        GetPage(
          name: _Paths.AUTH_ERROR,
          page: () => const AuthErrorView(),
          binding: AuthErrorBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.SIMPLE,
      page: () => const SimpleView(),
    ),
    GetPage(
      name: _Paths.CLOCK,
      page: () => const ClockView(),
      binding: ClockBinding(),
    ),
  ];
}
