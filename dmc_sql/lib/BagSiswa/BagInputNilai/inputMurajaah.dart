import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InputMurajaahPage extends StatefulWidget {
  const InputMurajaahPage({super.key});

  @override
  State<InputMurajaahPage> createState() => _InputMurajaahPageState();
}

class _InputMurajaahPageState extends State<InputMurajaahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: const Text("Input Muraja'ah"),
    );
  }
}