import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import '../../BagKeuangan/keuangan.dart';
import '../../Property/app_color.dart';
import '../../Property/project_font.dart';

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
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const AppBarAdmin(page: CurrentPage.siswa),
      backgroundColor: AppColor.bg,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenWidth >= 600 ? 50 : 5,
                    right: screenWidth >= 600 ? 200 : 5,
                    left: screenWidth >= 600 ? 200 : 5),
                child: Container(
                  padding: const EdgeInsets.all(30.0), // Add some padding to the container
                  decoration: BoxDecoration(
                    color: Colors.white, // Set a white background color
                    borderRadius: BorderRadius.circular(10.0), // Add rounded corners
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const GlobalProjectFont(
                        text: 'Data Siswa',
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0,
                        color: AppColor.blue,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.only(top: 3, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.blue, width: 1.5),
                        ),
                        child: TextField(
                          controller: _namaCont,
                          readOnly: true,
                          decoration: const InputDecoration(hintText: 'Nama Siswa'),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.only(top: 3, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.blue, width: 1.5),
                        ),
                        child: TextField(
                          controller: _nisCont,
                          readOnly: true,
                          decoration: const InputDecoration(hintText: 'Nomor Induk Siswa'),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.only(top: 3, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.blue, width: 1.5),
                        ),
                        child: TextField(
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
                          decoration: const InputDecoration(
                              hintText: "Tanggal Ziyadah",
                              prefixIcon: Icon(Icons.calendar_today)),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const GlobalProjectFont(
                        text: 'Nilai Ziyadah',
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0,
                        color: AppColor.blue,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(top: 3, left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColor.blue, width: 1.5),
                              ),
                              child: TextField(
                                controller: _contNilai,
                                decoration: const InputDecoration(hintText: 'Nilai'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(top: 3, left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColor.blue, width: 1.5),
                              ),
                              child: TextField(
                                controller: _contJuz,
                                decoration: const InputDecoration(hintText: 'JUZ'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(top: 3, left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColor.blue, width: 1.5),
                              ),
                              child: TextField(
                                controller: _contHalaman,
                                decoration: const InputDecoration(hintText: 'Halaman'),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.only(top: 3, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColor.blue, width: 1.5),
                        ),
                        child: TextField(
                          controller: _contNotes,
                          decoration: const InputDecoration(hintText: "Notes Ziyadah"),
                          maxLines: 5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Padding(
                padding: const EdgeInsets.only(right: 200, left: 200),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom( // Set button style
                        backgroundColor: Colors.transparent, // Set the button color to transparent
                        shadowColor: Colors.transparent,
                        elevation: 0, // Remove button elevation
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const CustomButtonril(
                        title: 'Back',
                        widths: 140,
                        textColor: Colors.white,
                        fontWeight: FontWeight.normal,
                        backgroundColor: Color(0xffd66a3d),
                        height: 50,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom( // Set button style
                          backgroundColor: Colors.transparent, // Set the button color to transparent
                          shadowColor: Colors.transparent,
                          elevation: 0, // Remove button elevation
                        ),
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
                        Navigator.pop(context);
                      },
                      child: const CustomButtonril(
                        title: 'Finish',
                        widths: 140,
                        textColor: Colors.white,
                        fontWeight: FontWeight.normal,
                        backgroundColor: AppColor.blue,
                        height: 50,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
