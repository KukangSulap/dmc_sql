import 'package:dmc_sql/BagPendidikan/update_materi.dart';
import 'package:flutter/material.dart';
import 'package:dmc_sql/Property/app_color.dart';
import '../AppBar/app_bar_user.dart';
import '../Property/project_font.dart';

class DetailPage extends StatelessWidget {
  final CustomListItem item;

  DetailPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg, // Set the same background color as MateriPage
      appBar: AppBarUser(page: CurrentPage.pendidikan), // Reuse the app bar
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GlobalProjectFont(
              text: item.title,
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: AppColor.blue,
            ),
            const SizedBox(height: 8.0),
            // Display the image and subtitles within a container with white background
            Container(
              decoration: BoxDecoration(
                color: Colors.white, // White background color
                borderRadius: BorderRadius.circular(12.0), // Apply border radius
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Display the image
                  Container(
                    width: double.infinity,
                    height: 300.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(item.imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ), // Apply border radius to the top corners
                    ),
                  ),
                  const SizedBox(height: 16.0), // Add spacing
                  // Text Data (Subtitles)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Text(
                          item.subtitle,
                          style: TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          item.subtitle,
                          style: TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          item.subtitle,
                          style: TextStyle(fontSize: 16.0),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          item.subtitle,
                          style: TextStyle(fontSize: 16.0),
                        ),
                        // Add more customizable data widgets here
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
