import 'package:flutter/material.dart';
import 'package:test_muhammad_riski/core/material/material_color.dart';
import 'package:test_muhammad_riski/core/material/material_image.dart';
import 'package:test_muhammad_riski/core/material/material_text_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          MaterialColorJakOnePay.primary,
          MaterialColorJakOnePay.primary,
          MaterialColorJakOnePay.yellow.shade700,
          MaterialColorJakOnePay.yellow.shade700,
        ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            _backgroundTopLeft(),
            _backgroundLeft(),
            _backgroundBottomRight1(),
            _backgroundBottomRight2(),
            _jakOnePayLogo(),
            _powerdBy()
          ],
        ),
      ),
    );
  }

  _backgroundTopLeft() {
    return Positioned(
      top: -30,
      left: 60,
      height: 152,
      width: 151,
      child: Image.asset(MaterialImage.bgDecorationTopLeft),
    );
  }

  _backgroundLeft() {
    return Positioned(
      top: 0,
      left: -30,
      height: 332,
      width: 244,
      child: Image.asset(MaterialImage.bgDecorationLeft),
    );
  }

  _backgroundBottomRight1() {
    return Positioned(
      bottom: 50,
      right: -40,
      height: 332,
      width: 244,
      child: Image.asset(MaterialImage.bgDecorationBottomRight1),
    );
  }

  _backgroundBottomRight2() {
    return Positioned(
      bottom: -40,
      right: 0,
      height: 102,
      width: 101,
      child: Image.asset(MaterialImage.bgDecorationBottomRight2),
    );
  }

  _jakOnePayLogo() {
    return Positioned(
        bottom: 0,
        top: 0,
        right: 0,
        left: 0,
        child: Container(
            height: 89,
            margin: const EdgeInsets.only(left: 49, right: 49),
            child: Image.asset(MaterialImage.logoOnePay)));
  }

  _powerdBy() {
    return Positioned(
      bottom: 100,
      left: 0,
      right: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 15.47, child: Image.asset(MaterialImage.ojkLps)),
          const SizedBox(height: 27),
          Text(
            'Powered by Bank DKI\n2023',
            textAlign: TextAlign.center,
            style: materialTextStyle.textStyleSZ11White,
          )
        ],
      ),
    );
  }
}
