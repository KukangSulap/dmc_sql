import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailZiyadahPage extends StatefulWidget {
  const DetailZiyadahPage({super.key});

  @override
  State<DetailZiyadahPage> createState() => _DetailZiyadahPageState();
}

class _DetailZiyadahPageState extends State<DetailZiyadahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: const Text("Detail Ziyadah"),
    );
  }
}