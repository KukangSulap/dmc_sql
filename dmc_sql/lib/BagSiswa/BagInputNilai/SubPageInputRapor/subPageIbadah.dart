import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

const List<String> listGrade = <String>['A', 'B', 'C'];

class SubPageIbadah extends StatefulWidget {
  const SubPageIbadah({super.key});

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
    return Container(
      height: 200,
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Text("Nilai Ibadah"),
                  Text("Gerakan"),
                  Row(
                    children: [
                      Expanded(
                          child: DropDowns(listGrade, _selectedItemIbadah1,
                              (String? value) {
                        setState(() {
                          _selectedItemIbadah1 = value!;
                        });
                      })),
                      Expanded(
                          child: DropDowns(listGrade, _selectedItemIbadah2,
                              (String? value) {
                        setState(() {
                          _selectedItemIbadah2 = value!;
                        });
                      })),
                    ],
                  )
                ],
              ),
            ),
            const VerticalDivider(),
            Expanded(
                child: Column(
              children: [
                Text(""),
                Text("Bacaan"),
                Row(
                  children: [
                    Expanded(
                        child: DropDowns(listGrade, _selectedItemIbadah3,
                            (String? value) {
                      setState(() {
                        _selectedItemIbadah3 = value!;
                      });
                    })),
                    Expanded(
                        child: DropDowns(listGrade, _selectedItemIbadah4,
                            (String? value) {
                      setState(() {
                        _selectedItemIbadah4 = value!;
                      });
                    })),
                  ],
                )
              ],
            ))
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