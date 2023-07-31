import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

List<List<String>> listNilaiMabit = [
  ['Manner', 'A'],
  ['Leadership', 'A'],
  ['Adaptation', 'A'],
  ['Sharing', 'A'],
  ['Caring', 'A'],
];

class DetailSmartPage extends StatefulWidget {
  const DetailSmartPage({super.key});

  @override
  State<DetailSmartPage> createState() => _DetailSmartPageState();
}

class _DetailSmartPageState extends State<DetailSmartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarAdmin(page: "s"),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Expanded(flex: 8, child: Text("Detail SMART Mabit")),
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
                SmartMabit(),
                SizedBox(height: 10),
                Row(
                  children: [
                    const Expanded(flex: 8, child: Text("Detail SMART Camp")),
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
                SmartCamp()
              ],
            ),
          ),
        ));
  }
}

class SmartMabit extends StatelessWidget {
  const SmartMabit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    Text("tgl Smart")
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
                              borderRadius: BorderRadius.circular(8.0))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text("Nilai Smart"),
                              Text("Nama SMART Mabit")
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 150,
                                width: 200,
                                child: ListView.builder(
                                    itemCount: listNilaiMabit.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      String nama = listNilaiMabit[index][0];
                                      String nilai = listNilaiMabit[index][1];

                                      return ListTile(
                                        title: Text(nama),
                                        trailing: Text(nilai),
                                      );
                                    }),
                              ),
                              Container(
                                width: 200,
                                child: ListTile(
                                  title: Text("SCORE"),
                                  trailing: Text("89"),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1.5),
                              borderRadius: BorderRadius.circular(8.0))),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Notes Smart"),
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
    );
  }
}

class SmartCamp extends StatelessWidget {
  const SmartCamp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    Text("tgl Smart")
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
                              borderRadius: BorderRadius.circular(8.0))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Text("Nilai Smart"),
                              Text("Nama SMART Camp")
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 150,
                                width: 200,
                                child: ListView.builder(
                                    itemCount: listNilaiMabit.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      String nama = listNilaiMabit[index][0];
                                      String nilai = listNilaiMabit[index][1];

                                      return ListTile(
                                        title: Text(nama),
                                        trailing: Text(nilai),
                                      );
                                    }),
                              ),
                              Container(
                                width: 200,
                                child: ListTile(
                                  title: Text("SCORE"),
                                  trailing: Text("89"),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1.5),
                              borderRadius: BorderRadius.circular(8.0))),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Notes Smart"),
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
    );
  }
}
