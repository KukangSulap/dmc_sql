import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dmc_sql/Property/app_color.dart';
import '../AppBar/app_bar_user.dart';

class KurikulumScreen extends StatefulWidget {
  @override
  _KurikulumScreenState createState() => _KurikulumScreenState();
}

class _KurikulumScreenState extends State<KurikulumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBarUser(page: CurrentPage.pendidikan),
      body: SingleChildScrollView(
        child: Column(
          children: [
            upperRow("title1"),
            _buildBox(
              'Box 1',
              'Text in Box 1',
              Colors.blue,
              FontWeight.bold,
              200.0,
            ),
            _buildBox(
              'Box 2',
              'Text in Box 2',
              Colors.green,
              FontWeight.normal,
              150.0,
            ),
            _buildBox(
              'Box 3',
              'Text in Box 3',
              Colors.red,
              FontWeight.bold,
              250.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(
      String title,
      String stackedText,
      Color boxColor,
      FontWeight textWeight,
      double boxHeight,
      ) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: boxColor.withOpacity(0.8),
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(10.0),
        image: const DecorationImage(
          image: AssetImage('misc/c2.png'), // Replace with your image path
          fit: BoxFit.cover, // Adjust the fit as needed
        ),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10.0),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.transparent, // Make the container transparent
                height: boxHeight,
              ),
              Text(
                stackedText,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: textWeight,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
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
            flex: 3,
            child: Container(
                height: 72,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.blue, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        size: 36,
                      ),
                      suffixIconColor: AppColor.blue,
                      hintText: 'Pencarian',
                      hintStyle: GoogleFonts.mPlusRounded1c(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                          color: AppColor.blue),
                      border: InputBorder.none,
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
                      const Color.fromRGBO(214, 106, 61, 1),
                    ),
                    onPressed: () {
                      // TODO: Add Update Materi On Pressed.
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
