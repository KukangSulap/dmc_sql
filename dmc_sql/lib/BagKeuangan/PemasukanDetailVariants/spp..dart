import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagKeuangan/pemasukanDetail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PemasukanDetailSPP());
}

class PemasukanDetailSPP extends StatelessWidget {
  const PemasukanDetailSPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarAdmin(page: 'k'),
        body: const Center(
          child: TemplateDetailPemasukan(
            texts: [
              'Title',
              'tanggal',
              'SPP',
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