import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InputMurajaahPage extends StatefulWidget {
  const InputMurajaahPage({super.key});

  @override
  State<InputMurajaahPage> createState() => _InputMurajaahPageState();
}

class _InputMurajaahPageState extends State<InputMurajaahPage> {
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
                  hintText: "Tanggal Muraja'ah",
                  prefixIcon: Icon(Icons.calendar_today)),
            ),
            const Text("Nilai Muraja'ah"),
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
                      decoration: InputDecoration(hintText: 'Halaman'),
                    ),
                  )
                ],
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Notes Muraja'ah"),
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
