import 'package:flutter/material.dart';

class TemplateDetailPemasukan extends StatelessWidget {
  final List<String> texts;
  final String imageUrl;

  TemplateDetailPemasukan({required this.texts, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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
