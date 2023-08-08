import 'package:dmc_sql/BagKeuangan/keuangan.dart';
import 'package:dmc_sql/BagSiswa/siswa.dart';
import 'package:dmc_sql/BagProfil/profile.dart';
import 'package:dmc_sql/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'misc/listedText.dart';
import 'misc/placeCard.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SQL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SchoolProfilePage(),
    );
  }
}

class SchoolProfilePage extends StatefulWidget {
  @override
  _SchoolProfilePageState createState() => _SchoolProfilePageState();
}

class _SchoolProfilePageState extends State<SchoolProfilePage> {
  String dummyText =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id sem velit. Quisque fermentum eros non porta bibendum. Praesent pretium libero nec imperdiet semper. Nunc tellus augue, tempor ut laoreet ac, fringilla eu metus. Sed at mi sed augue pretium ullamcorper. Donec ultrices porttitor enim.';

  final List<String> _placeNames = ['pipo', 'pipo', 'pop','pipo'];
  final List<String> pathGambarYgy = [
    'https://cdn.mos.cms.futurecdn.net/4aWYcB9tGoGe5gHo4tiffU.jpg',
    'https://cdn.mos.cms.futurecdn.net/4aWYcB9tGoGe5gHo4tiffU.jpg',
    'https://cdn.mos.cms.futurecdn.net/4aWYcB9tGoGe5gHo4tiffU.jpg',
    'https://cdn.mos.cms.futurecdn.net/4aWYcB9tGoGe5gHo4tiffU.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.burn),
          color: Colors.black, // Set the icon color to black
          onPressed: () {
            // Handle the button press event
          },
        ),
        title: const Text(
          "<- ntar ganti jadi logo",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text(
              'Pendidikan',
              style: TextStyle(
                color: Colors.black, // Set the text color to black
              ),
            ),
          ),
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('----'),
          ),
          TextButton(
            style: style,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Login())
              );
            },
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                // fontFamily:
              ),
            ),
          ),
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('.'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          constraints: const BoxConstraints(maxWidth: double.infinity),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 950) {
                    return Column(
                      children: [
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(10)
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(10),
                              ),
                              child: Image.network(
                                'https://images.squarespace-cdn.com/content/v1/51cdafc4e4b09eb676a64e68/1618602622635-4LFSCPXPMK8MOR64BC2N/cars_trip.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        FractionallySizedBox(
                          widthFactor: 0.8,
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Smart Quran Learning',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.mPlusRounded1c(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 35.0,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                Text(
                                  dummyText,
                                  maxLines: 7,
                                  style: GoogleFonts.mPlusRounded1c(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    //---------------------YG GEDE DIBAWAH-------------------
                    return Column(
                      children: [
                        const SizedBox(height: 40),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: FractionallySizedBox(
                                widthFactor: 0.9,
                                child: Container(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Smart Quran Learning',
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.mPlusRounded1c(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 56.0,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      Text(
                                        dummyText,
                                        maxLines: 7,
                                        style: GoogleFonts.mPlusRounded1c(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16.0),
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8.0),
                                    bottomLeft: Radius.circular(8.0),
                                  ),
                                  child: Image.network(
                                    'https://images.squarespace-cdn.com/content/v1/51cdafc4e4b09eb676a64e68/1618602622635-4LFSCPXPMK8MOR64BC2N/cars_trip.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }
                },
              ),
              const SizedBox(height: 16.0),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Visi SQL',
                              style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w800,
                                fontSize: 32.0,
                                color: const Color.fromARGB(200, 47, 29, 116)
                              ),
                            ),
                            const SizedBox(height: 20),
                            ListedText(
                              text: "Menjadi penyedia solusi teknologi terdepan yang mengubah cara orang bekerja dan hidup.\n"
                                  "Menjadi pemimpin global dalam inovasi dan keberlanjutan dalam industri energi terbarukan.\n"
                                  "Mengubah dunia melalui teknologi yang memungkinkan konektivitas dan akses informasi global.\n"
                                  "Mewujudkan masa depan yang berkelanjutan dengan menyediakan produk ramah lingkungan dan solusi hijau.\n"
                                  "Menginspirasi dan meningkatkan kualitas hidup melalui produk-produk kesehatan yang inovatif.",
                              fontSize: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 50.0,
                      indent: 20.0,
                      endIndent: 20.0,
                    ),
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Misi SQL',
                              style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w800,
                                fontSize: 32.0,
                                  color: const Color.fromARGB(200, 47, 29, 116)
                              ),
                            ),
                            const SizedBox(height: 20),
                            ListedText(
                              text: "Menjadi penyedia solusi teknologi terdepan yang mengubah cara orang bekerja dan hidup.\n"
                                  "Menjadi pemimpin global dalam inovasi dan keberlanjutan dalam industri energi terbarukan.\n"
                                  "Mengubah dunia melalui teknologi yang memungkinkan konektivitas dan akses informasi global.\n"
                                  "Mewujudkan masa depan yang berkelanjutan dengan menyediakan produk ramah lingkungan dan solusi hijau.\n"
                                  "Menginspirasi dan meningkatkan kualitas hidup melalui produk-produk kesehatan yang inovatif.",
                              fontSize: 16.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                color: const Color(0xFFEDC35F),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Foto Kegiatan",
                              style: GoogleFonts.mPlusRounded1c(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                              ),
                            ),
                            Text(
                              'Dokumentasi Kegiatan',
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w800,
                                fontSize: 32.0, color: Colors.white
                              ),
                            ),
                            Text(
                              'SQL',
                              style: GoogleFonts.mPlusRounded1c(
                                fontWeight: FontWeight.w800,
                                fontSize: 32.0, color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          child: Image.network(
                            'https://cdn.mos.cms.futurecdn.net/4aWYcB9tGoGe5gHo4tiffU.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: SizedBox(
                          height: 220,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: _placeNames.map((name) {
                              final index = _placeNames.indexOf(name);
                              return Padding(
                                padding: const EdgeInsets.only(left: 10.0, right: 5.0),
                                child: GestureDetector(
                                  child: PlaceCard(
                                    name: name,
                                    assetPath: pathGambarYgy[index],
                                  ),
                                  onTap: () {},
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage()),
                      );
                    },
                    child: const Text('Profile'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const KeuanganPage()),
                      );
                    },
                    child: const Text('Keuangan'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SiswaPage()),
                      );
                    },
                    child: const Text('Siswa'),
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