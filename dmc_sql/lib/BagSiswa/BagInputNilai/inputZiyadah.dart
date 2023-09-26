import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

List<String> listZiyadah = [];

class InputZiyadahPage extends StatefulWidget {
  const InputZiyadahPage({super.key, required this.namaSiswa, required this.nisSiswa});

  final String namaSiswa;
  final int nisSiswa;

  @override
  State<InputZiyadahPage> createState() => _InputZiyadahPageState();
}

class _InputZiyadahPageState extends State<InputZiyadahPage> {

  late final TextEditingController _namaCont =
      TextEditingController(text: widget.namaSiswa);
  late final TextEditingController _nisCont =
      TextEditingController(text: "${widget.nisSiswa}");
  final TextEditingController _tglCont = TextEditingController();

  final TextEditingController _contNilai = TextEditingController();
  final TextEditingController _contJuz = TextEditingController();
  final TextEditingController _contHalaman = TextEditingController();
  final TextEditingController _contNotes= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: CurrentPage.siswa),
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
                    child: TextField(
                      controller: _contNilai,
                      decoration: InputDecoration(hintText: 'Nilai'),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: _contJuz,
                      decoration: InputDecoration(hintText: 'JUZ'),
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
                    listZiyadah.add(_namaCont.text);
                    listZiyadah.add(_nisCont.text);
                    listZiyadah.add(_tglCont.text);
                    listZiyadah.add(_contNilai.text);
                    listZiyadah.add(_contJuz.text);
                    listZiyadah.add(_contHalaman.text);
                    listZiyadah.add(_contNotes.text);

                    print(
                        "nama: ${listZiyadah[0]}\ntgl: ${listZiyadah[2]}\notes: ${listZiyadah[6]}");
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
