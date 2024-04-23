import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/components/my_drawer_tile.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.onTertiary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          MyDrawerTile(
            text: 'Home',
            icon: FaIcon(FontAwesomeIcons.house,
                color: Theme.of(context).colorScheme.onTertiary, size: 20),
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
              text: 'Settings',
              icon: FaIcon(FontAwesomeIcons.gear,
                  color: Theme.of(context).colorScheme.onTertiary, size: 20),
              onTap: () {
                Navigator.pop(context);
                Get.toNamed('/settings');

              }),
        const Spacer(),
          MyDrawerTile(
              text: 'LogOut',
              icon: FaIcon(FontAwesomeIcons.rightFromBracket,
                  color: Theme.of(context).colorScheme.onTertiary, size: 20),
              onTap: () {}),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
