import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final String text;
  final Widget icon;
  final Function()? onTap;
  const MyDrawerTile(
      {super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading: icon,
        title: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onTertiary,
            fontSize: 16,
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w500,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
