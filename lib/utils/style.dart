import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ufs_task/utils/color_resorces.dart';

Widget robotoText(String text,
    {Color? color, FontWeight? fontWeight, double? size, double? spacing}) {
  return Text(text,
      style: GoogleFonts.poppins(
          color: color ?? ColorResources.balck,
          fontWeight: fontWeight,
          fontSize: size,
          letterSpacing: spacing));
}

TextStyle robotoStyle(
    {Color? color, FontWeight? fontWeight, double? size, double? spacing}) {
  return GoogleFonts.poppins(
      color: color ?? ColorResources.balck,
      fontWeight: fontWeight,
      fontSize: size,
      letterSpacing: spacing);
}

Widget defaultText(String text,
    {Color? color, FontWeight? fontWeight, double? size, double? spacing}) {
  return Text(text,
      style: TextStyle(
          color: color ?? ColorResources.balck,
          fontWeight: fontWeight,
          fontSize: size,
          letterSpacing: spacing));
}
