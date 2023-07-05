import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InputSiswaPage extends StatefulWidget {
  const InputSiswaPage({super.key});

  @override
  State<InputSiswaPage> createState() => _InputSiswaPageState();
}

class _InputSiswaPageState extends State<InputSiswaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("input siswa"),
    );
  }
}