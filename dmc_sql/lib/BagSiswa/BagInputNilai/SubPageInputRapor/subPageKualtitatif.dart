import 'package:dmc_sql/Property/app_color.dart';
import 'package:flutter/material.dart';

import '../../../BagKeuangan/keuangan.dart';
import '../../../Property/project_font.dart';

const List<String> listGrade = <String>['A', 'B', 'C'];

class SubPageKualitatif extends StatefulWidget {
  const SubPageKualitatif(
      {super.key,
        required this.nextPage,
        required this.prevPage,
        required this.insertData});

  final VoidCallback nextPage;
  final VoidCallback prevPage;
  final List<dynamic> insertData;

  @override
  State<SubPageKualitatif> createState() => _SubPageKualitatifState();
}

class _SubPageKualitatifState extends State<SubPageKualitatif> {
  String _selectedItemKualitatif1 = listGrade.first;
  String _selectedItemKualitatif2 = listGrade.first;
  String _selectedItemKualitatif3 = listGrade.first;
  String _selectedItemKualitatif4 = listGrade.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: SizedBox(
            height: 205,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: const [
                      GlobalProjectFont(
                        text: 'Nilai Kualitatif',
                        fontWeight: FontWeight.w800,
                        fontSize: 22.0,
                        color: AppColor.blue,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: SizedBox(
                            child: Column(
                              children: [
                                const GlobalProjectFont(
                                  text: 'Pengagungan \nTerhadap Ilmi',
                                  fontSize: 16.0,
                                ),
                                DropDowns(listGrade, _selectedItemKualitatif1,
                                        (String? value) {
                                      setState(() {
                                        _selectedItemKualitatif1 = value!;
                                      });
                                    }),
                              ],
                            ),
                          )
                      ),
                      Expanded(
                          child: SizedBox(
                            child: Column(
                              children: [
                                const GlobalProjectFont(
                                  text: 'Tanggung jawab\ndan kemandirian',
                                  fontSize: 16.0,
                                ),
                                DropDowns(listGrade, _selectedItemKualitatif1,
                                        (String? value) {
                                      setState(() {
                                        _selectedItemKualitatif1 = value!;
                                      });
                                    }),
                              ],
                            ),
                          )
                      ),
                      Expanded(
                          child: SizedBox(
                            child: Column(
                              children: [
                                const GlobalProjectFont(
                                  text: '\nKejujuran',
                                  fontSize: 16.0,
                                ),
                                DropDowns(listGrade, _selectedItemKualitatif1,
                                        (String? value) {
                                      setState(() {
                                        _selectedItemKualitatif1 = value!;
                                      });
                                    }),
                              ],
                            ),
                          )
                      ),
                      Expanded(
                          child: SizedBox(
                            child: Column(
                              children: [
                                const GlobalProjectFont(
                                  text: '\nPartisipasi dan manfaat',
                                  fontSize: 16.0,
                                ),
                                DropDowns(listGrade, _selectedItemKualitatif1,
                                        (String? value) {
                                      setState(() {
                                        _selectedItemKualitatif1 = value!;
                                      });
                                    }),
                              ],
                            ),
                          )
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom( // Set button style
                backgroundColor: Colors.transparent, // Set the button color to transparent
                elevation: 0, shadowColor: Colors. transparent,// Remove button elevation
              ),
                onPressed: () {
                  widget.prevPage();
                },
              child: const CustomButtonril(
                title: 'Cancel',
                widths: 73,
                textColor: Colors.white,
                fontWeight: FontWeight.normal,
                backgroundColor: AppColor.orange,
                height: 40,
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom( // Set button style
                  backgroundColor: Colors.transparent, // Set the button color to transparent
                  elevation: 0, shadowColor: Colors. transparent,// Remove button elevation
                ),
                onPressed: () {
                  if (widget.insertData[0].length < 3) {
                    widget.insertData[0].addAll([
                      _selectedItemKualitatif1,
                      _selectedItemKualitatif2,
                      _selectedItemKualitatif3,
                      _selectedItemKualitatif4,
                    ]);
                  } else {
                    widget.insertData[0].removeRange(0, 4);
                    widget.insertData[0].addAll([
                      _selectedItemKualitatif1,
                      _selectedItemKualitatif2,
                      _selectedItemKualitatif3,
                      _selectedItemKualitatif4,
                    ]);
                  }
                  widget.nextPage();
                },
                child: const CustomButtonril(
                  title: 'next',
                  widths: 73,
                  textColor: Colors.white,
                  fontWeight: FontWeight.normal,
                  backgroundColor: AppColor.yellow,
                  height: 40,
                ),
            )
          ],
        )
      ],
    );
  }
}

Container DropDowns(
    List<String> list, String _selectedItem, ValueChanged<String?> onChanged) {
  return Container(
    // width: 100,
    margin: const EdgeInsets.only(top: 10, left: 10),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      border: Border.all(
        color: AppColor.blue,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        isExpanded: true,
        value: _selectedItem,
        icon: const Icon(Icons.arrow_drop_down_sharp),
        // Reversed triangle icon
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.black, fontSize: 16),
        onChanged: onChanged,
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    ),
  );
}
