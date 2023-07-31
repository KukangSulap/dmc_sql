import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

List<List<String>> listNilaiMurajaah = [
  ['Nilai', '1.00'],
  ['Halaman', '16.5'],
  ['Persentase', '308%'],
];

class DetailMurajaahPage extends StatefulWidget {
  const DetailMurajaahPage({super.key});

  @override
  State<DetailMurajaahPage> createState() => _DetailMurajaahPageState();
}

class _DetailMurajaahPageState extends State<DetailMurajaahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarAdmin(page: "s"),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(flex: 8, child: Text("Detail Muraha'ah")),
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
              Container(
                // height: 300,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1.5),
                                borderRadius: BorderRadius.circular(8.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Data Siswa"),
                              Text("nama siswa"),
                              Container(
                                  height: 270,
                                  width: 239,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: Colors.green.shade200,
                                  )),
                              const SizedBox(height: 10),
                              Text("nis"),
                              Text("tgl Muraha'ah")
                            ],
                          ),
                        ),
                      )),
                      Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1.5),
                                        borderRadius:
                                            BorderRadius.circular(8.0))),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: const [
                                        Text("Nilai Muraha'ah"),
                                        Text("RANK")
                                      ],
                                    ),
                                    Container(
                                      height: 150,
                                      width: 200,
                                      child: ListView.builder(
                                          itemCount: listNilaiMurajaah.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            String nama =
                                                listNilaiMurajaah[index][0];
                                            String nilai =
                                                listNilaiMurajaah[index][1];

                                            return ListTile(
                                              title: Text(nama),
                                              trailing: Text(nilai),
                                            );
                                          }),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 150,
                                decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(width: 1.5),
                                        borderRadius:
                                            BorderRadius.circular(8.0))),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Notes Muraha'ah"),
                                        Text("lorem ipsum")
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
