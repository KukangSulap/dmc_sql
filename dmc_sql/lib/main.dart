import 'package:dmc_sql/BagKeuangan/keuangan.dart';
import 'package:dmc_sql/BagSiswa/siswa.dart';
import 'package:dmc_sql/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  String schoolName = 'School Name';
  String address = '123 Main Street, City, State';
  String about =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';

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
              'Profil SQL',
              style: TextStyle(
                color: Colors.black, // Set the text color to black
              ),
            ),
          ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(16.0),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Smart Quran Learning',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 64.0,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id sem velit. Quisque fermentum eros non porta bibendum. Praesent pretium libero nec imperdiet semper. Nunc tellus augue, tempor ut laoreet ac, fringilla eu metus. Sed at mi sed augue pretium ullamcorper. Donec ultrices porttitor enim.',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    child: Image.network(
                      'https://lumiere-a.akamaihd.net/v1/images/open-uri20150608-27674-17ohmzf_d340a6bd.jpeg?width=1136',
                      width: 700,
                      height: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
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
    );
  }
}
