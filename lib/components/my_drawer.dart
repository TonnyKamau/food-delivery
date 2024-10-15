import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/components/my_drawer_tile.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SvgPicture.asset(
              'assets/icons/lock.svg',
              color: Theme.of(context).colorScheme.onTertiary,
              height: 100,
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
            icon: SvgPicture.asset(
              'assets/icons/home-2.svg',
              color: Theme.of(context).colorScheme.onTertiary,
            ),
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
              text: 'Settings',
              icon: SvgPicture.asset(
                'assets/icons/settings.svg',
                color: Theme.of(context).colorScheme.onTertiary,
              ),
              onTap: () {
                Navigator.pop(context);
                Get.toNamed('/settings');
              }),
          const Spacer(),
          MyDrawerTile(
              text: 'LogOut',
              icon: SvgPicture.asset(
                'assets/icons/log-out-exit.svg',
                color: Theme.of(context).colorScheme.onTertiary,
              ),
              onTap: () {}),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
