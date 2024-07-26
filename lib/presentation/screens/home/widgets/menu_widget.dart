import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/core/material/material_image.dart';
import 'package:test_muhammad_riski/core/material/material_text_style.dart';
import 'package:test_muhammad_riski/presentation/controller/home_controller.dart';

class HomeMenuWidget {
  menu(context) => Container(
        margin: const EdgeInsets.only(top: 16),
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: GetBuilder<HomeController>(
          init: Get.find<HomeController>(),
          builder: (controller) => GridView.builder(
            padding: const EdgeInsets.only(left: 16, right: 16),
            itemCount: controller.listMenu.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisExtent: 100,
                crossAxisSpacing: 16,
                childAspectRatio: 1),
            itemBuilder: (context, index) => Column(
              children: [
                Expanded(
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20, top: 10),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(MaterialImage.bgIcon))),
                        child: Image.asset(controller.listMenu[index].icon!))),
                Text(
                  controller.listMenu[index].title!,
                  style: materialTextStyle.textStyleSZ8Black,
                )
              ],
            ),
          ),
        ),
      );
}
