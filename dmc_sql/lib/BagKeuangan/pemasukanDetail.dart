import 'package:dmc_sql/BagKeuangan/inputPemasukan.dart';
import 'package:flutter/material.dart';

class TemplateDetailPemasukan extends StatelessWidget {
  final List<String> texts;
  final String imageUrl;

  const TemplateDetailPemasukan({super.key, required this.texts, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
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
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InputPemasukan(),
                ),
              );
            },
            child: const Text('Edit'),
          ),
        ],
      ),
    );
  }
}
