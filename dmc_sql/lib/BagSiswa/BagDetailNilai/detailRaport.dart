import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/Property/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Property/project_font.dart';

List<List<String>> listNilaiKualitatif = [
  ['Pengagungan terhadap ilmu', 'A'],
  ['Kejujuran', 'A'],
  ['Tanggung jawab dan kemandirian', 'A'],
  ['Partisipasi dan manfaat', 'A'],
];

List<List<String>> listNilaiIbadah = [
  ['Tata Cara Wudhu', 'A', 'A'],
  ['Tata Cara Shalat', 'A', '-'],
];

List<List<String>> listNilaiHadits = [
  ['Hiasi Al-Quran', 'A', '-'],
  ["Memberi Syafa't pada Hari Kiamat", 'A', '-'],
  ["Merupakan Amal Baik", 'A', '-'],
  ["Mendapat Derajat yang Tinggi", 'A', '-'],
  ["Mendapatkan Sakinah dan Rahmat", 'A', '-'],
  ["Mendapatkan Sebaik-baiknya Anugrah Allah", 'A', '-'],
];

List<List<String>> listNilaiHaditsArb = [
  ['Amal Tergantung Niat', 'A', '-'],
  ["Tingkatan Agama Islam", 'A', '-'],
  ["Rukun Islam", 'A', '-'],
  ["Penciptaan Manusia", 'A', '-'],
  ["Perkara Ibadah", 'A', '-'],
];

List<List<String>> listNilaiHifdzun = [
  ['Al- Jazary', 'A', '4', '-'],
];

List<List<String>> listNilaiQuran = [
  ["Isti'adzah dan Basmallah", '96', '100'],
  ["Makharijul Huruf", '96', '100'],
  ["Shifatul Huruf", '96', '97'],
];

List<List<String>> listNilaiJuz = [
  ["JUZ 30", '-', 'Mumtaz', 'Tersertifikasi', '-', '0%'],
  ["JUZ 29", '-', '-', 'Tersertifikasi', '-', '0%'],
  ["JUZ 28", '-', '-', 'Tersertifikasi', '-', '0%'],
  ["JUZ 27", '-', '-', 'Tersertifikasi', '-', '0%'],
  ["JUZ 26", '-', '-', 'Tersertifikasi', '-', '0%'],
  ["JUZ 1", '98', 'Mumtaz', 'Tersertifikasi', '17 Halaman', '85%'],
  ["JUZ 2", '95', 'Mumtaz', 'Tersertifikasi', '19 Halaman', '100%'],
];

List<List<String>> listNilaiTajwid = [
  ['Kaidah Nun Sukun', 'A', '-'],
  ['Kaidah Mim Sukun', 'A', '-'],
  ['Idgham', 'AB', '-'],
  ['Mad', 'A', '-'],
  ['Tafkhim/Tarqiq', 'AB', '-'],
  ['Waqaf', 'B', '-'],
  ['Istilah Dalam Membaca AL-Quran', 'B', '-'],
  ['Bacaan di Luar Kaidah', 'B', '-'],
  ['Tanda Mushaf Madinah', '-', '-'],
];

List<List<String>> listKehadiran = [
  ['Sakit', '3'],
  ['Izin', '3'],
  ['Alpha', '0'],
];

List<List<String>> listKeterangan1 = [
  ['Sangat Baik', 'A'],
  ['Baik dan Sangat Baik', 'AB'],
  ['Baik', 'B'],
];

List<List<String>> listKeterangan2 = [
  ['Cukup dan Baik', 'BC'],
  ['Cukup', 'C'],
  ['Hampir Cukup', 'D'],
];

class DetailRaportPage extends StatefulWidget {
  const DetailRaportPage({super.key});

  @override
  State<DetailRaportPage> createState() => _DetailRaportPageState();
}

