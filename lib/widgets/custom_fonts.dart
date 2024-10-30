import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customText({
  required String text,
  required double fontSize,
  required Color textColor,
  GlobalKey? key,
  double? height,
  int? line,
  FontWeight? fontWeight,
  TextAlign? textAlignment,
  TextDecoration? textdecoration,
  final bool? isNaira,
  FontStyle fontstyle = FontStyle.normal,
}) =>
    Text(
      text,
      key: key,
      textAlign: textAlignment ?? TextAlign.left,
      style: isNaira == null
          ? GoogleFonts.raleway(
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
              height: height ?? 1.2,
              decoration: textdecoration,
              fontStyle: fontstyle,
            )
          : GoogleFonts.raleway(
              color: textColor,
              fontSize: fontSize,
              fontWeight: fontWeight,
              height: height ?? 1.2,
              decoration: textdecoration,
              fontStyle: fontstyle,
            ),
      maxLines: line ?? 2,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
    );
