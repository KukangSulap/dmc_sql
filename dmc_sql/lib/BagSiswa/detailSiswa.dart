import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagSiswa/BagDetailNilai/detailLomba.dart';
import 'package:dmc_sql/BagSiswa/BagDetailNilai/detailMurajaah.dart';
import 'package:dmc_sql/BagSiswa/BagDetailNilai/detailRaport.dart';
import 'package:dmc_sql/BagSiswa/BagDetailNilai/detailSmart.dart';
import 'package:dmc_sql/BagSiswa/BagDetailNilai/detailZiyadah.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/inputLomba.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/inputMurajaah.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/inputRapor.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/inputSmart.dart';
import 'package:dmc_sql/BagSiswa/BagInputNilai/inputZiyadah.dart';
import 'package:dmc_sql/BagSiswa/inputSiswa.dart';
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
    String nama = namaSiswa.split("-")[0];
    String nis = namaSiswa.split("-")[1];
    String tahunSiswa = widget.dataSiswa[1];
    String semesterSiswa = widget.dataSiswa[2];
    String kelasSiswa = widget.dataSiswa[3];

    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SubAppBar(),
              // Text("$namaSiswa $tahunSiswa $semesterSiswa $kelasSiswa"),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: BagianMenuKiri(
                          nama: nama,
                          nis: nis,
                        )),
                    Expanded(
                      flex: 3,
                      child: BagianProfil(
                          nama: nama,
                          nis: nis,
                          tahunSiswa: tahunSiswa,
                          semesterSiswa: semesterSiswa,
                          kelasSiswa: kelasSiswa),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BagianProfil extends StatelessWidget {
  const BagianProfil({
    super.key,
    required this.nama,
    required this.nis,
    required this.tahunSiswa,
    required this.semesterSiswa,
    required this.kelasSiswa,
  });

  final String nama;
  final String nis;
  final String tahunSiswa;
  final String semesterSiswa;
  final String kelasSiswa;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.5),
            borderRadius: BorderRadius.circular(8)),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 150,
            // color: Colors.blue,
            decoration: ShapeDecoration(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.5),
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 160,
                width: 140,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                // child: Image.network(
                //     'https://www.liveabout.com/thmb/mODlBLF75DTwT3i4zHkXFGrmhNA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/pajama-day-kid-58b8c9345f9b58af5c8c717d.jpg'),
              ),
              Text(
                "${nama.trim()}",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 68),
              ),
              SizedBox(height: 10),
              Text(
                "${nis.trim()}   Rank 1",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 34),
              ),
              SizedBox(height: 20),
              Text(
                "$tahunSiswa   $semesterSiswa   $kelasSiswa",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
                padding: const EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 10),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.5),
                        borderRadius: BorderRadius.circular(8))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Prestasi Siswa",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 25,
                          color: Colors.black),
                    ),
                    Wrap(
                      children: const [
                        Text(
                          "Lomba Ramadhan",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 34,
                              color: Colors.black),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Juara 1",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 34),
                        )
                      ],
                    ),
                    Text(
                      "Nilai\nLorem ipsum dolor sit amet. Qui provident aliquam quo quidem ratione a molestias consequuntur sit doloremque nisi! Est magnam fuga quo omnis nostrum et enim impedit ad architecto asperiores ad velit perferendis. Et obcaecati voluptatem et itaque omnis ex quis quia rem temporibus temporibus sed quos magnam non natus unde. Et quod adipisci eos galisum aliquam aut reiciendis possimus et tempore perferendis.",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 21),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class BagianMenuKiri extends StatelessWidget {
  const BagianMenuKiri({
    super.key,
    required this.nama,
    required this.nis,
  });

  final String nama;
  final String nis;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // padding: EdgeInsets.all(10),
            width: 336,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1.5),
                    borderRadius: BorderRadius.circular(8))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: const Text(
                    "Detail Nilai",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
                  ),
                ),
                CustomButton(
                    text: "Raport",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailRaportPage()));
                    }),
                CustomButton(
                    text: "Lomba",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailLombaPage(
                                    nama: nama.trim(),
                                    nis: nis.trim(),
                                  )));
                    }),
                CustomButton(
                    text: "Smart",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailSmartPage()));
                    }),
                CustomButton(
                    text: "Muraja'ah",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const DetailMurajaahPage()));
                    }),
                CustomButton(
                    text: "Ziyadah",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailZiyadahPage()));
                    }),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 336,
            decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1.5),
                    borderRadius: BorderRadius.circular(8))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: const Text(
                    "Input Nilai",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 26),
                  ),
                ),
                CustomButton(
                    text: "Input Raport",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InputRaporPage(
                                    nisSiswa: nis,
                                  )));
                    }),
                CustomButton(
                    text: "Input Lomba",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InputLombaPage(
                                    namaSiswa: nama.trim(),
                                    nisSiswa: nis.trim(),
                                  )));
                    }),
                CustomButton(
                    text: "Input Smart",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InputSmartPage(
                                    namaSiswa: nama.trim(),
                                    nisSiswa: nis.trim(),
                                  )));
                    }),
                CustomButton(
                    text: "Input Muraja'ah",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InputMurajaahPage(
                                    namaSiswa: nama.trim(),
                                    nisSiswa: nis.trim(),
                                  )));
                    }),
                CustomButton(
                    text: "Input Ziyadah",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InputZiyadahPage(
                                    namaSiswa: nama.trim(),
                                    nisSiswa: nis.trim(),
                                  )));
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 26.0,
            color:
                Colors.black, // Change the text color as per your requirement
          ),
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
              fontWeight: FontWeight.w800, color: Colors.black, fontSize: 40),
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
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => InputSiswaPage()));
          },
          child: Container(
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 50),
            // width: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Edit",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
