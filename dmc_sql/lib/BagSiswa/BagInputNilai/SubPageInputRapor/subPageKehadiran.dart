import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../../../BagKeuangan/keuangan.dart';
import '../../../Property/app_color.dart';
import '../../../Property/project_font.dart';

class SubPageKehadiran extends StatefulWidget {
  const SubPageKehadiran(
      {super.key,
      required this.nextPage,
      required this.prevPage,
      required this.insertData});

  final VoidCallback nextPage;
  final VoidCallback prevPage;
  final List<dynamic> insertData;

  @override
  State<SubPageKehadiran> createState() => _SubPageKehadiranState();
}

class _SubPageKehadiranState extends State<SubPageKehadiran> {
  final TextEditingController _contHadir1 = TextEditingController();
  final TextEditingController _contHadir2 = TextEditingController();
  final TextEditingController _contHadir3 = TextEditingController();
  final TextEditingController _contHadir4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const GlobalProjectFont(
                    text: 'Kehadiran',
                    fontWeight: FontWeight.w800,
                    fontSize: 22.0,
                    color: AppColor.blue,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 10, left: 10),
                            padding: const EdgeInsets.only(top: 3, left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColor.blue, width: 1.5),
                            ),
                            child: TextField(
                              controller: _contHadir1,
                              decoration: const InputDecoration(
                                hintText: 'Sakit',
                              ),
                            ),
                          ),
                      ),
                      Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 10, left: 10),
                            padding: const EdgeInsets.only(top: 3, left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColor.blue, width: 1.5),
                            ),
                            child: TextField(
                              controller: _contHadir2,
                              decoration: const InputDecoration(
                                hintText: 'Izin',
                              ),
                            ),
                          ),
                      ),
                      Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 10, left: 10),
                            padding: const EdgeInsets.only(top: 3, left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColor.blue, width: 1.5),
                            ),
                            child: TextField(
                              controller: _contHadir3,
                              decoration: const InputDecoration(
                                hintText: 'Aplha',
                              ),
                            ),
                          ),
                      ),
                      Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 10, left: 10),
                            padding: const EdgeInsets.only(top: 3, left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColor.blue, width: 1.5),
                            ),
                            child: TextField(
                              controller: _contHadir4,
                              decoration: const InputDecoration(
                                hintText: 'Total',
                              ),
                            ),
                          ),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom( // Set button style
                  backgroundColor: Colors.transparent, // Set the button color to transparent
                  elevation: 0, shadowColor: Colors. transparent,// Remove button elevation
                ),
                onPressed: () {
                  widget.prevPage();
                },
                child: const Icon(
                  Icons.arrow_back,
                  size: 20,
                  color: AppColor.orange,
                )
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom( // Set button style
                backgroundColor: Colors.transparent, // Set the button color to transparent
                elevation: 0, shadowColor: Colors. transparent,// Remove button elevation
              ),
                onPressed: () {
                  if (widget.insertData[4].length < 3) {
                    widget.insertData[4].addAll([
                      _contHadir1.text,
                      _contHadir2.text,
                      _contHadir3.text,
                      _contHadir4.text,
                    ]);
                  } else {
                    widget.insertData[4].removeRange(0, 4);
                    widget.insertData[4].addAll([
                      _contHadir1.text,
                      _contHadir2.text,
                      _contHadir3.text,
                      _contHadir4.text,
                    ]);
                  }

                  // nilai pertama dari kualitatif
                  print("kualitatif " + widget.insertData[0][0]);

                  // nilai kedua dari ibadah
                  print("ibadah " + widget.insertData[1][1]);

                  // nilai salah satu dari list nilai hadits pertama
                  print(widget.insertData[2][0][0]);

                  // nilai jumlah di bagian hifdzun
                  print("quran " + widget.insertData[3][8]);

                  // nilai total kehadiran
                  print("hadir " + widget.insertData[4][3]);

                  widget.nextPage();
                },
                child: const CustomButtonril(
                  title: 'Finish',
                  widths: 100,
                  textColor: Colors.white,
                  fontWeight: FontWeight.normal,
                  backgroundColor: AppColor.yellow,
                  height: 40,
                ),
            )
          ],
        )
      ],
    );
  }
}
