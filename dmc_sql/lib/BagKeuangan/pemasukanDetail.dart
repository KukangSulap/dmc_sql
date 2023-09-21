import 'package:dmc_sql/model/dummy.dart';
import 'package:flutter/material.dart';

import '../AppBar/appBarAdmin.dart';
import '../Property/app_color.dart';
import '../Property/project_font.dart';

class DetailPemasukan extends StatelessWidget {
  // final String imageUrl;
  final Dummy dataPemasukan;

  const DetailPemasukan({
    Key? key,
    required this.dataPemasukan,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 400;

    return Scaffold(
      appBar: const AppBarAdmin(page: CurrentPage.keuangan),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
                        text: dataPemasukan.title,
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
                          color: const Color(0xffedc35f),
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
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      final screenWidth = constraints.maxWidth;

                      if (screenWidth < 400) {
                        return buildMobileLayout();
                      } else {
                        return buildTabletLayout();
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildTitleSection(),
        const SizedBox(height: 20),
        buildImageSection(),
      ],
    );
  }

  Widget buildTabletLayout() {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: buildTitleSection(),
        ),
        Expanded(
          flex: 1,
          child: buildImageSection(),
        ),
      ],
    );
  }

  Widget buildTitleSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Pemasukan Title", // Replace with actual title
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 32,
                color: Colors.blue, // Adjust the color as needed
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.center,
              width: 193,
              height: 43,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffd66a3d),
              ),
              child: Text(
                "Button Text",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          "Additional Text Inside Card",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 20),
        const TextField(
          readOnly: true,
          decoration: InputDecoration(
            labelText: "Read-Only Text",
            border: OutlineInputBorder(),
          ),
        )
      ],
    );
  }

  Widget buildImageSection() {
    return Image.network(
      "https://cdn.mos.cms.futurecdn.net/4aWYcB9tGoGe5gHo4tiffU.jpg",
      width: 150,
      height: 150,
    );
  }
}
