
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListedText extends StatelessWidget {
  final String text;
  final double fontSize;

  ListedText({required this.text, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    final List<String> textList = text.split(".");

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: textList.length,
      itemBuilder: (context, index) {
        final item = textList[index].trim();
        if (item.isNotEmpty) {
          return Text(
            item,
            style: GoogleFonts.mPlusRounded1c(
              fontSize: fontSize,
            ),
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}