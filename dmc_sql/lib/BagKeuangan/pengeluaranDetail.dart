import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TemplateDetailPengeluaran extends StatelessWidget {
  final List<String> texts;
  final String imageUrl;

  const TemplateDetailPengeluaran({super.key, required this.texts, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Detail Pengeluaran ${texts[0]}',
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.mPlusRounded1c(
            fontWeight: FontWeight.w800,
            fontSize: 20.0,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          texts[0],
          style: const TextStyle(fontWeight: FontWeight.bold),
          key: const Key('text_0'),
        ),
        for (int i = 1; i < texts.length; i++)
          Text(
            texts[i],
            key: Key('text_$i'),
          ),
        const SizedBox(height: 20),
        Image.network(
          imageUrl,
          width: 150,
          height: 150,
        ),
      ],
    );
  }
}
