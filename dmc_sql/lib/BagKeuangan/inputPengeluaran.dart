import 'package:dmc_sql/BagKeuangan/keuangan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../AppBar/appBarAdmin.dart';

class InputPengeluaran extends StatefulWidget {
  InputPengeluaran({Key? key}) : super(key: key);

  @override
  _InputPengeluaranState createState() => _InputPengeluaranState();
}

class _InputPengeluaranState extends State<InputPengeluaran> {
  String _selectedCategory = 'Reward';
  final TextEditingController _judulController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  final TextEditingController _selectedDate = TextEditingController();
  String _imagePath = '';
  List<String> listViewData = [];

  Future<void> _pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
    }
  }

  void _saveData() {
    String title = _judulController.text;
    String name = _nameController.text;
    String quantity = _quantityController.text;
    String notes = _notesController.text;
    String date = _selectedDate.text;

    // Assuming you have a way to get the selected category, let's call it _selectedCategoryValue
    String category = _selectedCategory;

    String newData = '$title - $name - $quantity - $notes - $date - $category';
    setState(() {
      listViewData.add(newData);
    });
    print(listViewData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "k"),
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: double.infinity),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Container Atas
                Container(
                  padding: const EdgeInsets.all(
                      16.0), // Added padding around the column
                  decoration: BoxDecoration(
                    color: Colors
                        .grey[200], // Added background color for the container
                    borderRadius: BorderRadius.circular(
                        8), // Rounded corners for the container
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 3), // Added a slight shadow effect
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
                            borderRadius: BorderRadius.circular(
                                8), // Rounded corners for the text field
                          ),
                          filled: true, // Filled background for the text field
                          fillColor: Colors
                              .white, // White background for the text field
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 237, 195, 95)),
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
                // Container Bawah
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
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
                            borderRadius: BorderRadius.circular(
                                8), // Rounded corners for the dropdown
                          ),
                          filled: true, // Filled background for the dropdown
                          fillColor:
                              Colors.white, // White background for the dropdown
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          labelText: 'Nama Pengeluaran',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                8), // Rounded corners for the text field
                          ),
                          filled: true, // Filled background for the text field
                          fillColor: Colors
                              .white, // White background for the text field
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _quantityController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Jumlah',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                8), // Rounded corners for the text field
                          ),
                          filled: true, // Filled background for the text field
                          fillColor: Colors
                              .white, // White background for the text field
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _notesController,
                        maxLines: 3,
                        decoration: InputDecoration(
                          labelText: 'Note',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                                8), // Rounded corners for the text field
                          ),
                          filled: true, // Filled background for the text field
                          fillColor: Colors
                              .white, // White background for the text field
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
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
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _pickImage,
                        child: const Text('Pick an Image'),
                      ),
                      if (_imagePath.isNotEmpty) ...[
                        const SizedBox(height: 16),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                              8), // Rounded corners for the image
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
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 237, 195, 95)),
                        ),
                        onPressed: _saveData,
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
                const SizedBox(height: 16),
                //Listview yang sudah di input
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listViewData.length,
                  itemBuilder: (context, index) {
                    String data = listViewData[index];
                    List<String> parts = data.split(' - ');

                    String name = parts[1];
                    String quantity = parts[2];
                    String category = parts[5];

                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color.fromARGB(163, 243, 243, 243),
                      ),
                      child: ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Name: $name'),
                            Text('Category: $category'),
                            Text('Quantity: $quantity'),
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
      ),
    );
  }
}
