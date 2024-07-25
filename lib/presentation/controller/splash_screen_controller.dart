import 'package:get/get.dart';

import '../routes/app_routes.dart';

class SplashScreenController extends GetxController {
  initialSplashScreen() {
    Future.delayed(Duration(seconds: 2), () {
      Get.offAndToNamed(AppRoutes.guest);
    });
  }
}
