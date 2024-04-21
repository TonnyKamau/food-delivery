import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/components/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      "Salads",
      "Hot sale",
      "Popularity",
    ];

    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.bars,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: const Header(),
      ),
    );
  }
}
