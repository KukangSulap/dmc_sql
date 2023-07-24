import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
      body: const Text("Detail SMART"),
    );
  }
}