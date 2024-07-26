import 'package:flutter/material.dart';
import 'package:test_muhammad_riski/core/helper/curr_formated_number.dart';
import 'package:test_muhammad_riski/core/material/material_color.dart';
import 'package:test_muhammad_riski/core/material/material_image.dart';
import 'package:test_muhammad_riski/core/material/material_text_style.dart';

class HomeHeader {
  header(context) => Container(
        height: 280,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: MaterialColorJakOnePay.white),
        child: Stack(children: [
          Container(
            padding: const EdgeInsets.only(top: 40, right: 16, left: 16),
            height: 265,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    MaterialColorJakOnePay.primary,
                    MaterialColorJakOnePay.yellow.shade700,
                  ]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 50,
                        child: Image.asset(MaterialImage.logoOnePay)),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: MaterialColorJakOnePay.black
                                      .withOpacity(.2),
                                  blurRadius: 5,
                                  offset: const Offset(3, 3),
                                )
                              ],
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    MaterialColorJakOnePay.primary,
                                    MaterialColorJakOnePay.yellow.shade500,
                                  ]),
                            ),
                            child: Image.asset(MaterialImage.report),
                          ),
                        ),
                        const SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 30,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: MaterialColorJakOnePay.black
                                      .withOpacity(.2),
                                  blurRadius: 5,
                                  offset: const Offset(3, 3),
                                )
                              ],
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    MaterialColorJakOnePay.primary,
                                    MaterialColorJakOnePay.yellow.shade500,
                                  ]),
                            ),
                            child: Image.asset(MaterialImage.notification),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                ListTile(
                  leading: SizedBox(
                    height: 38,
                    width: 38,
                    child: Image.asset(MaterialImage.profile),
                  ),
                  title: Text(
                    'Good morning,\nGuest',
                    style: materialTextStyle.textStyleSZ18White,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 36,
            right: 36,
            bottom: 0,
            child: Container(
              height: 92,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: MaterialColorJakOnePay.black.withOpacity(.2),
                      blurRadius: 10,
                      offset: const Offset(-3, 3))
                ],
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      MaterialColorJakOnePay.primary,
                      MaterialColorJakOnePay.yellow.shade500,
                    ]),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                    color: MaterialColorJakOnePay.white,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 32, right: 32, top: 16, bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Balance Account',
                            style: materialTextStyle.textStyleSZ10Black,
                          ),
                          Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                text: 'Rp ',
                                style: materialTextStyle.textStyleSZ13Black,
                              ),
                              TextSpan(
                                text: CurrFormatedNumber.formated(0,
                                    customRp: ''),
                                style: materialTextStyle.textStyleSZ16Black,
                              ),
                            ]),
                          ),
                          Text(
                            '-',
                            style: materialTextStyle.textStyleSZ11Black,
                          )
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 57,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                MaterialColorJakOnePay.primary,
                                MaterialColorJakOnePay.yellow.shade700,
                              ]),
                        ),
                        child: Text(
                          'Top Up',
                          style: materialTextStyle.textStyleSZ12White,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      );
}
