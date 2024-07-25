import 'package:get/get.dart';
import 'package:test_muhammad_riski/presentation/controller/guest_controller.dart';

class GuestBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GuestController>(() => GuestController());
  }
}
