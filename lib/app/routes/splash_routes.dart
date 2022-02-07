import 'package:get/get.dart';

import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_view.dart';

class SplashRoutes {
  SplashRoutes._();

  static final routes = [
    GetPage(
      name: '/splash',
      page: SplashView.new,
      binding: SplashBinding(),
    ),
  ];
}
