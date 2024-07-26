import 'package:get/get.dart';
import 'package:test_muhammad_riski/presentation/controller/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
