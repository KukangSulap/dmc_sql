import 'package:dmc_sql/AppBar/appBarAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EditKeuangan extends StatefulWidget {
  const EditKeuangan({super.key, required this.status});

  final String status;

  @override
  State<EditKeuangan> createState() => _EditKeuanganState();
}

class _EditKeuanganState extends State<EditKeuangan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarAdmin(),
      body: Text(widget.status),
    );
  }
}