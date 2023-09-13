import 'package:flutter/material.dart';

import '../pengeluaranDetail.dart';

class ContainerPengeluaran extends StatelessWidget {
  final TemplateDetailPengeluaranData data;
  const ContainerPengeluaran(this.data);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            Text(
              data.texts[0] ?? "",
              style: const TextStyle(fontWeight: FontWeight.bold),
              key: const Key('text_0'),
            ),
            for (int i = 1; i < data.texts.length; i++)
              Text(
                data.texts[i] ?? "",
                key: Key('text_$i'),
              ),
            const SizedBox(height: 20),
            Image.network(
              data.imageUrl ?? "",
              width: 150,
              height: 150,
            ),
          ],
        ),
      ),
    );
  }
}
