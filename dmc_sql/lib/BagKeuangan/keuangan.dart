import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagKeuangan/editKeuangan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarAdmin(page: 'k',),
      body: SafeArea(
        child: Row(
          children: const [
            // Sisi kiri
            SisiKiriKeuangan(),

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
          padding: const EdgeInsets.only(right: 30, left: 10),
          child: Column(
            children: [
              // ===========================================================  Data Pemasukan  ===================================================================
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(20),
                height: 400,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Data Pemasukan",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.filter),
                            )
                          ],
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: const BorderSide(color: Colors.black),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            print("testes");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EditKeuangan(
                                          status: "Pemasukan",
                                        )));
                          },
                          child: const CustomButton(
                            title: "Edit",
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

                          return Column(
                            children: [
                              ListTile(
                                title: Text(
                                  itemName,
                                  style: const TextStyle(fontSize: 20),
                                ),
                                subtitle: Text(leftInfo),
                                trailing: Text(
                                  "Rp $rightInfo +",
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
                    side: const BorderSide(width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Data Keluaran",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.filter),
                            )
                          ],
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: const BorderSide(color: Colors.black),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EditKeuangan(
                                        status: "Keluaran")));
                          },
                          child: const CustomButton(
                            title: "Edit",
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

                          return Column(
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

class SisiKiriKeuangan extends StatelessWidget {
  const SisiKiriKeuangan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 10),
          child: Column(
            children: [
              // Pencarian
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(color: Colors.black, width: 1.5),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Pencarian',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    suffixIconColor: Colors.black,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                  ),
                ),
              ),
              // Total uang
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 100,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    ListTile(
                      title: Text(
                        'Total Uang',
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        'Rp 56.000.000',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),

              // ==============================================  Pemasukan  ================================================================
              Container(
                margin: const EdgeInsets.only(top: 10),
                // height: 100,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                        title: const Text(
                          'Pemasukan',
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Rp 5.200.000',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "+ 12,1% dari minggu lalu",
                            ),
                          ],
                        )),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Input Pemasukan',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 12.0),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Input Jumlah Pemasukan',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 12.0),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Tanggal',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 12.0),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 350,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        side: const BorderSide(
                                            color: Colors.black),
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () {
                                    // Handle button press
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 120,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Bukti Pembayaran',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        side: const BorderSide(
                                            color: Colors.black),
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () {
                                    // Handle button press
                                    print("hahahaha");
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 120,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          'Masukan',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // ========================================  Keluaran  ==============================================================
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                // height: 100,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                        title: const Text(
                          'Keluaran',
                          style: TextStyle(color: Colors.black),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Rp 2.450.000',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "- 10,1% dari minggu lalu",
                            ),
                          ],
                        )),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Input Keluaran',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 12.0),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Input Jumlah Keluaran',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 12.0),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border:
                                  Border.all(color: Colors.black, width: 1.5),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'Tanggal',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 14.0, vertical: 12.0),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 350,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          side: const BorderSide(
                                              color: Colors.black),
                                        ),
                                      ),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                    ),
                                    onPressed: () {
                                      // Handle button press
                                    },
                                    child: const CustomButton(
                                      title: "Bukti Pembayaran",
                                    )),
                                ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                        side: const BorderSide(
                                            color: Colors.black),
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.white),
                                  ),
                                  onPressed: () {
                                    // Handle button press
                                  },
                                  child: const CustomButton(
                                    title: "Masukan",
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
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
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
