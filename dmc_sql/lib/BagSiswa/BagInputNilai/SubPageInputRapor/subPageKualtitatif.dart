import 'package:flutter/material.dart';

const List<String> listGrade = <String>['A', 'B', 'C'];

class SubPageKualitatif extends StatefulWidget {
  const SubPageKualitatif({super.key});

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
    return Container(
      height: 200,
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text("Nilai Kualitatif"), Text("Gerakan")],
            ),
            Row(
              children: [
                Expanded(
                    child: DropDowns(listGrade, _selectedItemKualitatif1,
                        (String? value) {
                  setState(() {
                    _selectedItemKualitatif1 = value!;
                  });
                })),
                Expanded(
                    child: DropDowns(listGrade, _selectedItemKualitatif2,
                        (String? value) {
                  setState(() {
                    _selectedItemKualitatif2 = value!;
                  });
                })),
                Expanded(
                    child: DropDowns(listGrade, _selectedItemKualitatif3,
                        (String? value) {
                  setState(() {
                    _selectedItemKualitatif3 = value!;
                  });
                })),
                Expanded(
                    child: DropDowns(listGrade, _selectedItemKualitatif4,
                        (String? value) {
                  setState(() {
                    _selectedItemKualitatif4 = value!;
                  });
                })),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Container DropDowns(
    List<String> list, String _selectedItem, ValueChanged<String?> onChanged) {
  return Container(
    // width: 100,
    margin: const EdgeInsets.only(top: 10, left: 10),
    padding: EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: 1.5,
      ),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        isExpanded: true,
        value: _selectedItem,
        icon: Icon(Icons.arrow_drop_down_sharp), // Reversed triangle icon
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.black, fontSize: 16),
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
