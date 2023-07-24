import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InputZiyadahPage extends StatefulWidget {
  const InputZiyadahPage({super.key});

  @override
  State<InputZiyadahPage> createState() => _InputZiyadahPageState();
}

class _InputZiyadahPageState extends State<InputZiyadahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: const Text("Input Ziyadah"),
    );
  }
}