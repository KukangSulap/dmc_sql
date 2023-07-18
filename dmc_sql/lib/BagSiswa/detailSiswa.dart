import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailSiswaPage extends StatefulWidget {
  const DetailSiswaPage({super.key, required this.dataSiswa});

  final List<String> dataSiswa;

  @override
  State<DetailSiswaPage> createState() => _DetailSiswaPageState();
}

class _DetailSiswaPageState extends State<DetailSiswaPage> {
  @override
  Widget build(BuildContext context) {
    String namaSiswa = widget.dataSiswa[0];
    String tahunSiswa = widget.dataSiswa[1];
    String semesterSiswa = widget.dataSiswa[2];
    String kelasSiswa = widget.dataSiswa[3];

    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SubAppBar(),
            Text("$namaSiswa $tahunSiswa $semesterSiswa $kelasSiswa")
          ],
        ),
      ),
    );
  }
}

class SubAppBar extends StatelessWidget {
  const SubAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Data Siswa",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        ),
        ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(color: Colors.black),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          onPressed: () {},
          child: Container(
            height: 40,
            // width: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Edit",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
