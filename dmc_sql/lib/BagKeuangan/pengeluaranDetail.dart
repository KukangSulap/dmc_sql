import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../AppBar/appBarAdmin.dart';
import '../Property/app_color.dart';
import '../Property/project_font.dart';
import 'PengeluaranDetailVariants/pengeluaranSatuan.dart';

void main() {
  runApp(TemplateDetailPengeluaran());
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

class TemplateDetailPengeluaran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const AppBarAdmin(page: CurrentPage.keuangan),
        body: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final bool isSmallScreen = constraints.maxWidth < 768; // Adjust this breakpoint as needed

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            GlobalProjectFont(
                              text: 'Lomba Muharam 1445 H',
                              fontWeight: FontWeight.w800,
                              fontSize: isSmallScreen ? 36 : 48,
                              color: AppColor.blue,
                            ),
                            Spacer(),
                            Container(
                              alignment: Alignment.center,
                              height: isSmallScreen ? 45 : 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffedc35f),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0, right: 8),
                                child: GlobalProjectFont(
                                  text: 'Edit',
                                  fontWeight: FontWeight.w800,
                                  fontSize: isSmallScreen ? 18 : 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GlobalProjectFont(
                              text: 'Reward',
                              fontWeight: FontWeight.w800,
                              fontSize: isSmallScreen ? 18 : 24,
                            ),
                            SizedBox(width: isSmallScreen ? 10 : 20),
                            GlobalProjectFont(
                              text: '16 Agustus 2023',
                              fontWeight: FontWeight.w800,
                              fontSize: isSmallScreen ? 18 : 24,
                            ),
                            Spacer(),
                            Container(
                              alignment: Alignment.center,
                              height: isSmallScreen ? 45 : 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffd66a3d),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0, right: 8),
                                child: GlobalProjectFont(
                                  text: 'Rp 1.550.000',
                                  fontWeight: FontWeight.w800,
                                  fontSize: isSmallScreen ? 18 : 24,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10), // Add some spacing between elements
                  Expanded(
                    child: TemplateDetailPengeluaranGrid(data: data),
                  ),
                ],
              );
            },
          ),
        ),
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
