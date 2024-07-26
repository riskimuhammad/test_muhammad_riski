import 'package:get/get.dart';
import 'package:test_muhammad_riski/presentation/controller/splash_screen_controller.dart';

class SplashScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<SplashScreenController>(SplashScreenController());
  }
}
