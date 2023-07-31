import 'package:dmc_sql/BagKeuangan/keuangan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../AppBar/appBarAdmin.dart';

class InputPengeluaran extends StatefulWidget {
  InputPengeluaran({Key? key}) : super(key: key);

  @override
  _InputPengeluaranState createState() => _InputPengeluaranState();
}

class _InputPengeluaranState extends State<InputPengeluaran> {
  final List<String> titles = ['Title 1', 'Title 2', 'Title 3'];
  final List<String> subtitles = ['Subtitle 1', 'Subtitle 2', 'Subtitle 3'];
  final List<String> descriptions = [
    'RP. 100.000',
    'RP. 130.000',
    'RP. 110.000'
  ];

  String _selectedCategory = 'Reward';
  TextEditingController _judulController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _quantityController = TextEditingController();
  TextEditingController _notesController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  String _imagePath = '';

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "k"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0), // Added padding around the column
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Added background color for the container
                  borderRadius: BorderRadius.circular(8), // Rounded corners for the container
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // Added a slight shadow effect
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      'Data Pengeluaran',
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.mPlusRounded1c(
                        fontWeight: FontWeight.w800,
                        fontSize: 20.0,
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _judulController,
                      decoration: InputDecoration(
                        labelText: 'Judul Pengeluaran',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8), // Rounded corners for the text field
                        ),
                        filled: true, // Filled background for the text field
                        fillColor: Colors.white, // White background for the text field
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 237, 195, 95)),
                      ),
                      onPressed: () {},
                      child: const CustomButton(
                        title: "Save",
                        widths: 70,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              // Category Spinner
              Container(
                padding: const EdgeInsets.all(16.0), // Added padding around the column
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Added background color for the container
                  borderRadius: BorderRadius.circular(8), // Rounded corners for the container
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // Added a slight shadow effect
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    DropdownButtonFormField<String>(
                      value: _selectedCategory,
                      onChanged: (value) {
                        setState(() {
                          _selectedCategory = value!;
                        });
                      },
                      items: [
                        'Reward',
                        'Outing Class',
                        'Lesson Plan',
                        'Media Belajar',
                        'Fasilitas'
                      ]
                          .map((category) => DropdownMenuItem<String>(
                        value: category,
                        child: Text(category),
                      ))
                          .toList(),
                      decoration: InputDecoration(
                        labelText: 'Kategori',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8), // Rounded corners for the dropdown
                        ),
                        filled: true, // Filled background for the dropdown
                        fillColor: Colors.white, // White background for the dropdown
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Nama Pengeluaran',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8), // Rounded corners for the text field
                        ),
                        filled: true, // Filled background for the text field
                        fillColor: Colors.white, // White background for the text field
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _quantityController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Jumlah',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8), // Rounded corners for the text field
                        ),
                        filled: true, // Filled background for the text field
                        fillColor: Colors.white, // White background for the text field
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _notesController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: 'Note',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8), // Rounded corners for the text field
                        ),
                        filled: true, // Filled background for the text field
                        fillColor: Colors.white, // White background for the text field
                      ),
                    ),
                    const SizedBox(height: 16),
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
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey[400]!), // Added border for the InkWell
                        ),
                        child: Text(
                          _selectedDate != null
                              ? 'Selected Date: ${_selectedDate.toLocal()}'
                              : 'Select Date',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: _pickImage,
                      child: const Text('Pick an Image'),
                    ),
                    if (_imagePath.isNotEmpty) ...[
                      const SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8), // Rounded corners for the image
                        child: Image.network(
                          _imagePath,
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        backgroundColor:
                        MaterialStateProperty.all(const Color.fromARGB(255, 237, 195, 95)),
                      ),
                      onPressed: () {},
                      child: const CustomButton(
                        title: "Save",
                        widths: 70,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Data Pengeluaran',
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.mPlusRounded1c(
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey,
                    ),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(titles[index]),
                          Text(subtitles[index]),
                          Text(descriptions[index]),
                        ],
                      ),
                    ),
                  );
                },
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const KeuanganPage(),
                        ),
                      );
                    },
                    child: const Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const KeuanganPage(),
                        ),
                      );
                    },
                    child: const Text('Finish'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
