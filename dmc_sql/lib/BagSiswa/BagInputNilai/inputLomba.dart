import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InputLombaPage extends StatefulWidget {
  const InputLombaPage({super.key});

  @override
  State<InputLombaPage> createState() => _InputLombaPageState();
}

class _InputLombaPageState extends State<InputLombaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(page: "s"),
      body: const Text("Input Lomba"),
    );
  }
}
