import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
      body: const Text("Detail Rapor"),
    );
  }
}