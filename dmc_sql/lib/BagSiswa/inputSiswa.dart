import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InputSiswaPage extends StatefulWidget {
  const InputSiswaPage({super.key});

  @override
  State<InputSiswaPage> createState() => _InputSiswaPageState();
}

class _InputSiswaPageState extends State<InputSiswaPage> {
  var selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              flex: 1,
              child: FractionallySizedBox(
                widthFactor: 0.18,
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
              flex: 4,
              child: FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5, color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Input Siswa",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        "ISI DATA SISWA",
                        style: TextStyle(
                            fontSize: 20
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 10.0),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black, width: 1.5),
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
                      const SizedBox(height: 10.0),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black, width: 1.5),
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
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.black, width: 1.5),
                              ),
                              child: DropdownButton<String>(
                                hint: Text("Semester"),
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
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.black, width: 1.5),
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
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.black, width: 1.5),
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
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            const Expanded(
              flex: 1,
              child: FractionallySizedBox(
                widthFactor: 0.18,
              ),
            ),
          ],
        )

      ),
    );

  }
}