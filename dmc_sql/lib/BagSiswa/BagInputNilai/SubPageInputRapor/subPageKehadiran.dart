import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class SubPageKehadiran extends StatefulWidget {
  const SubPageKehadiran({super.key});

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
    return Container(
      height: 200,
      child: Card(
        elevation: 5,
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
    );
  }
}
