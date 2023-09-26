import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagSiswa/siswa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../BagKeuangan/keuangan.dart';
import '../Property/app_color.dart';
import '../Property/project_font.dart';

void main() {
  runApp(const MaterialApp(
    home: InputSiswaPage(),
  ));
}

class InputSiswaPage extends StatefulWidget {
  const InputSiswaPage({super.key});

  @override
  State<InputSiswaPage> createState() => _InputSiswaPageState();
}

class _InputSiswaPageState extends State<InputSiswaPage> {
  var selectedOption;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const AppBarAdmin(page: CurrentPage.siswa),
      body: Padding(
        padding:  EdgeInsets.only(top: screenWidth >= 600 ? 50 : 5,
            right: screenWidth >= 600 ? 200 : 5,
            left: screenWidth >= 600 ? 200 : 5,
            bottom: screenWidth >= 600 ? 50 : 5),
        child: Column(
          children: [
            Expanded(
              child: Expanded(
                flex: 4,
                child: FractionallySizedBox(
                  widthFactor: 1,
                  child: Container(
                    padding: EdgeInsets.all(screenWidth >= 600 ? 20 : 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(138, 149, 158, 0.20),
                          offset: Offset(0, 30),
                          blurRadius: 60,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              const GlobalProjectFont(
                                text: 'Input Siswa',
                                fontWeight: FontWeight.w800,
                                fontSize: 20.0,
                                color: AppColor.blue,
                              ),
                              SizedBox(height: screenWidth >= 600 ? 10 : 5),
                              const Text(
                                "ISI DATA SISWA",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: AppColor.blue, width: 1.5),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Nama siswa',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.0,
                                vertical: 12.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenWidth >= 600 ? 20 : 5),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: AppColor.blue, width: 1.5),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Nomor Induk Siswa',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 14.0,
                                vertical: 12.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenWidth >= 600 ? 20 : 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(color: AppColor.blue, width: 1.5),
                                ),
                                child: DropdownButton<String>(
                                  hint: const Text("Semester"),
                                  isExpanded: true,
                                  value: selectedOption,
                                  items: const [
                                    DropdownMenuItem(
                                      value: 'Ganjil',
                                      child: Text('Ganjil'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Genap',
                                      child: Text('Genap'),
                                    ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth >= 600 ? 20 : 5),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(color: AppColor.blue, width: 1.5),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Kelas',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 14.0,
                                      vertical: 12.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth >= 600 ? 20 : 5),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(color: AppColor.blue, width: 1.5),
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Tahun Ajaran',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 14.0,
                                      vertical: 12.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenWidth >= 600 ? 20 : 5),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent, // Set the button color to transparent
                              elevation: 0,
                              shadowColor: Colors. transparent, // Remove button elevation
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SiswaPage()),
                              );
                            },
                            child: const CustomButton(
                              title: 'Finish',
                              widths: 140,
                              textColor: Colors.white,
                              fontWeight: FontWeight.normal,
                              backgroundColor: Color(0xffedc35f),
                              height: 50,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }

}