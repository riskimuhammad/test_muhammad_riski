import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_muhammad_riski/core/material/material_color.dart';

class MaterialTextStyle {
  TextStyle textStyleSZ24White = GoogleFonts.nunito(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: MaterialColorJakOnePay.white);
  TextStyle textStyleSZ24Primary = GoogleFonts.nunito(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: MaterialColorJakOnePay.primary);
  TextStyle textStyleSZ15Primary = GoogleFonts.nunito(
      fontWeight: FontWeight.w700,
      fontSize: 15,
      color: MaterialColorJakOnePay.primary);
  TextStyle textStyleSZ18White = GoogleFonts.nunito(
      fontWeight: FontWeight.w700,
      fontSize: 18,
      color: MaterialColorJakOnePay.white);
  TextStyle textStyleSZ10Black =
      GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 10);
  TextStyle textStyleSZ13Black =
      GoogleFonts.nunito(fontSize: 13, fontWeight: FontWeight.w500);
  TextStyle textStyleSZ16Black =
      GoogleFonts.nunito(fontSize: 16, fontWeight: FontWeight.w500);
  TextStyle textStyleSZ11Black =
      GoogleFonts.nunito(fontSize: 11, fontWeight: FontWeight.w700);
  TextStyle textStyleSZ8Black =
      GoogleFonts.nunito(fontSize: 8, fontWeight: FontWeight.w700);
  TextStyle textStyleSZ12White = GoogleFonts.nunito(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: MaterialColorJakOnePay.white);

  TextStyle textStyleSZ11White = GoogleFonts.nunito(
      fontWeight: FontWeight.w400,
      fontSize: 11,
      color: MaterialColorJakOnePay.white);
}

MaterialTextStyle materialTextStyle = MaterialTextStyle();
