import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dmc_sql/Property/app_color.dart';

import 'package:dmc_sql/BagProfil/profile.dart';
import 'BagPendidikan/pendidikan_main.dart';

enum UserPage { profileSiswa, pendidikan }

class AppBarUser extends StatefulWidget implements PreferredSizeWidget {
  final UserPage page;
  const AppBarUser({super.key, required this.page});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<AppBarUser> createState() => _AppBarUserState();
}

class _AppBarUserState extends State<AppBarUser> {
  Color activeItemColor = Colors.black;
  Color idleItemColor = const Color.fromARGB(255, 102, 175, 153);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            // Icon(Icons.arrow_back)
            // SizedBox(width: 8),
            Text("Logo",
                style: GoogleFonts.mPlusRounded1c(
                    color: AppColor.blue,
                    fontWeight: FontWeight.w800,
                    fontSize: 36)),
          ],
        ),
      ),
      actions: [
        Row(
          children: <Widget>[
            Stack(alignment: Alignment.center, children: [
              Visibility(
                visible: widget.page == UserPage.profileSiswa,
                child: Container(
                    // TODO: Change Width to Follow Figma (61)
                    width: 35,
                    // TODO: Change Height to Follow Figma (61)
                    height: 35,
                    decoration: const BoxDecoration(
                      color: AppColor.yellow,
                      shape: BoxShape.circle,
                    )),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                child: Text('Profile Siswa',
                    style: GoogleFonts.mPlusRounded1c(
                        color: widget.page == UserPage.profileSiswa
                            ? activeItemColor
                            : idleItemColor,
                        fontWeight: FontWeight.w800,
                        // TODO: set the font to follow figma (24)
                        fontSize: 18)),
              ),
            ]),
            const SizedBox(
              width: 116,
            ),
            Stack(alignment: Alignment.center, children: [
              Visibility(
                visible: widget.page == UserPage.pendidikan,
                child: Container(
                    // TODO: Change Width to Follow Figma (61)
                    width: 35,
                    // TODO: Change Height to Follow Figma (61)
                    height: 35,
                    decoration: const BoxDecoration(
                      color: AppColor.yellow,
                      shape: BoxShape.circle,
                    )),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PendidikanScreen()));
                },
                child: Text('Pendidikan',
                    style: GoogleFonts.mPlusRounded1c(
                        color: widget.page == UserPage.pendidikan
                            ? activeItemColor
                            : idleItemColor,
                        fontWeight: FontWeight.w800,
                        // TODO: set the font to follow figma (24)
                        fontSize: 18)),
              ),
            ]),
            const SizedBox(
              width: 95,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              // TODO: set the height to follow figma (50)
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.blue),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                  ),
                  onPressed: () {
                    // TODO: implement Log Out Function.
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) =>  SchoolProfilePage()));
                  },
                  child: Text('Log Out',
                      style: GoogleFonts.mPlusRounded1c(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          // TODO: set the font to follow figma (24)
                          fontSize: 18))),
            ),
            const SizedBox(
              width: 70,
            ),
          ],
        ),
      ],
    );
  }
}
