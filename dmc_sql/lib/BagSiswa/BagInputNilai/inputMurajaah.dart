import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import '../../BagKeuangan/keuangan.dart';
import '../../Property/app_color.dart';
import '../../Property/project_font.dart';

List<String> listMurajaah = [];

class InputMurajaahPage extends StatefulWidget {
  const InputMurajaahPage(
      {super.key, required this.namaSiswa, required this.nisSiswa});

  final String namaSiswa;
  final int nisSiswa;

  @override
  State<InputMurajaahPage> createState() => _InputMurajaahPageState();
}

class _InputMurajaahPageState extends State<InputMurajaahPage> {
  late final TextEditingController _namaCont =
      TextEditingController(text: widget.namaSiswa);
  late final TextEditingController _nisCont =
      TextEditingController(text: "${widget.nisSiswa}");
  final TextEditingController _tglCont = TextEditingController();

  final TextEditingController _contNilai = TextEditingController();
  final TextEditingController _contHalaman = TextEditingController();
  final TextEditingController _contNotes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const AppBarAdmin(page: CurrentPage.siswa),
      backgroundColor: AppColor.bg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenWidth >= 600 ? 50 : 5,
                  right: screenWidth >= 600 ? 200 : 5,
                  left: screenWidth >= 600 ? 200 : 5,
                  bottom: screenWidth >= 600 ? 50 : 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(screenWidth >= 600 ? 20 : 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
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
                        SizedBox(height: screenWidth >= 600 ? 10 : 5),
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
                        SizedBox(height: screenWidth >= 600 ? 10 : 5),
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
                                hintText: "Tanggal Muraja'ah",
                                prefixIcon: Icon(Icons.calendar_today)),
                          ),
                        ),
                         SizedBox(height: screenWidth >= 600 ? 16 : 10,),
                        const GlobalProjectFont(
                          text: "Nilai Muraja'ah",
                          fontWeight: FontWeight.w800,
                          fontSize: 20.0,
                          color: AppColor.blue,
                        ),
                        SizedBox(height: screenWidth >= 600 ? 10 : 5),
                        Container(
                          width: double.infinity,
                          child: Row(
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
                              SizedBox(width: screenWidth >= 600 ? 10 : 5,),
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
                        ),
                        SizedBox(height: screenWidth >= 600 ? 10 : 5,),
                        Container(
                          padding: const EdgeInsets.only(top: 3, left: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColor.blue, width: 1.5),
                          ),
                          child: TextField(
                            controller: _contNotes,
                            decoration: const InputDecoration(hintText: "Notes Muraja'ah"),
                            maxLines: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenWidth >= 600 ? 20 : 14,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      ElevatedButton(
                        style: ElevatedButton.styleFrom( // Set button style
                          backgroundColor: Colors.transparent, // Set the button color to transparent
                          shadowColor: Colors.transparent,
                          elevation: 0, // Remove button elevation
                        ),
                        onPressed: () {
                          listMurajaah.add(_namaCont.text);
                          listMurajaah.add(_nisCont.text);
                          listMurajaah.add(_tglCont.text);
                          listMurajaah.add(_contNilai.text);
                          listMurajaah.add(_contHalaman.text);
                          listMurajaah.add(_contNotes.text);

                          print(
                              "nama: ${listMurajaah[0]}\ntgl: ${listMurajaah[2]}\notes: ${listMurajaah[5]}");
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
