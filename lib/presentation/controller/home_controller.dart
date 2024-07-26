import 'package:get/get.dart';
import 'package:test_muhammad_riski/core/material/material_image.dart';
import 'package:test_muhammad_riski/domain/entity/menu_entity.dart';

class HomeController extends GetxController {
  List<MenuEnity> listMenu = [];

  generateMenu() {
    listMenu.addAll([
      MenuEnity(MaterialImage.exploreJakarta, 'Explore Jakarta'),
      MenuEnity(MaterialImage.topUpJakCard, 'Top Up JakCard'),
      MenuEnity(MaterialImage.jakCardBalance, 'JakCard Balance'),
      MenuEnity(MaterialImage.event, 'Event'),
    ]);
    update(['menu-home-screen']);
  }

  @override
  void onInit() {
    generateMenu();
    super.onInit();
  }
}
