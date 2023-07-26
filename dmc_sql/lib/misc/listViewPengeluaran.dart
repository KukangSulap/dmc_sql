import 'package:flutter/material.dart';

class ListViewPengeluaran extends StatelessWidget {
  final List<String> items;

  ListViewPengeluaran({required this.items});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (context, index) => const Divider(
          color: Colors.black,
          height: 1,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}
