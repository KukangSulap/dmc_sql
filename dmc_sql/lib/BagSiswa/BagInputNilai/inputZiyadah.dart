import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InputZiyadahPage extends StatefulWidget {
  const InputZiyadahPage({super.key});

  @override
  State<InputZiyadahPage> createState() => _InputZiyadahPageState();
}

class _InputZiyadahPageState extends State<InputZiyadahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Data Siswa"),
            const TextField(
              decoration: InputDecoration(hintText: 'Nama Siswa'),
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'Nomor Induk Siswa'),
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: "Tanggal Ziyadah",
                  prefixIcon: Icon(Icons.calendar_today)),
            ),
            const Text("Nilai Ziyadah"),
            Container(
              width: double.infinity,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: const TextField(
                      decoration: InputDecoration(hintText: 'Nilai'),
                    ),
                  ),
                  Expanded(
                    child: const TextField(
                      decoration: InputDecoration(hintText: 'JUZ'),
                    ),
                  ),
                  Expanded(
                    child: const TextField(
                      decoration: InputDecoration(hintText: 'Halaman'),
                    ),
                  )
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Notes Ziyadah"),
              maxLines: 5,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Finish"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
