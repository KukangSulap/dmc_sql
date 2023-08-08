import 'package:flutter/material.dart';

class ContainerPengeluaran extends StatelessWidget {
  const ContainerPengeluaran({super.key, required this.title, required this.defaultTexts, required this.imageUrl, required this.onPressed});

  final String title;
  final List<String> defaultTexts;
  final String imageUrl;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.grey, // Add your preferred border color here
            width: 1.0,
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            for (String text in defaultTexts)
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            SizedBox(height: 10),
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
