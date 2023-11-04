import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:dmc_sql/BagKeuangan/inputPengeluaran.dart';
import 'package:dmc_sql/Property/app_color.dart';
import 'package:dmc_sql/Property/project_font.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/dummy.dart';
import '../model/modelPengeluaran.dart';
import '../service/connect.dart';
import 'inputPemasukan.dart';
import 'pemasukanDetail.dart';


void main() {
  runApp(const MaterialApp(
    home: KeuanganPage(),
  ));
}

class KeuanganPage extends StatefulWidget {
  const KeuanganPage({super.key});

  @override
  State<KeuanganPage> createState() => _KeuanganPageState();
}

class _KeuanganPageState extends State<KeuanganPage> {

  List<Dummy>? dataDummy = [];
  List<ModelPengeluaran>? modelPengeluaran = [];
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    dataDummy = await RemoteService().getPosts();
    modelPengeluaran = await RemoteServiceReal().getPengeluaran();
    if (dataDummy != null) {
      setState(() {
        isLoaded = true;
      });
    }else{
      print("asu tenan");
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColor.bg,
      extendBodyBehindAppBar: true,
      appBar: AppBarAdmin(page: CurrentPage.keuangan),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 15, left: 15),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  height: 122,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Total uang
                      Expanded(
                        child: Container(
                          decoration: ShapeDecoration(
                            color: AppColor.yellow,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              ListTile(
                                title: GlobalProjectFont(
                                  text: 'Total Uang',
                                  fontSize: screenWidth >= 600 ? 18 : 14,
                                  color: Colors.white,
                                ),
                                subtitle: Text(
                                  'Rp 56.000.000',
                                  style: TextStyle(
                                    fontSize: screenWidth >= 600 ? 22 : 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 5,),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(top: 5, bottom: 5),
                          decoration: ShapeDecoration(
                            color: AppColor.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              ListTile(
                                title: GlobalProjectFont(
                                  text: 'Pemasukan',
                                  fontSize: screenWidth >= 600 ? 18 : 14,
                                  color: Colors.white,
                                ),
                                subtitle: Text(
                                  'Rp 50.000.000',
                                  style: TextStyle(
                                    fontSize: screenWidth >= 600 ? 22 : 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 5,),
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
                            children: [
                              ListTile(
                                title: GlobalProjectFont(
                                  text: 'Pengeluaran',
                                  fontSize: screenWidth >= 600 ? 18 : 14,
                                  color: Colors.white,
                                ),
                                subtitle: Text(
                                  'Rp 6.000.000',
                                  style: TextStyle(
                                    fontSize: screenWidth >= 600 ? 22 : 18,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // ===========================================================  Data Pemasukan  ===================================================================
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.all(17),
                  height: 400,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
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
                            GlobalProjectFont(
                              text: 'Data Pemasukan',
                              fontWeight: FontWeight.w800,
                              fontSize: screenWidth >= 600 ? 22 : 18,
                              color: AppColor.blue,
                            ),
                            const Spacer(),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom( // Set button style
                                backgroundColor: Colors.transparent, // Set the button color to transparent
                                elevation: 0,shadowColor: Colors. transparent, // Remove button elevation
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const InputPemasukan(),
                                  ),
                                );
                              },
                              child: CustomButtonril(
                                title: 'Input',
                                widths: screenWidth >= 600 ? 160 : 73,
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
                            itemCount: dataDummy?.length,
                            itemBuilder: (context, index) {
                              String itemName = dataDummy![index].title;
                              // String leftInfo = dataDummy![index].title;
                              String rightInfo = dataDummy![index].title;

                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>  DetailPemasukan(dataPemasukan: dataDummy![index],),
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: SizedBox(
                                        width: screenWidth >= 600 ? 300 : 200,
                                        child:
                                        GlobalProjectFont(
                                          text: itemName,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: GlobalProjectFont(
                                        text: itemName,
                                      ),
                                      trailing: SizedBox(
                                        width: screenWidth >= 600 ? 330 : 120,
                                        child: GlobalProjectFont(
                                          text: "Rp $rightInfo -",
                                          fontSize: screenWidth >= 600 ? 30 : 18,
                                        ),
                                      ),
                                    ),
                                    // Container(
                                    //   margin: const EdgeInsets.only(
                                    //       top: 10, bottom: 10),
                                    //   height: 0.5,
                                    //   width: double.infinity,
                                    //   color: Colors.black,
                                    // )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // ======================================================  Data Keluaran  ==================================================================
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding: const EdgeInsets.all(17),
                  height: 400,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
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
                                elevation: 0, shadowColor: Colors. transparent,// Remove button elevation
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => InputPengeluaran(),
                                  ),
                                );
                              },
                              child: CustomButtonril(
                                title: 'Input',
                                widths: screenWidth >= 600 ? 160 : 73,
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
                            itemCount: modelPengeluaran?.length,
                            itemBuilder: (context, index) {
                              String itemName = modelPengeluaran![index].namaPengeluaran;
                              String leftInfo = modelPengeluaran![index].kategori;
                              String rightInfo = modelPengeluaran![index].jumlah;
                              return GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) => TemplateDetailPengeluaran(texts: keluaranList[index], imageUrl: 'https://ichef.bbci.co.uk/news/976/cpsprodpb/17638/production/_124800859_gettyimages-817514614.jpg',),
                                  //   ),
                                  // );
                                },
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: SizedBox(
                                        width: screenWidth >= 600 ? 300 : 200,
                                        child:
                                        GlobalProjectFont(
                                          text: itemName,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: GlobalProjectFont(
                                        text: leftInfo,
                                      ),
                                      trailing: SizedBox(
                                        width: screenWidth >= 600 ? 330 : 180,
                                        child: GlobalProjectFont(
                                          text: "Rp $rightInfo -",
                                          fontSize: screenWidth >= 600 ? 30 : 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButtonril extends StatelessWidget {
  const CustomButtonril({
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
        boxShadow:  const [
          BoxShadow(
            color: Colors.transparent
          ),
        ],
      ),
      child: TextButton(
        onPressed: null, // No onPressed callback
        child: GlobalProjectFont(
          text: title,
          fontWeight: fontWeight,
          color: textColor,
        ),
      ),
    );
  }
}
