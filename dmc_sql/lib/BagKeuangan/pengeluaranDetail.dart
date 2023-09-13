import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../AppBar/appBarAdmin.dart';
import 'PengeluaranDetailVariants/pengeluaranSatuan.dart';

void main() {
  runApp(MyApp());
}

List<TemplateDetailPengeluaranData> data = [
  TemplateDetailPengeluaranData(
    texts: ["Text 1", "Text 2", "Text 3"],
    imageUrl: "https://ichef.bbci.co.uk/news/976/cpsprodpb/17638/production/_124800859_gettyimages-817514614.jpg",
  ),
  TemplateDetailPengeluaranData(
    texts: ["Text 4", "Text 5", "Text 6"],
    imageUrl: "https://cdn.mos.cms.futurecdn.net/4aWYcB9tGoGe5gHo4tiffU.jpg",
  ),
  TemplateDetailPengeluaranData(
    texts: ["Text 4", "Text 5", "Text 6"],
    imageUrl: "https://cdn.mos.cms.futurecdn.net/4aWYcB9tGoGe5gHo4tiffU.jpg",
  ),
  TemplateDetailPengeluaranData(
    texts: ["Text 4", "Text 5", "Text 6"],
    imageUrl: "https://cdn.mos.cms.futurecdn.net/4aWYcB9tGoGe5gHo4tiffU.jpg",
  ),
  // Add more data objects as needed
];


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const AppBarAdmin(page: CurrentPage.keuangan),
        body: TemplateDetailPengeluaranGrid(data: data),
      ),
    );
  }
}

class TemplateDetailPengeluaranGrid extends StatelessWidget {
  final List<TemplateDetailPengeluaranData> data;

  const TemplateDetailPengeluaranGrid({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: (data.length / 2).ceil(), // Display 2 cards per row
      itemBuilder: (context, index) {
        final startIndex = index * 2;
        final endIndex = startIndex + 2;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = startIndex; i < endIndex; i++)
              if (i < data.length)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ContainerPengeluaran(data[i]),
                  ),
                ),
          ],
        );
      },
    );
  }
}


class TemplateDetailPengeluaranData {
  final List<String?> texts;
  final String? imageUrl;

  TemplateDetailPengeluaranData({
    required this.texts,
    required this.imageUrl,
  });
}
