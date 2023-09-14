import 'package:flutter/material.dart';

import '../../Property/app_color.dart';
import '../../Property/project_font.dart';
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
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final screenWidth = constraints.maxWidth;

            // Adjust the layout based on screen width
            if (screenWidth < 400) {
              return buildMobileLayout();
            } else {
              return buildTabletLayout();
            }
          },
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
    return Row(
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
        GlobalProjectFont(
          text: data.texts[0] ?? "",
          fontWeight: FontWeight.w800,
          fontSize: 32,
          color: AppColor.blue,
        ),
        const SizedBox(width: 20),
        GlobalProjectFont(
          text: data.texts[1] ?? "",
          fontWeight: FontWeight.w800,
          fontSize: 20,
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          width: 193,
          height: 43,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffd66a3d),
          ),
          child: GlobalProjectFont(
            text: data.texts[2] ?? "",
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Colors.white,
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
      data.imageUrl ?? "",
      width: 150,
      height: 150,
    );
  }
}
