import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class SubPageKehadiran extends StatefulWidget {
  const SubPageKehadiran(
      {super.key, required this.nextPage, required this.prevPage});

  final VoidCallback nextPage;
  final VoidCallback prevPage;

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
                  widget.nextPage();
                },
                child: Text("Finish"))
          ],
        )
      ],
    );
  }
}
