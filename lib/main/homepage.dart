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
          body: ListView(children: [
            const Header(),
            const SizedBox(
              height: 20,
            ),
            _Categories(tabs: tabs),
            const SizedBox(
              height: 20,
            ),
          ]),
        ));
  }
}

class _Categories extends StatelessWidget {
  const _Categories({super.key, required this.tabs});
  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Material(
        color: Colors.transparent,
        child: TabBar(
          splashFactory: NoSplash.splashFactory,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.transparent,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).colorScheme.onTertiary,
          ),
          unselectedLabelColor: Theme.of(context).colorScheme.onTertiary,
          labelColor: Theme.of(context).colorScheme.background,
          tabs: tabs
              .map(
                (e) => Tab(
                  child: Text(
                    e,
                    style: const TextStyle(
                      fontSize: 16,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
