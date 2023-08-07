import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

List<String> listMurajaah = [];

class InputMurajaahPage extends StatefulWidget {
  const InputMurajaahPage(
      {super.key, required this.namaSiswa, required this.nisSiswa});

  final String namaSiswa;
  final String nisSiswa;

  @override
  State<InputMurajaahPage> createState() => _InputMurajaahPageState();
}

class _InputMurajaahPageState extends State<InputMurajaahPage> {
  late final TextEditingController _namaCont =
      TextEditingController(text: widget.namaSiswa);
  late final TextEditingController _nisCont =
      TextEditingController(text: widget.nisSiswa);
  final TextEditingController _tglCont = TextEditingController();

  final TextEditingController _contNilai = TextEditingController();
  final TextEditingController _contHalaman = TextEditingController();
  final TextEditingController _contNotes = TextEditingController();

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
            TextField(
              controller: _namaCont,
              readOnly: true,
              decoration: InputDecoration(hintText: 'Nama Siswa'),
            ),
            TextField(
              controller: _nisCont,
              readOnly: true,
              decoration: InputDecoration(hintText: 'Nomor Induk Siswa'),
            ),
            TextField(
              onTap: () async {
                DateTime? selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2012),
                  lastDate: DateTime(2026),
                );

                if (selectedDate != null) {
                  // Format the selected date and set it as the value of the TextField
                  final formattedDate =
                      DateFormat('dd/MMMM/yyyy').format(selectedDate);
                  setState(() {
                    _tglCont.text = formattedDate;
                  });
                }
              },
              readOnly: true,
              controller: _tglCont,
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
                    child: TextField(
                      controller: _contNilai,
                      decoration: InputDecoration(hintText: 'Nilai'),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _contHalaman,
                      decoration: InputDecoration(hintText: 'Halaman'),
                    ),
                  )
                ],
              ),
            ),
            TextField(
              controller: _contNotes,
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
                    listMurajaah.add(_namaCont.text);
                    listMurajaah.add(_nisCont.text);
                    listMurajaah.add(_tglCont.text);
                    listMurajaah.add(_contNilai.text);
                    listMurajaah.add(_contHalaman.text);
                    listMurajaah.add(_contNotes.text);

                    print(
                        "nama: ${listMurajaah[0]}\ntgl: ${listMurajaah[2]}\notes: ${listMurajaah[5]}");
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
