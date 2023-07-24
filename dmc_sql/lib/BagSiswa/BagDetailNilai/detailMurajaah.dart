import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
      body: const Text("Detail Muraja'ah"),
    );
  }
}