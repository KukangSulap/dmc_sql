import 'package:flutter/material.dart';
import 'package:dmc_sql/Property/app_color.dart';
import 'package:google_fonts/google_fonts.dart';
import '../AppBar/app_bar_user.dart';
import '../Property/project_font.dart';
import 'kurikulum.dart';
import 'materi_detail.dart';

class MateriPage extends StatefulWidget {
  @override
  _MateriPageState createState() => _MateriPageState();
}

class _MateriPageState extends State<MateriPage> {
  final List<CustomListItem> customListItems = [
    CustomListItem(
      title: 'Title for List Tile 1',
      subtitle: 'Subtitle for List Tile 1',
      imageUrl: 'https://i.kym-cdn.com/photos/images/newsfeed/002/652/421/280.jpg',
    ),
    CustomListItem(
      title: 'Title for List Tile 2',
      subtitle: 'Subtitle for List Tile 2',
      imageUrl: 'https://i.kym-cdn.com/photos/images/newsfeed/002/652/421/280.jpg',
    ),
    CustomListItem(
      title: 'Title for List Tile 3',
      subtitle: 'Subtitle for List Tile 3',
      imageUrl: 'https://i.kym-cdn.com/photos/images/newsfeed/002/652/421/280.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      appBar: AppBarUser(page: CurrentPage.pendidikan),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                        height: 72,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.blue, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 29),
                        child: Center(
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: const Icon(
                                Icons.search,
                                size: 36,
                              ),
                              suffixIconColor: AppColor.blue,
                              hintText: 'Pencarian',
                              hintStyle: GoogleFonts.mPlusRounded1c(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0,
                                  color: AppColor.blue),
                              border: InputBorder.none,
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                        height: 72,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                              const Color.fromRGBO(214, 106, 61, 1),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MateriPage()),
                              );
                            },
                            child: Text(
                              'Update Materi',
                              style: GoogleFonts.mPlusRounded1c(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18.0,
                                  color: Colors.white),
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                        height: 72,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                const Color.fromRGBO(102, 175, 153, 1)),
                            onPressed: () {
                              // TODO: Add Kurikulum On Pressed.
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  KurikulumScreen()),
                              );
                            },
                            child: Text(
                              'Kurikulum',
                              style: GoogleFonts.mPlusRounded1c(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18.0,
                                  color: Colors.white),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8,),
            const GlobalProjectFont(
              text: "Update Materi",
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: AppColor.blue,
            ),
            const SizedBox(height: 16.0), // Add spacing
            // List of CustomListTile widgets
            Column(
              children: customListItems.map((item) {
                return CustomListTile(item: item);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListItem {
  final String title;
  final String subtitle;
  final String imageUrl;

  CustomListItem({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
}

class CustomListTile extends StatelessWidget {
  final CustomListItem item;

  CustomListTile({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    // Determine the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    // Adjust the image width based on screen size
    double imageWidth = screenWidth >= 600.0 ? 250.0 : 200.0;

    return GestureDetector(
      onTap: () {
        // Navigate to the DetailPage and pass the data as arguments
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(item: item),
          ),
        );
      },
      child: Container(
        height: 300.0,
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            children: <Widget>[
              // Rectangular Image with Border Radius
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  bottomLeft: Radius.circular(12.0),
                ),
                child: Container(
                  width: imageWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(item.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Text Data
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GlobalProjectFont(
                        text: item.title,
                        fontSize: screenWidth >= 600.0 ? 30 : 24,
                        fontWeight: FontWeight.w800,
                        color: AppColor.blue,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        item.subtitle,
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        item.subtitle,
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        item.subtitle,
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        item.subtitle,
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
