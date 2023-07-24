import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InputSmartPage extends StatefulWidget {
  const InputSmartPage({super.key});

  @override
  State<InputSmartPage> createState() => _InputSmartPageState();
}

class _InputSmartPageState extends State<InputSmartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: const Text("Input SMART"),
    );
  }
}