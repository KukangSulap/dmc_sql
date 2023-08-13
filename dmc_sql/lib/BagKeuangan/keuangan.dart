import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagKeuangan/PemasukanDetailVariants/donasi.dart';
import 'package:dmc_sql/BagKeuangan/inputPengeluaran.dart';
import 'package:dmc_sql/BagKeuangan/pengeluaranDetail.dart';
import 'package:dmc_sql/Property/app_color.dart';
import 'package:dmc_sql/Property/project_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'inputPemasukan.dart';

List<List<String>> pemasukanList = [
  ['Pembayaran SPP Ahmad Solihun - xxxxxxx013', '12 Juni 2023', '250.000'],
  ['Pembayaran SPP Agita Maharani - xxxxxxx012', '20 Juli 2023', '250.000'],
  ['Donasi Salimah', '22 Juni 20233', '750.000'],
  ['Pembayaran SPP Hilmy Hofifah - xxxxxxx313', '30 Juni 2023', '250.000'],
];
List<List<String>> keluaranList = [
  ['Pembelian Al Quran 12 Buku', '12 Juni 2023', '250.000'],
  ['Dana Kegiatan Kebersihan Masjid', '20 Juli 2023', '250.000'],
  ['Kegiatan Study Tour Masjid Kuba', '30 Juni 20233', '750.000'],
  ['Kerting Untuk Acara Tafsir Al Quran', '30 Juni 2023', '250.000'],
];

class KeuanganPage extends StatefulWidget {
  const KeuanganPage({super.key});

  @override
  State<KeuanganPage> createState() => _KeuanganPageState();
}

class _KeuanganPageState extends State<KeuanganPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarAdmin(
        page: 'k',
      ),
      body: SafeArea(
        child: Row(
          children: const [
            // Sisi kiri
            // SisiKiriKeuangan(),

            // Sisi Kanan
            SisiKananKeuangan()
          ],
        ),
      ),
    );
  }
}

class SisiKananKeuangan extends StatelessWidget {
  const SisiKananKeuangan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 30, left: 30),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(10),
                  height: 120,
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Total uang
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          decoration: ShapeDecoration(
                            color: AppColor.yellow,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              ListTile(
                                title: Text(
                                  'Total Uang',
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text(
                                  'Rp 56.000.000',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      // Pemasukan
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          decoration: ShapeDecoration(
                            color: AppColor.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              ListTile(
                                title: Text(
                                  'Pemasukan Bulanan',
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text(
                                  'Rp 50.000.000',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      // Keluaran
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          decoration: ShapeDecoration(
                            color: AppColor.yellow,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              ListTile(
                                title: Text(
                                  'Pengeluaran Bulanan',
                                  style: TextStyle(color: Colors.white),
                                ),
                                subtitle: Text(
                                  'Rp 6.000.000',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.black, width: 1.5),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Pencarian',
                              border: InputBorder.none,
                              suffixIcon: Icon(Icons.search),
                              suffixIconColor: Colors.black,
                              contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ===========================================================  Data Pemasukan  ===================================================================
              Container(
                margin: const EdgeInsets.only(top: 8),
                padding: const EdgeInsets.all(20),
                height: 400,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 2,  color: AppColor.blue),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                        children: [
                          const GlobalProjectFont(
                            text: 'Data Pemasukan',
                            fontWeight: FontWeight.w800,
                            fontSize: 22.0,
                            color: AppColor.blue,
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
                                  builder: (context) => const InputPemasukan(),
                                ),
                              );
                            },
                            child: const CustomButton(
                              title: 'Input',
                              widths: 160,
                              textColor: Colors.white,
                              fontWeight: FontWeight.normal,
                              backgroundColor: AppColor.orange,
                              height: 40,
                            ),
                          ),
                        ],
                      ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 1,
                      width: double.infinity,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: pemasukanList.length,
                        itemBuilder: (BuildContext context, int index) {
                          String itemName = pemasukanList[index][0];
                          String leftInfo = pemasukanList[index][1];
                          String rightInfo = pemasukanList[index][2];

                          return GestureDetector(
                            onTap: () {
                              Navigator.pop(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PemasukanDetailDonasi(),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    itemName,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  subtitle: Text(leftInfo),
                                  trailing: Text(
                                    "Rp $rightInfo -",
                                    style: const TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // ======================================================  Data Keluaran  ==================================================================
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                padding: const EdgeInsets.all(20),
                height: 400,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 2,  color: AppColor.blue),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const GlobalProjectFont(
                          text: 'Data Keluaran',
                          fontWeight: FontWeight.w800,
                          fontSize: 22.0,
                          color: AppColor.blue,
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
                                builder: (context) => InputPengeluaran(),
                              ),
                            );
                          },
                          child: const CustomButton(
                            title: 'Input',
                            widths: 160,
                            textColor: Colors.white,
                            fontWeight: FontWeight.normal,
                            backgroundColor: AppColor.orange,
                            height: 40,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 1,
                      width: double.infinity,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: keluaranList.length,
                        itemBuilder: (BuildContext context, int index) {
                          String itemName = keluaranList[index][0];
                          String leftInfo = keluaranList[index][1];
                          String rightInfo = keluaranList[index][2];
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TemplateDetailPengeluaran(texts: keluaranList[index], imageUrl: 'https://ichef.bbci.co.uk/news/976/cpsprodpb/17638/production/_124800859_gettyimages-817514614.jpg',),
                                ),
                              );
                            },
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    itemName,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  subtitle: Text(leftInfo),
                                  trailing: Text(
                                    "Rp $rightInfo -",
                                    style: const TextStyle(
                                        fontSize: 30, color: Colors.black),
                                  ),

                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 10, bottom: 10),
                                  height: 0.5,
                                  width: double.infinity,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.widths,
    this.textColor = Colors.grey,
    this.fontWeight = FontWeight.w800,
    this.backgroundColor = Colors.transparent,
    this.height = 40.0,
  }) : super(key: key);

  final String title;
  final double widths;
  final Color textColor;
  final FontWeight fontWeight;
  final Color backgroundColor;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: widths,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextButton(
        onPressed: null, // No onPressed callback
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