class _DetailRaportPageState extends State<DetailRaportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarAdmin(page: CurrentPage.siswa),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(flex: 8,
                    child:
                    GlobalProjectFont(
                      text: 'RAPOR SISWA',
                      fontWeight: FontWeight.w800,
                      fontSize: 32.0,
                      color: AppColor.blue,
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Back to Siswa")))
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            // ================================================================== Data Siswa ==================================================================
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: const [
                                        GlobalProjectFont(
                                          text: 'Data Siswa',
                                          fontWeight: FontWeight.w800,
                                          fontSize: 20.0,
                                          color: AppColor.blue,
                                        ),
                                        Text("Semester 1  Kelas A")
                                      ],
                                    ),
                                    const SizedBox(height: 10,),
                                    const Text("Ahmad Solihun"),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Nis 1601204013"),
                                        Text("2022/2023")
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // ================================================================== Nilai kualitatif ==================================================================
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const GlobalProjectFont(
                                      text: 'Nilai Kualitatif',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20.0,
                                      color: AppColor.blue,
                                    ),
                                    const ListTile(
                                      title: Text("Karakter"),
                                      trailing: Text("Nilai         "),
                                    ),
                                    const Divider(thickness: 2, color: Colors.black,),
                                    SizedBox(
                                      height: 150,
                                      child: ListView.builder(
                                          itemCount: listNilaiKualitatif.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            String nama =
                                            listNilaiKualitatif[index][0];
                                            String nilai=
                                            listNilaiKualitatif[index][1];

                                            return Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 3, child: Text(nama)),
                                                    Expanded(
                                                        child: Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(nilai))),
                                                  ],
                                                ),
                                                const Divider()
                                              ],
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            // ================================================================== Nilai Ibadah ==================================================================
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const GlobalProjectFont(
                                      text: 'Nilai Ibadah',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20.0,
                                      color: AppColor.blue,
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: const [
                                        Expanded(
                                            flex: 3, child: Text("MAHDHAH")),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("Gerakan"))),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("Bacaan"))),
                                      ],
                                    ),
                                    const Divider(thickness: 2, color: Colors.black,),
                                    SizedBox(
                                      height: 100,
                                      child: ListView.builder(
                                          itemCount: listNilaiIbadah.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            String nama =
                                            listNilaiIbadah[index][0];
                                            String gerakan =
                                            listNilaiIbadah[index][1];
                                            String bacaan =
                                            listNilaiIbadah[index][2];

                                            return Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 3, child: Text(nama)),
                                                    Expanded(
                                                        child: Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(gerakan))),
                                                    Expanded(
                                                        child: Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(bacaan))),
                                                  ],
                                                ),
                                                const Divider()
                                              ],
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            // ================================================================== Nilai Hadits ==================================================================
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const GlobalProjectFont(
                                      text: 'Nilai Hadist',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20.0,
                                      color: AppColor.blue,
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: const [
                                        Expanded(
                                            flex: 3, child: Text("MATERI")),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("Lisan"))),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("Tulis"))),
                                      ],
                                    ),
                                    const Divider(thickness: 2),
                                    SizedBox(
                                      height: 100,
                                      child: ListView.builder(
                                          itemCount: listNilaiHadits.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            String nama =
                                            listNilaiHadits[index][0];
                                            String lisan =
                                            listNilaiHadits[index][1];
                                            String tulis =
                                            listNilaiHadits[index][2];

                                            return Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 3, child: Text(nama)),
                                                    Expanded(
                                                        child: Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(lisan))),
                                                    Expanded(
                                                        child: Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(tulis))),
                                                  ],
                                                ),
                                                const Divider()
                                              ],
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            // ================================================================== Nilai Hadits Arbain ==================================================================
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const GlobalProjectFont(
                                      text: 'Nilai Hadits Arbain',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20.0,
                                      color: AppColor.blue,
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: const [
                                        Expanded(
                                            flex: 3, child: Text("MATERI")),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("Lisan"))),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("Tulis"))),
                                      ],
                                    ),
                                    const Divider(thickness: 2, color: Colors.black,),
                                    SizedBox(
                                      height: 100,
                                      child: ListView.builder(
                                          itemCount: listNilaiHaditsArb.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            String nama =
                                            listNilaiHaditsArb[index][0];
                                            String lisan =
                                            listNilaiHaditsArb[index][1];
                                            String tulis =
                                            listNilaiHaditsArb[index][2];

                                            return Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 3, child: Text(nama)),
                                                    Expanded(
                                                        child: Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(lisan))),
                                                    Expanded(
                                                        child: Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(tulis))),
                                                  ],
                                                ),
                                                const Divider()
                                              ],
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            // ================================================================== Nilai Hifdzun Mutun ==================================================================
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const GlobalProjectFont(
                                      text: 'Nilai Hifdzun Mutun',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20.0,
                                      color: AppColor.blue,
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: const [
                                        Expanded(
                                            flex: 3, child: Text("MATERI")),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("LISAN"))),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("JUMLAH"))),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("TULIS"))),
                                      ],
                                    ),
                                    const Divider(thickness: 2, color: Colors.black,),
                                    SizedBox(
                                      height: 50,
                                      child: ListView.builder(
                                          itemCount: listNilaiHifdzun.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            String nama =
                                            listNilaiHifdzun[index][0];
                                            String lisan =
                                            listNilaiHifdzun[index][1];
                                            String jumlah =
                                            listNilaiHifdzun[index][2];
                                            String tulis =
                                            listNilaiHifdzun[index][3];

                                            return Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 3, child: Text(nama)),
                                                    Expanded(
                                                        child: Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(lisan))),
                                                    Expanded(
                                                        child: Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(jumlah))),
                                                    Expanded(
                                                        child: Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(tulis))),
                                                  ],
                                                ),
                                                const Divider()
                                              ],
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // ================================================================== Nilai Al-Quran ==================================================================
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const GlobalProjectFont(
                                      text: 'Nilai Al-Quran',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20.0,
                                      color: AppColor.blue,
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: const [
                                        Expanded(
                                            flex: 3, child: Text("TAHSIN")),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("LISAN"))),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("TULIS"))),
                                      ],
                                    ),
                                    const Divider(thickness: 2),
                                    SizedBox(
                                      height: 50,
                                      child: ListView.builder(
                                          itemCount: listNilaiQuran.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            String nama =
                                            listNilaiQuran[index][0];
                                            String lisan =
                                            listNilaiQuran[index][1];
                                            String tulis =
                                            listNilaiQuran[index][2];

                                            return Row(
                                              children: [
                                                Expanded(
                                                    flex: 3, child: Text(nama)),
                                                Expanded(
                                                    child: Align(
                                                        alignment:
                                                        Alignment.center,
                                                        child: Text(lisan))),
                                                Expanded(
                                                    child: Align(
                                                        alignment:
                                                        Alignment.center,
                                                        child: Text(tulis))),
                                              ],
                                            );
                                          }),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: const [
                                      GlobalProjectFont(
                                        text: "CAPAIAN",
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18.0,
                                        color: AppColor.blue,
                                      ),
                                        Text("AL - QURAN")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),

                            // ================================================================== Nilai Al-Quran ==================================================================
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 510,
                                      child: ListView.builder(
                                          itemCount: listNilaiJuz.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            String juz = listNilaiJuz[index][0];
                                            String nilai =
                                            listNilaiJuz[index][1];
                                            String lancar =
                                            listNilaiJuz[index][2];
                                            String status =
                                            listNilaiJuz[index][3];
                                            String teruji =
                                            listNilaiJuz[index][4];
                                            String persentasi =
                                            listNilaiJuz[index][5];

                                            return Container(
                                              decoration: ShapeDecoration(
                                                  shape: RoundedRectangleBorder(
                                                    side: const BorderSide(color: AppColor.blue, width: 1.5),
                                                    borderRadius: BorderRadius.circular(8),
                                                  )
                                              ),
                                              padding: const EdgeInsets.all(8.0),
                                              margin: const EdgeInsets.only(
                                                  bottom: 10),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width: 150,
                                                    child: Column(
                                                      children: [
                                                        GlobalProjectFont(
                                                          text: juz,
                                                          fontWeight: FontWeight.w800,
                                                          fontSize: 32.0,
                                                          color: AppColor.blue,
                                                        ),
                                                        Text("NILAI  $nilai")
                                                      ],
                                                    ),
                                                  ),
                                                  const VerticalDivider(thickness: 1,color: AppColor.blue,),
                                                  Expanded(
                                                      child: Column(
                                                        children: [
                                                          const Text("KELANCARAN"),
                                                          Text(lancar)
                                                        ],
                                                      )),
                                                  const VerticalDivider(thickness: 1,color: AppColor.blue,),
                                                  Expanded(
                                                      child: Column(
                                                        children: [
                                                          const Text("STATUS"),
                                                          Text(status)
                                                        ],
                                                      )),
                                                  const VerticalDivider(thickness: 1,color: AppColor.blue,),
                                                  Expanded(
                                                      child: Column(
                                                        children: [
                                                          const Text("JUZ YANG TERUJI"),
                                                          Text(teruji)
                                                        ],
                                                      )),
                                                  const VerticalDivider(thickness: 1,color: AppColor.blue,),
                                                  Expanded(
                                                      child: Column(
                                                        children: [
                                                          const Text("PERSENTASE JUZ"),
                                                          Text(persentasi)
                                                        ],
                                                      )),
                                                ],
                                              ),
                                            );
                                          }),
                                    ),
                                    Container(
                                      height: 50,
                                      padding: const EdgeInsets.all(8.0),
                                      margin: const EdgeInsets.only(top: 10),
                                      decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(color: AppColor.blue, width: 1.5),
                                            borderRadius: BorderRadius.circular(8),
                                          )
                                      ),
                                      child: Row(
                                        children: const [
                                          Expanded(
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: GlobalProjectFont(
                                                    text: "CAPAIAN",
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 18.0,
                                                    color: AppColor.blue,
                                                  ),
                                              )
                                          ),
                                          const VerticalDivider(thickness: 2,color: AppColor.blue,),
                                          Expanded(
                                              flex: 2,
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text("JUZ: 2"))),
                                          const VerticalDivider(thickness: 2,color: AppColor.blue,),
                                          Expanded(
                                              flex: 2,
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                      "Surah: Halaman 19"))),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),

                            // ================================================================== Nilai tAJWID ==================================================================
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const GlobalProjectFont(
                                      text: 'Nilai Tajwid',
                                      fontWeight: FontWeight.w800,
                                      fontSize: 20.0,
                                      color: AppColor.blue,
                                    ),
                                    const SizedBox(height: 10,),
                                    Row(
                                      children: const [
                                        Expanded(
                                            flex: 3, child: Text("MATERI")),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("NILAI"))),
                                        Expanded(
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text("LISAN"))),
                                      ],
                                    ),
                                    const Divider(thickness: 2, color: AppColor.black,),
                                    SizedBox(
                                      height: 300,
                                      child: ListView.builder(
                                          itemCount: listNilaiTajwid.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            String nama =
                                            listNilaiTajwid[index][0];
                                            String nilai =
                                            listNilaiTajwid[index][1];
                                            String lisan =
                                            listNilaiTajwid[index][2];

                                            return Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 3, child: Text(nama)),
                                                    Expanded(
                                                        child: Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(nilai))),
                                                    Expanded(
                                                        child: Align(
                                                            alignment:
                                                            Alignment.center,
                                                            child: Text(lisan))),
                                                  ],
                                                ),
                                                const Divider()
                                              ],
                                            );

                                          }),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),

              // =============================================================== Bagian Bawah ======================================================================
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const GlobalProjectFont(
                                text: 'Kehadiran',
                                fontWeight: FontWeight.w800,
                                fontSize: 20.0,
                                color: AppColor.blue,
                              ),
                              const SizedBox(height: 10,),
                              SizedBox(
                                height: 50,
                                child: ListView.builder(
                                    itemCount: listKehadiran.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      String keterangan = listKehadiran[index][0];
                                      String jumlah = listKehadiran[index][1];

                                      return Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [Text(keterangan), Text(jumlah)],
                                      );
                                    }),
                              ),
                              const Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [Text("Total"), Text("6")],
                              )
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 2,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const GlobalProjectFont(
                                text: 'Keterangan Nilai',
                                fontWeight: FontWeight.w800,
                                fontSize: 20.0,
                                color: AppColor.blue,
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.all(5),
                                        height: 50,
                                        child: ListView.builder(
                                            itemCount: listKeterangan1.length,
                                            itemBuilder:
                                                (BuildContext context, int index) {
                                              String keterangan =
                                              listKeterangan1[index][0];
                                              String nilai =
                                              listKeterangan1[index][1];

                                              return Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(keterangan),
                                                      Text(nilai)
                                                    ],
                                                  ),
                                                  const Divider()
                                                ],
                                              );
                                            }),
                                      )),
                                  const SizedBox(width: 15,),
                                  Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.all(5),
                                        height: 50,
                                        child: ListView.builder(
                                            itemCount: listKeterangan2.length,
                                            itemBuilder:
                                                (BuildContext context, int index) {
                                              String keterangan =
                                              listKeterangan2[index][0];
                                              String nilai =
                                              listKeterangan2[index][1];

                                              return Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(keterangan),
                                                      Text(nilai)
                                                    ],
                                                  ),
                                                  const Divider()
                                                ],
                                              );
                                            }),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
