import 'package:get/get.dart';
import '../routes/app_routes.dart';

class SplashScreenController extends GetxController {
  initialSplashScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAndToNamed(AppRoutes.guest);
    });
  }

  @override
  void onInit() {
    initialSplashScreen();
    super.onInit();
  }
}
