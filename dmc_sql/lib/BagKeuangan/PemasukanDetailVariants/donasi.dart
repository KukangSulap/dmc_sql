import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagKeuangan/pemasukanDetail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PemasukanDetailDonasi());
}

class PemasukanDetailDonasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarAdmin(page: 'k'),
        body: Center(
          child: TemplateDetailPemasukan(
            texts: const [
              'Title',
              'tanggal',
              'Donasi',
              'jumlah',
              'NIS',
              'notes',
            ],
            imageUrl: 'https://example.com/your_image_url.png',
          ),
        ),
      ),
    );
  }
}