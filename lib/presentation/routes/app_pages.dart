import 'package:get/get.dart';
import 'package:test_muhammad_riski/domain/bindings/guest_binding.dart';
import 'package:test_muhammad_riski/domain/bindings/splash_screen_binding.dart';
import 'package:test_muhammad_riski/presentation/routes/app_routes.dart';
import 'package:test_muhammad_riski/presentation/screens/guest/guest_screen.dart';

import '../screens/splashscreen/splash_screen.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.initial,
        page: () => SplashScreen(),
        binding: SplashScreenBinding()),
    GetPage(
        name: AppRoutes.initial,
        page: () => GuestScreen(),
        binding: GuestBinding()),
  ];
}