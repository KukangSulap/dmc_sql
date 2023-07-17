import 'package:dmc_sql/BagKeuangan/keuangan.dart';
import 'package:dmc_sql/BagSiswa/siswa.dart';
import 'package:dmc_sql/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
            onPressed: () {},
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
                  if (constraints.maxWidth < 600) {
                    return Column(
                      children: [
                        const SizedBox(height: 5),
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
                                    fontWeight: FontWeight.bold,
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
                        const SizedBox(height: 8.0),
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
                                widthFactor: 0.8,
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
                                          fontWeight: FontWeight.bold,
                                          fontSize: 42.0,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      Text(
                                        dummyText,
                                        maxLines: 7,
                                        style: GoogleFonts.mPlusRounded1c(
                                          fontSize: 20.0,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfileApp()),
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
