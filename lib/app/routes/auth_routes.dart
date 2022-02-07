import 'package:get/get.dart';

import '../modules/auth/login/login_binding.dart';
import '../modules/auth/login/login_view.dart';
import '../modules/auth/register/register_binding.dart';
import '../modules/auth/register/register_view.dart';

class AuthRoutes {
  AuthRoutes._();

  static final routes = [
    GetPage(
      name: '/auth.login',
      page: LoginView.new,
      binding: LoginBinding(),
    ),
    GetPage(
      name: '/auth/register',
      page: RegisterView.new,
      binding: RegisterBinding(),
    ),
  ];
}
