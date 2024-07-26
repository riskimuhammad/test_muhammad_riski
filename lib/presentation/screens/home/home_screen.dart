import 'package:flutter/material.dart';
import 'package:test_muhammad_riski/core/material/material_color.dart';
import 'package:test_muhammad_riski/presentation/screens/home/widgets/header_widget.dart';
import 'package:test_muhammad_riski/presentation/screens/home/widgets/menu_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final header = HomeHeader();
    final menu = HomeMenuWidget();
    return Scaffold(
      backgroundColor: MaterialColorJakOnePay.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Column(
              children: [header.header(context), menu.menu(context)],
            ),
          )
        ],
      ),
    );
  }
}
