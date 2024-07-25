import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/routes/app_pages.dart';
import 'presentation/routes/app_routes.dart';

class JakOnePay extends StatelessWidget {
  const JakOnePay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      title: 'SERA TEST MUHAMMAD RISKI',
      getPages: AppPages.pages,
      initialRoute: AppRoutes.initial,
    );
  }
}
