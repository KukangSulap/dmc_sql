import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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

class DetailRaportPage extends StatefulWidget {
  const DetailRaportPage({super.key});

  @override
  State<DetailRaportPage> createState() => _DetailRaportPageState();
}

class _DetailRaportPageState extends State<DetailRaportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: Padding(
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
                    child:
                        ElevatedButton(onPressed: () {}, child: Text("Edit"))),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                        itemBuilder:
                                            (BuildContext context, int index) {
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
                                children: [
                                  Text("Nilai Ibadah"),
                                  Row(
                                    children: const [
                                      Expanded(flex: 3, child: Text("MAHDHAH")),
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
                                        itemBuilder:
                                            (BuildContext context, int index) {
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
                                children: [
                                  Text("Nilai Ibadah"),
                                  Row(
                                    children: const [
                                      Expanded(flex: 3, child: Text("MATErI")),
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
                                        itemBuilder:
                                            (BuildContext context, int index) {
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
                          )
                        ],
                      ),
                    )),
                Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.amber,
                          height: 199,
                        ),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
