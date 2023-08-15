import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

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
  TextEditingController _contHadir1 = TextEditingController();
  TextEditingController _contHadir2 = TextEditingController();
  TextEditingController _contHadir3 = TextEditingController();
  TextEditingController _contHadir4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: SizedBox(
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Kehadiran"),
                Row(
                  children: [
                    Expanded(
                        child: TextField(
                      controller: _contHadir1,
                      decoration: InputDecoration(hintText: "Sakit"),
                    )),
                    Expanded(
                        child: TextField(
                      controller: _contHadir2,
                      decoration: InputDecoration(hintText: "Izin"),
                    )),
                    Expanded(
                        child: TextField(
                      controller: _contHadir3,
                      decoration: InputDecoration(hintText: "Aplha"),
                    )),
                    Expanded(
                        child: TextField(
                      controller: _contHadir4,
                      decoration: InputDecoration(hintText: "Total"),
                    )),
                  ],
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: () {
                  widget.prevPage();
                },
                child: Icon(Icons.arrow_back)),
            ElevatedButton(
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
                child: Text("Finish"))
          ],
        )
      ],
    );
  }
}
