import 'package:get/get.dart';
import 'package:test_muhammad_riski/presentation/routes/app_routes.dart';

class GuestController extends GetxController {
  navToHomeScreen() {
    Get.offAndToNamed(AppRoutes.home);
  }
}
