import 'package:dmc_sql/BagPendidikan/update_materi.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dmc_sql/Property/app_color.dart';
import '../AppBar/app_bar_user.dart';
import '../Property/project_font.dart';

class KurikulumScreen extends StatefulWidget {
  @override
  _KurikulumScreenState createState() => _KurikulumScreenState();
}

class _KurikulumScreenState extends State<KurikulumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      appBar:AppBarUser(page: CurrentPage.pendidikan),
      body: SingleChildScrollView(
        child: Column(
          children: [
            upperRow("title1"),
            _buildBox(
              'Kurikulum SQL',
              'Tujuan Pembelajaran Umum',
              'Mengajarkan siswa membaca, memahami, \ndan mengamalkan Alquran dengan benar \ndan berbudi pekerti luhur.',
              300.0,
            ),
            _buildBox2(
              'Mata Pelajaran Utama',
              "Tilawah (Pengajaran membaca Alquran) \nTafsir (Pengajaran pemahaman Alquran) \nHafalan (Hifz) \nAlquran Akhlaqul Karimah (Budi pekerti)",
              200.0,
            ),
            //rest of the box
            const SizedBox(height: 16),
            kelas(
              colors: [
                AppColor.orange,
                AppColor.green,
                AppColor.yellow,
                AppColor.yellow,
                AppColor.green,
                AppColor.orange,
              ],
              texts: [
                'Kelas 1',
                'Kelas 2',
                'Kelas 3',
                'Kelas 4',
                'Kelas 5',
                'Kelas 6',
              ],
              desc: [
                'Tilawah: Membelajarkan huruf hijaiyah dan cara membaca dengan benar.\n'
                    '\nAkhlaqul Karimah: Pengenalan tentang akhlaq dan nilai-nilai Islami sederhana.\n'
                    '\nIbadah Harian: Pengenalan tentang shalat, wudhu, dan doa-doa harian.',
                'Kelas 2',
                'Kelas 3',
                'Kelas 4',
                'Kelas 5',
                'Kelas 6',
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBox(
      String title,
      String sub,
      String stackedText,
      double boxHeight,
      ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
        image: const DecorationImage(
          image: NetworkImage('https://cdn.mos.cms.futurecdn.net/4aWYcB9tGoGe5gHo4tiffU.jpg'), // Replace with your image path
          fit: BoxFit.cover, // Adjust the fit as needed
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16.0), // Adjust the spacing as needed
          GlobalProjectFont(
            fontSize: 36.0, // Adjust for smaller screens
            fontWeight: FontWeight.w800,
            color: Colors.white,
            text: title,
          ),
          SizedBox(height: 8.0), // Adjust the spacing as needed
          Container(
            alignment: Alignment.topLeft,
            child: GlobalProjectFont(
              fontSize: 24.0, // Adjust for smaller screens
              fontWeight: FontWeight.normal,
              color: Colors.white,
              text: sub,
            ),
          ),
          SizedBox(height: 12.0), // Adjust the spacing as needed
          Stack(
            children: [
              Container(
                color: Colors.transparent, // Make the container transparent
                height: boxHeight,
              ),
              GlobalProjectFont(
                fontSize: 20.0, // Adjust for smaller screens
                fontWeight: FontWeight.normal,
                color: Colors.white,
                text: stackedText,
              ),
            ],
          ),
        ],
      ),
    );
  }


  Widget _buildBox2(
      String title,
      String stackedText,
      double boxHeight,
      ) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0,left: 30, right: 30),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30.0),
          GlobalProjectFont(
            fontSize: 44.0,
            fontWeight: FontWeight.w800,
            color: AppColor.blue,
            text: title,
          ),
          const SizedBox(height: 20.0),
          Stack(
            children: [
              Container(
                color: Colors.transparent, // Make the container transparent
                height: boxHeight,
              ),
              GlobalProjectFont(
                fontSize: 32.0,
                fontWeight: FontWeight.normal,
                color: Colors.black,
                text: stackedText,
              ),
            ],
          ),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget kelas(
      {
        required List<Color> colors,
        required List<String> texts,
        required List<String> desc,
      }
      ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          mainAxisSpacing: 16.0, // Vertical spacing
          crossAxisSpacing: 8.0, // Horizontal spacing
        ),
        itemCount: 6, // Total number of cards (2x3)
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
            color: colors[index],
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    texts[index],
                    style: GoogleFonts.mPlusRounded1c(
                        fontWeight: FontWeight.w500,
                        fontSize: 36.0,
                        color: Colors.white),
                  ),
                  Text(
                    desc[index],
                    style: GoogleFonts.mPlusRounded1c(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget upperRow(
      String title
      ) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
                height: 72,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      const Color.fromRGBO(214, 106, 61, 1),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MateriPage()),
                      );
                    },
                    child: Text(
                      'Update Materi',
                      style: GoogleFonts.mPlusRounded1c(
                          fontWeight: FontWeight.w800,
                          fontSize: 18.0,
                          color: Colors.white),
                    ),
                  ),
                )),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            flex: 2,
            child: SizedBox(
                height: 72,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                        const Color.fromRGBO(102, 175, 153, 1)),
                    onPressed: () {
                      // TODO: Add Kurikulum On Pressed.
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  KurikulumScreen()),
                      );
                    },
                    child: Text(
                      'Kurikulum',
                      style: GoogleFonts.mPlusRounded1c(
                          fontWeight: FontWeight.w800,
                          fontSize: 18.0,
                          color: Colors.white),
                    ),
                  ),
                )),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            flex: 2,
            child: SizedBox(
                height: 72,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      const Color.fromRGBO(237, 195, 95, 1),
                    ),
                    onPressed: () {
                      // TODO: Add Ziyadah On Pressed.
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ziyadah',
                          style: GoogleFonts.mPlusRounded1c(
                              fontWeight: FontWeight.w800,
                              fontSize: 18.0,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
