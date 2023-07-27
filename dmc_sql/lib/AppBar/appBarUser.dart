import 'package:dmc_sql/BagKeuangan/keuangan.dart';
import 'package:dmc_sql/BagProfil/profile.dart';
import 'package:dmc_sql/BagSiswa/siswa.dart';
import 'package:dmc_sql/login.dart';
import 'package:dmc_sql/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppBarUser extends StatefulWidget implements PreferredSizeWidget {
  AppBarUser({super.key, required this.page});
  final String page;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<AppBarUser> createState() => _AppBarUserState();
}

class _AppBarUserState extends State<AppBarUser> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );

    const TextDecoration underlineDecoration = TextDecoration.underline;
    const TextDecoration noDecoration = TextDecoration.none;

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(CupertinoIcons.burn),
        color: Colors.black,
        onPressed: () {
          // Handle the button press event
        },
      ),
      title: const Text(
        "Logo",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: widget.page == 'p'
                          ? Colors.black
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                ),
                child: TextButton(
                  style: style,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage()));
                  },
                  child: const Text(
                    'Profil Siswa',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              TextButton(
                style: style,
                onPressed: () {},
                child: const Text('-'),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: widget.page == 's'
                          ? Colors.black
                          : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                ),
                child: TextButton(
                  style: style,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SiswaPage()));
                  },
                  child: const Text(
                    'Siswa',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              TextButton(
                style: style,
                onPressed: () {},
                child: const Text('----'),
              ),
              Container(
                height: 35,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: TextButton(
                  style: style,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  Login())
                    );
                    },
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              TextButton(
                style: style,
                onPressed: () {},
                child: const Text('.'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
