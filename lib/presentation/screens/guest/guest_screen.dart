import 'package:flutter/material.dart';
import 'package:test_muhammad_riski/core/material/material_color.dart';
import 'package:test_muhammad_riski/core/material/material_image.dart';
import 'package:test_muhammad_riski/core/material/material_text_style.dart';

class GuestScreen extends StatelessWidget {
  const GuestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MaterialColorJakOnePay.white,
      body: Stack(
        children: [
          Positioned(top: 40, left: 16, child: _language()),
          Positioned(top: 50, right: 16, child: _jakCard()),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _monument(),
                _guestButton(),
              ],
            ),
          ),
          _helpButton(),
        ],
      ),
    );
  }

  _jakCard() {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
      decoration: BoxDecoration(
          color: MaterialColorJakOnePay.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: MaterialColorJakOnePay.black.withOpacity(.1),
                blurRadius: 3,
                offset: Offset(-3, 3))
          ]),
      child: Row(
        children: [
          SizedBox(height: 15, child: Image.asset(MaterialImage.creditCard)),
          SizedBox(width: 10),
          SizedBox(height: 15, child: Image.asset(MaterialImage.jakCardLogo))
        ],
      ),
    );
  }

  _language() {
    return SizedBox(
      height: 75,
      width: 100,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 16,
            right: 16,
            child: Container(
              height: 18,
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: MaterialColorJakOnePay.black.withOpacity(.1),
                      blurRadius: 10,
                      offset: Offset(-3, 3))
                ],
                color: MaterialColorJakOnePay.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Positioned(
            left: 0,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(MaterialImage.id),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image.asset(MaterialImage.en),
            ),
          )
        ],
      ),
    );
  }

  _monument() {
    return Column(
      children: [
        Container(
          height: 286,
          margin: const EdgeInsets.only(left: 50, right: 50),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Image.asset(MaterialImage.monumenNational),
        ),
        Text(
          'Explore Jakarta with Jakarta Tourist Pass',
          style: materialTextStyle.textStyleSZ15Primary,
        ),
      ],
    );
  }

  _guestButton() {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 50, right: 50),
            padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: MaterialColorJakOnePay.yellow),
                gradient: LinearGradient(colors: [
                  MaterialColorJakOnePay.primary,
                  MaterialColorJakOnePay.yellow.shade500,
                ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
            child: Text(
              'Continue as a Guest',
              style: materialTextStyle.textStyleSZ24White,
            ),
          ),
        ),
        SizedBox(height: 15),
        GestureDetector(
          child: Container(
            margin: EdgeInsets.only(left: 50, right: 50),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: MaterialColorJakOnePay.yellow),
                gradient: LinearGradient(colors: [
                  MaterialColorJakOnePay.yellow.shade500,
                  MaterialColorJakOnePay.primary,
                ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MaterialColorJakOnePay.white,
              ),
              child: Text(
                'Continue as a Guest',
                style: materialTextStyle.textStyleSZ24Primary,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _helpButton() {
    return Positioned(
      bottom: 30,
      right: 0,
      child: Container(
        height: 90,
        width: 90,
        child: Image.asset(MaterialImage.helpIcon),
      ),
    );
  }
}
