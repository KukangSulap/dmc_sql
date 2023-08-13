import 'package:dmc_sql/BagKeuangan/keuangan.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../AppBar/appBarAdmin.dart';
import '../Property/app_color.dart';
import '../Property/project_font.dart';

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
            padding: const EdgeInsets.only(top: 50.0, right: 200, left: 200),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16.0), // Added padding around the column
                  decoration: BoxDecoration(
                    color: Colors.white, // Added background color for the container
                    borderRadius: BorderRadius.circular(8), // Rounded corners for the container
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // Added a slight shadow effect
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          GlobalProjectFont(
                            text: 'Data Pengeluaran',
                            fontWeight: FontWeight.w800,
                            fontSize: 20.0,
                          ),
                          Spacer(),
                       ],
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        controller: _judulController,
                        decoration: InputDecoration(
                          labelText: 'Judul Pengeluaran',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom( // Set button style
                              backgroundColor: Colors.transparent, // Set the button color to transparent
                            ),
                            onPressed: () {},
                            child: const CustomButton(
                              title: 'Save',
                              widths: 140,
                              textColor: Colors.white,
                              fontWeight: FontWeight.normal,
                              backgroundColor: Color(0xffedc35f),
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                // Container Bawah
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
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
                      Row(
                        children: [
                          Expanded(
                            child: DropdownButtonFormField<String>(
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
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                labelText: 'Nama Pengeluaran',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _quantityController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Jumlah',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColor.blue, width: 1.5),
                              ),
                              child: TextField(
                                onTap: () async {
                                  DateTime? selectedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2012),
                                    lastDate: DateTime(2026),
                                  );

                                  if (selectedDate != null) {
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
                                  prefixIcon: Icon(Icons.calendar_today),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _notesController,
                              maxLines: 3,
                              decoration: InputDecoration(
                                labelText: 'Note',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: _pickImage,
                        child: const Text('Pick an Image'),
                      ),
                      if (_imagePath.isNotEmpty) ...[
                        const SizedBox(height: 16),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            _imagePath,
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Spacer(),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom( // Set button style
                              backgroundColor: Colors.transparent,
                              elevation: 0, // Remove button elevation
                            ),
                            onPressed: _saveData,
                            child: const CustomButton(
                              title: 'Save',
                              widths: 140,
                              textColor: Colors.white,
                              fontWeight: FontWeight.normal,
                              backgroundColor: Color(0xffedc35f),
                              height: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const GlobalProjectFont(
                  text: 'Data Pengeluaran',
                  fontWeight: FontWeight.w800,
                  fontSize: 20.0,
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
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color.fromARGB(163, 243, 243, 243),
                      ),
                      child: ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GlobalProjectFont(
                              text: 'Name: $name'
                            ),
                            GlobalProjectFont(
                              text: 'Category: $category'
                            ),
                            GlobalProjectFont(
                              text: 'Quantity: $quantity'
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom( // Set button style
                        backgroundColor: Colors.transparent, // Set the button color to transparent
                        elevation: 0, // Remove button elevation
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KeuanganPage(),
                          ),
                        );
                      },
                      child: const CustomButton(
                        title: 'Back',
                        widths: 140,
                        textColor: Colors.white,
                        fontWeight: FontWeight.normal,
                        backgroundColor: Color(0xffd66a3d),
                        height: 50,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom( // Set button style
                        backgroundColor: Colors.transparent, // Set the button color to transparent
                        elevation: 0, // Remove button elevation
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KeuanganPage(),
                          ),
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
                  ],
                ),
                const SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
