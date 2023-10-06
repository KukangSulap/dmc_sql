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

import '../BagKeuangan/keuangan.dart';
import '../Property/app_color.dart';
import '../Property/project_font.dart';
import 'ModelSiswa/mSiswa.dart';

class DetailSiswaPage extends StatefulWidget {
  const DetailSiswaPage({super.key, required this.dataSiswa});

  // final List<String> dataSiswa;
  final Siswa dataSiswa;

  @override
  State<DetailSiswaPage> createState() => _DetailSiswaPageState();
}

class _DetailSiswaPageState extends State<DetailSiswaPage> {
  @override
  Widget build(BuildContext context) {

    String nama = widget.dataSiswa.nama;
    int nis = widget.dataSiswa.nis;
    String tahunSiswa = widget.dataSiswa.tahunPend;
    String semesterSiswa = widget.dataSiswa.semester;
    int kelasSiswa = widget.dataSiswa.kelas;

    return Scaffold(
      appBar: const AppBarAdmin(page: CurrentPage.siswa),
      backgroundColor: AppColor.bg,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SubAppBar(),
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
  final dynamic nis;
  final String tahunSiswa;
  final String semesterSiswa;
  final dynamic kelasSiswa;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 150,
            // color: Colors.blue,
            decoration: ShapeDecoration(
              color: AppColor.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                height: 160,
                width: 140,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Image.network(
                  'https://i.kym-cdn.com/photos/images/newsfeed/002/652/421/280.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 500,
                child: GlobalProjectFont(
                  text: "${nama}",
                  fontWeight: FontWeight.w800,
                  fontSize: 40,
                  color: AppColor.blue,
                ),
              ),
              const SizedBox(height: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const GlobalProjectFont(
                          text: "NIS",
                          fontWeight: FontWeight.w800,
                          fontSize: 40,
                          color: AppColor.black,
                        ),
                        const SizedBox(width: 20),
                        GlobalProjectFont(
                          text: "${nis}",
                          fontWeight: FontWeight.w800,
                          fontSize: 40,
                          color: AppColor.yellow,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                "$tahunSiswa   $semesterSiswa   $kelasSiswa",
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
              ),
              const SizedBox(height: 18),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
                padding: const EdgeInsets.only(
                    top: 15, left: 15, right: 15, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColor.blue, width: 1.5),
                ),
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
                    const Text(
                      "Nilai\nLorem ipsum dolor sit amet. Qui provident aliquam quo quidem ratione a molestias consequuntur sit doloremque nisi! Est magnam fuga quo omnis nostrum et enim impedit ad architecto asperiores ad velit perferendis. Et obcaecati voluptatem et itaque omnis ex quis quia rem temporibus temporibus sed quos magnam non natus unde. Et quod adipisci eos galisum aliquam aut reiciendis possimus et tempore perferendis.",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 21),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,)
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
  final int nis;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // padding: EdgeInsets.all(10),
            width: 336,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: const GlobalProjectFont(
                    text: "Detail Nilai",
                    fontWeight: FontWeight.w800,
                    fontSize: 26,
                    color: AppColor.blue,
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
                                    nama: nama,
                                    nis: nis,
                                  )));
                    }),
                CustomButton(
                    text: "Smart",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailSmartPage(
                                    nama: nama,
                                    nis: nis,
                                  )));
                    }),
                CustomButton(
                    text: "Muraja'ah",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailMurajaahPage(nama: nama,
                                    nis: nis,)));
                    }),
                CustomButton(
                    text: "Ziyadah",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailZiyadahPage(
                                    nama: nama,
                                    nis: nis,
                                  )));
                    }),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 336,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: const GlobalProjectFont(
                    text: "Input Nilai",
                    fontWeight: FontWeight.w800,
                    fontSize: 26,
                    color: AppColor.blue,
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
                                    namaSiswa: nama,
                                    nisSiswa: nis,
                                  )));
                    }),
                CustomButton(
                    text: "Input Smart",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InputSmartPage(
                                    namaSiswa: nama,
                                    nisSiswa: nis,
                                  )));
                    }),
                CustomButton(
                    text: "Input Muraja'ah",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InputMurajaahPage(
                                    namaSiswa: nama,
                                    nisSiswa: nis,
                                  )));
                    }),
                CustomButton(
                    text: "Input Ziyadah",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InputZiyadahPage(
                                    namaSiswa: nama,
                                    nisSiswa: nis,
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
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        child:
        GlobalProjectFont(
          text: text,
          fontSize: 26,
          color: AppColor.black,
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
        const GlobalProjectFont(
          text: "Data Siswa",
          fontWeight: FontWeight.w800,
          fontSize: 40,
          color: AppColor.blue,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,shadowColor: Colors. transparent,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                    const InputSiswaPage()
                )
            );
          },
          child: const CustomButtonril(
            title: "Edit",
            widths: 160,
            textColor: Colors.white,
            fontWeight: FontWeight.normal,
            backgroundColor: AppColor.yellow,
            height: 40,
          ),
        )
      ],
    );
  }
}
