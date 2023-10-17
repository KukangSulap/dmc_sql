import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../../../BagKeuangan/keuangan.dart';
import '../../../Property/app_color.dart';
import '../../../Property/project_font.dart';

const List<String> listGrade = <String>['A', 'B', 'C'];

class SubPageIbadah extends StatefulWidget {
  const SubPageIbadah({super.key, required this.nextPage, required this.prevPage, required this.insertData});

  final VoidCallback nextPage;
  final VoidCallback prevPage;
  final List<dynamic> insertData;


  @override
  State<SubPageIbadah> createState() => _SubPageIbadahState();
}

class _SubPageIbadahState extends State<SubPageIbadah> {
  String _selectedItemIbadah1 = listGrade.first;
  String _selectedItemIbadah2 = listGrade.first;
  String _selectedItemIbadah3 = listGrade.first;
  String _selectedItemIbadah4 = listGrade.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          child: SizedBox(
            height: 205,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const GlobalProjectFont(
                          text: 'Nilai Ibadah',
                          fontWeight: FontWeight.w800,
                          fontSize: 22.0,
                          color: AppColor.blue,
                        ),
                        const Spacer(),
                        const GlobalProjectFont(
                          text: 'GERAKAN',
                          fontSize: 18.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: SizedBox(
                                  child: Column(
                                    children: [
                                      const GlobalProjectFont(
                                        text: 'Tata Cara Wudhu',
                                        fontSize: 16.0,
                                      ),
                                      DropDowns(listGrade, _selectedItemIbadah1,
                                              (String? value) {
                                            setState(() {
                                              _selectedItemIbadah1 = value!;
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
                                        text: 'Tata Cara Sholat',
                                        fontSize: 16.0,
                                      ),
                                      DropDowns(listGrade, _selectedItemIbadah2,
                                              (String? value) {
                                            setState(() {
                                              _selectedItemIbadah2 = value!;
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
                const VerticalDivider(),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const GlobalProjectFont(
                            text: '.',
                            fontWeight: FontWeight.w800,
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                          const Spacer(),
                          const GlobalProjectFont(
                            text: 'BACAAN',
                            fontSize: 18,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: SizedBox(
                                    child: Column(
                                      children: [
                                        const GlobalProjectFont(
                                          text: 'Tata Cara Wudhu',
                                          fontSize: 16.0,
                                        ),
                                        DropDowns(listGrade, _selectedItemIbadah3,
                                                (String? value) {
                                              setState(() {
                                                _selectedItemIbadah3 = value!;
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
                                          text: 'Tata Cara Sholat',
                                          fontSize: 16.0,
                                        ),
                                        DropDowns(listGrade, _selectedItemIbadah4,
                                                (String? value) {
                                              setState(() {
                                                _selectedItemIbadah4 = value!;
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
                    )
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
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
                child: const Icon(
                  Icons.arrow_back,
                  size: 20,
                  color: AppColor.orange,
                )
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom( // Set button style
                backgroundColor: Colors.transparent, // Set the button color to transparent
                elevation: 0, shadowColor: Colors. transparent,// Remove button elevation
              ),
              onPressed: () {
                if (widget.insertData[1].length < 3) {
                  widget.insertData[1].addAll([
                    _selectedItemIbadah1,
                    _selectedItemIbadah2,
                    _selectedItemIbadah3,
                    _selectedItemIbadah4,
                  ]);
                } else {
                  widget.insertData[1].removeRange(0, 4);
                  widget.insertData[1].addAll([
                    _selectedItemIbadah1,
                    _selectedItemIbadah2,
                    _selectedItemIbadah3,
                    _selectedItemIbadah4,
                  ]);
                }
                widget.nextPage();
              },
              child: const CustomButtonril(
                title: 'Next',
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
        icon: const Icon(Icons.arrow_drop_down_sharp), // Reversed triangle icon
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
