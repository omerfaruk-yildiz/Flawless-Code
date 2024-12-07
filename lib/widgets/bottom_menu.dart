import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({
    super.key,
  });

   @override
  Widget build(BuildContext context) {
    String currentRoute = ModalRoute.of(context)?.settings.name ?? "/";

    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              context.go("/home");
            },
            icon: Icon(
              CupertinoIcons.home,
              color: currentRoute == "/home" ? Colors.blue : Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              context.go("/lesson");
            },
            icon: Icon(
              CupertinoIcons.desktopcomputer,
              color: currentRoute == "/lesson" ? Colors.blue : Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              context.go("/profile");
            },
            icon: Icon(
              CupertinoIcons.person,
              color: currentRoute == "/profile" ? Colors.blue : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
