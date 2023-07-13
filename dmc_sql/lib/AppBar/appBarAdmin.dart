import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppBarAdmin extends StatefulWidget implements PreferredSizeWidget {
  AppBarAdmin({
    super.key,
  });

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<AppBarAdmin> createState() => _AppBarAdminState();
}

class _AppBarAdminState extends State<AppBarAdmin> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
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
        "<- ntar ganti jadi logo",
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
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                ),
                child: TextButton(
                  style: style,
                  onPressed: () {},
                  child: const Text(
                    'Keuangan',
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
              TextButton(
                style: style,
                onPressed: () {},
                child: const Text(
                  'Siswa',
                  style: TextStyle(
                    color: Colors.black,
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
                  onPressed: () {},
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
