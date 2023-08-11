import 'package:dmc_sql/BagKeuangan/keuangan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../AppBar/appBarAdmin.dart';
import '../Property/app_color.dart';
import '../Property/project_font.dart';

class InputPemasukan extends StatefulWidget {
  const InputPemasukan({super.key});

  @override
  _InputPemasukanState createState() => _InputPemasukanState();
}

class _InputPemasukanState extends State<InputPemasukan> {
  List<Map<String, dynamic>> inputListPemasukan = [];
  String _selectedCategory = 'SPP';
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nisController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  final TextEditingController _selectedDate = TextEditingController();
  String _imagePath = '';

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
    }
  }

  void _saveAndPrintData() {
    Map<String, dynamic> inputData = {
      'Category': _selectedCategory,
      'Name': _nameController.text,
      'NIS': _nisController.text,
      'Date': _selectedDate.text,
      'Jumlah': _quantityController.text,
      'Notes': _notesController.text,
      'ImagePath': _imagePath,
    };

    inputListPemasukan.add(inputData);

    print('Input Data:');
    inputListPemasukan.forEach((data) {
      print('Category: ${data['Category']}');
      print('Name: ${data['Name']}');
      print('NIS: ${data['NIS']}');
      print('Date: ${data['Date']}');
      print('Jumlah: ${data['Jumlah']}');
      print('Notes: ${data['Notes']}');
      print('ImagePath: ${data['ImagePath']}');
      print('--------------------------');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "k"
      ),
      backgroundColor: AppColor.bg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, right: 200, left: 200),
              child: Container(
                padding: const EdgeInsets.all(30.0),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const GlobalProjectFont(
                      text: 'Data Pemasukan',
                      fontWeight: FontWeight.w800,
                      fontSize: 20.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: DropdownButtonFormField<String>(
                            value: _selectedCategory,
                            onChanged: (value) {
                              setState(() {
                                _selectedCategory = value!;
                              });
                            },
                            items: ['SPP', 'Donasi']
                                .map((category) => DropdownMenuItem<String>(
                              value: category,
                              child: Text(category),
                            ))
                                .toList(),
                            decoration: const InputDecoration(
                              labelText: 'Kategori',
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            controller: _nameController,
                            decoration: const InputDecoration(
                              labelText: 'Name',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            controller: _nisController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'NIS',
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          flex: 2,
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
                                  _selectedDate.text = formattedDate;
                                });
                              }
                            },
                            readOnly: true,
                            controller: _selectedDate,
                            decoration: const InputDecoration(
                                hintText: "Tanggal",
                                prefixIcon: Icon(Icons.calendar_today)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _quantityController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Jumlah',
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextFormField(
                            controller: _notesController,
                            maxLines: 3,
                            decoration: const InputDecoration(
                              labelText: 'Notes',
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: _pickImage,
                          child: const Text('Pick an Image'),
                        ),
                        if (_imagePath.isNotEmpty) ...[
                          const SizedBox(width: 16),
                          Image.network(
                            _imagePath,
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 200, left: 200),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const KeuanganPage()),
                      );
                    },
                    child: const Text('Back'),
                  ),
                  SizedBox(width: 200,),
                  ElevatedButton(
                    onPressed: () {
                      _saveAndPrintData();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const KeuanganPage()),
                      );
                    },
                    child: const Text('Finish'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: InputPemasukan(),
  ));
}
