import 'package:dmc_sql/BagKeuangan/keuangan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:image_picker/image_picker.dart';

import '../AppBar/appBarAdmin.dart';

class InputKeuangan extends StatefulWidget {
  const InputKeuangan({super.key});

  @override
  _InputKeuanganState createState() => _InputKeuanganState();
}

class _InputKeuanganState extends State<InputKeuangan> {
  String _selectedCategory = 'SPP';
  TextEditingController _nameController = TextEditingController();
  TextEditingController _nisController = TextEditingController();
  TextEditingController _quantityController = TextEditingController();
  TextEditingController _notesController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  String _imagePath = '';

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "k"
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category Spinner
              DropdownButtonFormField<String>(
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
                  labelText: 'Category',
                ),
              ),
              const SizedBox(height: 16),

              // Name TextField
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              const SizedBox(height: 16),

              // NIS TextField
              TextFormField(
                controller: _nisController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'NIS',
                ),
              ),
              const SizedBox(height: 16),

              // Quantity TextField
              TextFormField(
                controller: _quantityController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Quantity',
                ),
              ),
              const SizedBox(height: 16),

              // Notes TextField
              TextFormField(
                controller: _notesController,
                maxLines: 3,
                decoration: const InputDecoration(
                  labelText: 'Notes',
                ),
              ),
              const SizedBox(height: 16),

              // Date Picker
              InkWell(
                onTap: () {
                  DatePicker.showDatePicker(
                    context,
                    showTitleActions: true,
                    onConfirm: (date) {
                      setState(() {
                        _selectedDate = date;
                      });
                    },
                    currentTime: DateTime.now(),
                    locale: LocaleType.en,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    _selectedDate != null
                        ? 'Selected Date: ${_selectedDate.toLocal()}'
                        : 'Select Date',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Image Picker
              ElevatedButton(
                onPressed: _pickImage,
                child: const Text('Pick an Image'),
              ),
              if (_imagePath.isNotEmpty) ...[
                const SizedBox(height: 16),
                Image.network(
                  _imagePath,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ],
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KeuanganPage()),
                  );
                },
                child: const Text('Back'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const KeuanganPage()),
                  );
                },
                child: const Text('Finish'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: InputKeuangan(),
  ));
}
