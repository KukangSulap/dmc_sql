import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagKeuangan/pengeluaranDetail.dart';
import 'package:dmc_sql/misc/listViewPengeluaran.dart';
import 'package:flutter/material.dart';

class PengeluaranDetailIfthor extends StatelessWidget {
  late final List<String> listInput;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarAdmin(page: 'k'),
        body: Center(
          child: Column(
            children: [
              TemplateDetailPengeluaran(
                texts: const [
                  'Ifthor Kamis',
                  'tanggal',
                  '.',
                  'jumlah',
                  'NIS',
                  'notes',
                ],
                imageUrl: 'https://example.com/your_image_url.png',
              ),
              const SizedBox(height: 20),
              ListViewPengeluaran(items: listInput),
            ],
          ),
        ),
      ),
    );
  }
}