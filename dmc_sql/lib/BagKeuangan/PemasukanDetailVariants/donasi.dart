import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagKeuangan/pemasukanDetail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PemasukanDetailDonasi());
}

class PemasukanDetailDonasi extends StatelessWidget {
  const PemasukanDetailDonasi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: AppBarAdmin(page: CurrentPage.keuangan),
        body: Center(
          child: TemplateDetailPemasukan(
            texts: [
              'Title',
              'tanggal',
              'Donasi',
              'jumlah',
              'NIS',
              'notes',
            ],
            imageUrl: 'https://ichef.bbci.co.uk/news/976/cpsprodpb/17638/production/_124800859_gettyimages-817514614.jpg',
          ),
        ),
      ),
    );
  }
}