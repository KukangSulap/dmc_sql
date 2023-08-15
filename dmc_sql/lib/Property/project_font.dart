import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalProjectFont extends StatelessWidget{
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const GlobalProjectFont({
    Key? key,
    required this.text,
    this.fontSize = 16.0,
    this.color = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.mPlusRounded1c(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
    );
  }
}