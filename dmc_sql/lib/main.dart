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
                color: Colors.black, // Set the text color to black
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                schoolName,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Address: $address',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'About',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                about,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Row(
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
                        MaterialPageRoute(
                            builder: (context) =>  const KeuanganPage()));
                  },
                  child: const Text('Keuangan'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const SiswaPage()));
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
