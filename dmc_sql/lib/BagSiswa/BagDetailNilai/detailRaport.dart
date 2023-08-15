import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      appBar: AppBarAdmin(page: CurrentPage.siswa),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(flex: 8, child: Text("RAPOR SISWA")),
                  Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Back to Siswa"))),
                  SizedBox(width: 10),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Edit"))),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Data Siswa"),
                                        Text("Semester 1  Kelas A")
                                      ],
                                    ),
                                    Text("Ahmad Solihun"),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Nilai Kualitatif"),
                                    ListTile(
                                      title: Text("Karakter"),
                                      trailing: Text("Nilai"),
                                    ),
                                    const Divider(thickness: 3),
                                    Container(
                                      height: 150,
                                      child: ListView.builder(
                                          itemCount: listNilaiKualitatif.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            String nama =
                                                listNilaiKualitatif[index][0];
                                            String nilai =
                                                listNilaiKualitatif[index][1];

                                            return Column(
                                              children: [
                                                ListTile(
                                                  title: Text(nama),
                                                  trailing: Text(nilai),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nilai Ibadah"),
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
                                    const Divider(thickness: 3),
                                    Container(
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

                                            return Row(
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nilai Hadits"),
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
                                    const Divider(thickness: 3),
                                    Container(
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
                                    )
                                  ],
                                ),
                              ),
                            ),

                            // ================================================================== Nilai Hadits Arbain ==================================================================
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nilai Hadits Arbain"),
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
                                    const Divider(thickness: 3),
                                    Container(
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
                                    )
                                  ],
                                ),
                              ),
                            ),

                            // ================================================================== Nilai Hifdzun Mutun ==================================================================
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Nilai Hifdzun Mutun"),
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
                                    const Divider(thickness: 3),
                                    Container(
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
                                                        child: Text(jumlah))),
                                                Expanded(
                                                    child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Text(tulis))),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nilai Al-Quran"),
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
                                    const Divider(thickness: 3),
                                    Container(
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
                                        Text("Capaian"),
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
                                    Container(
                                      height: 400,
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
                                                      side: BorderSide(
                                                          width: 1.5),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8))),
                                              padding: EdgeInsets.all(8.0),
                                              margin: const EdgeInsets.only(
                                                  bottom: 10),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      child: Column(
                                                    children: [
                                                      Text(juz),
                                                      Text("NILAI  $nilai")
                                                    ],
                                                  )),
                                                  const VerticalDivider(),
                                                  Expanded(
                                                      child: Column(
                                                    children: [
                                                      Text("KELANCARAN"),
                                                      Text(lancar)
                                                    ],
                                                  )),
                                                  const VerticalDivider(),
                                                  Expanded(
                                                      child: Column(
                                                    children: [
                                                      Text("STATUS"),
                                                      Text(status)
                                                    ],
                                                  )),
                                                  const VerticalDivider(),
                                                  Expanded(
                                                      child: Column(
                                                    children: [
                                                      Text("JUZ YANG TERUJI"),
                                                      Text(teruji)
                                                    ],
                                                  )),
                                                  const VerticalDivider(),
                                                  Expanded(
                                                      child: Column(
                                                    children: [
                                                      Text("PERSENTASE JUZ"),
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
                                      padding: EdgeInsets.all(8.0),
                                      margin: EdgeInsets.only(top: 10),
                                      decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(8.0))),
                                      child: Row(
                                        children: const [
                                          Expanded(
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text("Capaian"))),
                                          const VerticalDivider(),
                                          Expanded(
                                              flex: 2,
                                              child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text("JUZ: 2"))),
                                          const VerticalDivider(),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Nilai Tajwid"),
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
                                    const Divider(thickness: 3),
                                    Container(
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

                                            return Row(
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
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Kehadiran"),
                          Container(
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
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Keterangan Nilai"),
                              Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    margin: EdgeInsets.all(5),
                                    height: 50,
                                    child: ListView.builder(
                                        itemCount: listKeterangan1.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          String keterangan =
                                              listKeterangan1[index][0];
                                          String nilai =
                                              listKeterangan1[index][1];

                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(keterangan),
                                              Text(nilai)
                                            ],
                                          );
                                        }),
                                  )),
                                  Expanded(
                                      child: Container(
                                    margin: EdgeInsets.all(5),
                                    height: 50,
                                    child: ListView.builder(
                                        itemCount: listKeterangan2.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          String keterangan =
                                              listKeterangan2[index][0];
                                          String nilai =
                                              listKeterangan2[index][1];

                                          return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(keterangan),
                                              Text(nilai)
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
